// Program deprg decodes a Commodore BASIC PRG file into BASIC source.
//
// Usage: go run deprg input.prg [output.bas]
//
//	(requires Go: https://golang.org/doc/install)
package main

import (
	"fmt"
	"io"
	"os"
	"strings"

	"github.com/creachadair/command"
	"github.com/creachadair/prgfile"
)

func main() {
	root := &command.C{
		Name:  command.ProgramName(),
		Usage: "<input.prg> [<output.bas>]",
		Help: `Unpack a binary-coded BASIC program (.prg) into text (.bas).

If an output path is not specified, output is written to stdout.`,

		Run: command.Adapt(func(env *command.Env, inputPath string, rest ...string) error {
			in, err := os.Open(inputPath)
			if err != nil {
				return fmt.Errorf("open input file: %w", err)
			}
			defer in.Close()
			r, err := prgfile.New(in)
			if err != nil {
				return fmt.Errorf("initialize PRG reader: %w", err)
			}

			out := os.Stdout
			if len(rest) > 1 {
				return env.Usagef("extra arguments: %q", rest[1:])
			} else if len(rest) == 1 {
				f, err := os.Create(rest[0])
				if err != nil {
					return fmt.Errorf("create output file: %w", err)
				}
				out = f
			}
			defer out.Close() // in case of error

			for {
				line, err := r.Line()
				if err == io.EOF {
					break
				} else if err != nil {
					return fmt.Errorf("read program: %w", err)
				}
				fmt.Fprintf(out, "%d %s\n", line.N, strings.Join(line.Insn, ":"))
			}
			return out.Close()
		}),
		Commands: []*command.C{
			command.HelpCommand(nil),
			command.VersionCommand(),
		},
	}
	command.RunOrFail(root.NewEnv(nil), os.Args[1:])
}
