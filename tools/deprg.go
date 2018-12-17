// Program deprg decodes a Commodore BASIC PRG file into BASIC source.
//
// Usage: deprg input.prg [output.bas]
//
package main

import (
	"flag"
	"fmt"
	"io"
	"log"
	"os"
	"path/filepath"
	"strings"

	"bitbucket.org/creachadair/prgfile"
)

func main() {
	flag.Parse()

	out := os.Stdout

	switch flag.NArg() {
	case 2:
		f, err := os.Create(flag.Arg(1))
		if err != nil {
			log.Fatalf("Creating output file: %v", err)
		}
		out = f
		defer func() {
			if err := f.Close(); err != nil {
				log.Fatalf("Closing output: %v", err)
			}
		}()
	case 1:
		// no special action
	case 0:
		fallthrough
	default:
		log.Fatalf("Usage: %s <input.prg> [<output.bas>]", filepath.Base(os.Args[0]))
	}

	in, err := os.Open(flag.Arg(0))
	if err != nil {
		log.Fatalf("Opening input file: %v", err)
	}
	defer in.Close()

	r, err := prgfile.New(in)
	if err != nil {
		log.Fatalf("Initializing PRG reader: %v", err)
	}
	for {
		line, err := r.Line()
		if err == io.EOF {
			break
		} else if err != nil {
			log.Fatalf("Reading: %v", err)
		}
		fmt.Fprintf(out, "%d %s\n", line.N, strings.Join(line.Insn, ":"))
	}
}
