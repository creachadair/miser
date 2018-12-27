# The Miser's House

Like many young people of my generation, I first learned how to program in
BASIC on a Commodore computer. Specifically, I wrote my first programs on the
Commodore PET in around 1979.

One of the programs that captured my imagination early on was the 1981 "Miser"
by Mary Jean Lansing. "Miser" was an example of the _text adventure_ genre that
was born with Will Crowther & Don Woods's "[Colossal Cave Adventure][cca]", and
would grow to popularity with the [Infocom][icom] games of the 1980s.  Although
Miser lacks the detail and intricacy of some other games, as I child I was very
much taken with the idea of a computer program that could simulate a world with
places and objects that could respond to your "actions". In many ways, Miser
was the beginning of my long-standing interest in computer languages and
translation.

In a moment of nostalgia many years later, I wanted to play the game again.
After some digging found a port by Rene van Hasselaar of the 1983 edition to MS
BASIC.  Rene's port is now available from the [IF Archive][ifarch]. But because
I did not have a Windows machine, I needed to translate this so it could be run
on my Macintosh.  I settled on Ron Nicholson's [Chipmunk BASIC][chip], whose
BASIC dialect was similar enough to MS BASIC that I could translate the source
mostly mechanically.

## About the Translation

The files [`MISER.PRG`](MISER.PRG) and [`MISER.BAS`](MISER.BAS) contain the
original 1981 BASIC program from Issue #27 of Cursor Magazine. It is included
here mostly for historical curiosity.
The file [`MISER-PC.BAS`](MISER-PC.BAS) contains the source of the 1983 edition
of Miser, as converted from the Commodore 64 by Rene van Hasselaar.
The file [`chipmiser.bas`](chipmiser.bas) is a version of the PC version,
converted for use with Chipmunk BASIC.
The file [`fixdata.py`](tools/fixdata.py) is a Python script that performs some
of the dialect conversion steps.

The required conversions were:

-  Replace integer arrays (z%) with number arrays (z); Miser uses 2-dimensional
   arrays, but Chipmunk BASIC supports only one dimension for integer arrays.

-  Fully quote all strings appearing in `DATA` statements.

-  Comment out use of `KEY OFF` at 62001 (feature unsupported by Chipmunk).

-  Replace `LOCATE C, R` by `GOTOXY R, C`.

-  Fix a typographical error in the spelling of "obvious".

Conversion done 25-Oct-2007.

<!-- links -->
[cca]: http://rickadams.org/adventure/
[icom]: https://en.wikipedia.org/wiki/Infocom
[ifarch]: https://www.ifarchive.org/indexes/if-archiveXgamesXsourceXbasic.html
[chip]: http://www.nicholson.com/rhn/basic/


## License

Except for files governed by other copyrights, all the files in this repository
are subject to the following license terms:

Copyright (c) 2007 Michael J. Fromberger, All Rights Reserved.

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


## Release Notes from Rene Hasselaar

> L.S.
>
> This is a straight conversion of the c64 basic adventure Miser to the ms-dos
> environment. This zip file contains both an executable file (miser-pc.exe) and
> the source file (miser-pc.bas).
>
> Because Miser was the second adventure I ever played and the first I actually
> finished I decided to adjust the source file so it would run on a pc. Input was
> the miser.bas file from the c64 directory from the if-archive.
>
> I've playtested the adventure and everything seems to work fine but ....
> Any mistakes/bugs are mine, you can either fix the source yourself and/or
> e-mail me at the adress at the end. (There was no save/load feature and I
> didn't wan't to write (and test!) one myself, so if you really miss it....).
>
> Enjoy,
> Rene van Hasselaar
> friends@xs4all.nl
