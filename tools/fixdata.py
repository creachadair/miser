#!/usr/bin/env python

from __future__ import with_statement

import os, re, sys

def read_code(fpath):
    def parse_stmts(text):
        pos = -1 ; last = 0 ; instr = False
        for pos, ch in enumerate(text):
            if ch == '"':
                instr = not instr
            elif ch == ':' and not instr:
                yield text[last : pos].strip()
                last = pos + 1

        if pos >= last:
            yield text[last : pos + 1].strip()
    
    with file(fpath, 'rU') as fp:
        for line in fp:
            label, code = line.strip().split(' ', 1)
            yield (label, list(parse_stmts(code)))

def fix_data(code):
    for label, stmts in code:
        for pos, stmt in enumerate(stmts):
            if re.match(r'(?i)data ', stmt):
                tag, elts = stmt.split(' ', 1)
                elts = elts.split(',')
                for e, elt in enumerate(elts):
                    if not re.match(r'-?\d+$', elt):
                        elts[e] = '"%s"' % elt.strip('"')

                stmts[pos] = '%s %s' % (tag, ','.join(elts))

        yield label, stmts

def write_code(code, fpath):
    with file(fpath, 'wt') as fp:
        for label, stmts in code:
            print >> fp, '%s %s' % (
                label, ': '.join(stmts))


def main(argv):
    if len(argv) <> 2:
        print >> sys.stderr, "Usage: fixdata.py <input-file> <output-file>"
        return 1

    ifp, ofp = argv
    if ifp == ofp:
        print >> sys.stderr, "Sorry, I won't overwrite the input"
        return 1

    write_code(fix_data(read_code(ifp)), ofp)
    return 0

if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
    
# Here there be dragons

