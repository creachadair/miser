1 REM $CPU 8086
2 REM $LIB ALL OFF
3 REM $ERROR ALL OFF
4 REM $OPTIMIZE SIZE
6 REM copyright (c) 1983 the code works
7 REM box 6905, santa barbara, ca 93160
10 REM as of 8/15/83 gf
11 REM pc conversion by R. v. Hasselaar 10-11-1999
100 GOSUB 62000
101 DIM r$(48): DIM r%(48, 4): DIM om$(28): DIM ol%(28): DIM v$(30): DIM o$(30): DIM pt%(30)
102 REM DEF fna (x) = ol%(pt%(x)):
103 DEF fna (x) = ol%(ABS(pt%(x)))
104 em = 1: pf = 1: fb = 1: h$(1) = "what?": h$(2) = "i don't understand that."
105 GOSUB 63000
699 GOTO 14000
700 PRINT : sc = 0: sf = 0: GOSUB 60000: IF LEN(in$) = 0 THEN 700
720 IF LEFT$(in$, 1) = " " THEN in$ = RIGHT$(in$, LEN(in$) - 1): GOTO 720
730 IF RIGHT$(in$, 1) = " " THEN in$ = LEFT$(in$, LEN(in$) - 1): GOTO 730
735 sp = LEN(in$) + 1: PRINT
740 sc = sc + 1: IF MID$(in$, sc, 1) = " " THEN sf = sf + 1: sp = sc
750 IF sc < LEN(in$) THEN 740
760 IF sf > -1 AND sf < 2 THEN GOTO 780
770 PRINT "please type a one or two word command": GOTO 700
780 cv$ = LEFT$(in$, sp - 1): FOR x = 1 TO 30: IF LEFT$(cv$, 4) = v$(x) THEN i = x: GOTO 800
790 NEXT x: GOTO 50000
800 IF sf = 0 THEN co$ = "": j = 0: GOTO 900
810 co$ = MID$(in$, sp + 1, 4): FOR x = 1 TO 30: IF co$ = o$(x) THEN j = x: GOTO 900
820 NEXT x: GOTO 50000
830 GOTO 700
900 ON i GOTO 1000, 1000, 2000, 2000, 2000, 4000, 5000, 6000, 7000, 8000, 9000, 10000
910 ON i - 12 GOTO 11000, 12000, 14000, 15000, 16000, 16000, 17000, 17000, 17010, 17010
920 ON i - 22 GOTO 19000, 19000, 20000, 21000, 22000, 24000, 6000, 25000
1000 IF j = 0 THEN 50000
1002 IF pt%(j) = -1 THEN PRINT "i am unable to do that.": GOTO 700
1005 IF fna(j) = -1 THEN PRINT "you're already carrying it": GOTO 700
1010 IF fna(j) <> cp THEN 51000
1020 ol%(pt%(j)) = -1: PRINT "ok"
1030 x = pt%(j): IF (x > 3 AND x < 9) OR x = 19 THEN PRINT "you got a treasure!": gt = gt + 1
1040 IF j = 2 AND ol%(20) = -2 THEN PRINT "you find a door key!": ol%(20) = 0
1045 IF j = 10 AND ol%(16) = -2 THEN 2200
1050 GOTO 700
2000 IF j = 0 THEN 50000
2005 IF j = 13 AND cp = 5 AND r%(5, 3) = 0 THEN 2100
2010 IF pt%(j) = -1 THEN PRINT "that item stays put.": GOTO 700
2020 IF (fna(j) <> cp) AND (fna(j) <> -1) THEN 51000
2030 IF j = 2 AND ol%(20) = -2 THEN 1040
2040 IF j = 10 AND ol%(16) = -2 THEN 2200
2050 PRINT "moving it reveals nothing."
2060 GOTO 700
2100 PRINT "behind the cabinet is a vault!"
2110 fv = 1: GOTO 699
2200 PRINT "you find a trap door!"
2210 ol%(16) = 6: GOTO 699
4000 IF j = 0 THEN 50000
4002 IF j <> 11 THEN 4030
4005 IF (fna(j) <> cp) AND (fna(j) <> -1) THEN 4030
4010 in$ = "scrawled in blood on the inside front cover is the message,"
4011 gosub53000: PRINT
4020 PRINT "''victory' is a prize-winning word'.": GOTO 700
4030 IF j = 7 THEN PRINT "try turning it.": GOTO 700
4040 IF j <> 12 THEN 4120
4050 IF cp = 0 AND du = 0 THEN PRINT "sorry, the door is locked.": GOTO 700
4060 IF cp = 0 AND du THEN PRINT "it's already open.": GOTO 700
4070 IF cp <> 6 THEN 51000
4080 in$ = "you open the door. you lean over to peer in, and you fall in!"
4090 GOSUB 53000: cp = 47: PRINT : GOTO 699
4120 IF j <> 13 THEN 4160
4130 IF ol%(26) <> cp THEN 51000
4140 PRINT "the cabinet is empty and dusty."
4150 in$ = "scribbled in dust on one shelf are the words, 'behind me'."
4155 GOSUB 53000: PRINT : GOTO 700
4160 IF j <> 22 THEN 4190
4170 IF fna(j) <> cp AND fna(j) <> -1 THEN 51000
4180 PRINT "the bag is knotted securely.": PRINT "it won't open.": GOTO 700
4190 IF j <> 27 THEN 4230
4200 IF cp <> 5 OR fv = 0 THEN 51000
4210 IF vo THEN PRINT "it's already open.": GOTO 700
4220 PRINT "i can't, it's locked.": GOTO 700
4230 IF j <> 16 THEN PRINT "i don't know how to open that.": GOTO 700
4232 IF cp <> 21 THEN 51000
4235 IF gg = 0 THEN PRINT "it's stuck shut.": GOTO 700
4240 IF ol%(24) = -2 THEN PRINT "it's already open.": GOTO 700
4250 PRINT "as you open it, several objects": PRINT "suddenly appear!"
4260 ol%(24) = -2: ol%(25) = 21: ol%(19) = 21: ol%(17) = 21: GOTO 699
5000 IF j = 0 THEN 50000
5005 IF pt%(j) > -1 THEN IF fna(j) <> cp AND fna(j) <> -1 THEN 51000
5010 IF pt%(j) = -1 THEN PRINT "there's nothing written on that.": GOTO 700
5020 IF j <> 3 AND j <> 11 THEN PRINT "there's nothing written on that.": GOTO 700
5030 IF j = 11 THEN PRINT "the front cover is inscribed in greek.": GOTO 700
5040 PRINT "it says, '12-35-6'.": PRINT "hmm.. looks like a combination."
5050 kc = 1: GOTO 700
6000 PRINT "you are carrying the following:"
6010 fi = 0: FOR x = 1 TO 27: IF ol%(x) = -1 THEN PRINT om$(x): fi = 1
6020 IF x = 1 AND bf AND ol%(1) = -1 THEN PRINT "  the bucket is full of water."
6025 IF x = 14 AND ol%(14) = -1 THEN PRINT "  (better fix it)"
6030 NEXT x: IF fi = 0 THEN PRINT "nothing at all."
6040 GOTO 700
7000 PRINT "do you really want to quit now?"
7001 GOSUB 60000: IF in$ = "" THEN 7001
7002 IF LEFT$(in$, 1) <> "y" THEN PRINT : PRINT "ok": GOTO 700
7005 PRINT ""
7010 PRINT "you accumulated"; gt; "treasures,"
7020 PRINT "for a score of"; gt * 20; "points."
7030 PRINT "(100 possible)": IF es = 0 THEN PRINT "however, you did not escape."
7040 PRINT "this puts you in a class of:": IF es THEN gt = gt + 1
7050 ON gt + 1 GOTO 7060, 7070, 7075, 7090, 7100, 7110, 7115
7060 PRINT "<beginner adventurer>": GOTO 7120
7070 PRINT "<amateur adventurer>": GOTO 7120
7075 PRINT "<journeyman adventurer>": GOTO 7120
7090 PRINT "<experienced adventurer>": GOTO 7120
7100 PRINT "<pro adventurer>": GOTO 7120
7110 PRINT "<master adventurer>": GOTO 7120
7115 PRINT "<grandmaster adventurer>": GOTO 7120
7120 IF gt <> 6 THEN PRINT "better luck next time"
7150 END
8000 IF fna(j) <> -1 THEN PRINT "you aren't carrying it!": GOTO 700
8010 x = pt%(j)
8015 IF (x > 3 AND x < 9) OR x = 19 THEN PRINT "don't drop *treasures*!": GOTO 700
8020 IF cp = 19 AND j = 19 THEN 8100
8030 IF cp = 22 AND j = 20 THEN 8200
8040 ol%(pt%(j)) = cp: PRINT "ok": GOTO 700
8100 PRINT "as the penny sinks below the surface of"
8105 PRINT "the pool, a fleeting image of a chapel"
8110 PRINT "with dancers outside appears."
8130 r%(21, 3) = 22: ol%(12) = -2: GOTO 700
8200 PRINT "even before it hits the ground, the": PRINT "cross fades away"
8210 PRINT "the tablet has disintegrated."
8215 PRINT "you hear music from the organ."
8220 gg = 1: ol%(11) = -2: r$(22) = "chapel"
8221 om$(24) = "closed organ playing music in the corner": GOTO 700
9000 IF j = 0 THEN PRINT "say what???": GOTO 700
9010 IF j = 14 THEN 9100
9020 IF j = 15 THEN 9200
9030 IF j > 28 THEN 9300
9040 PRINT "okay, '"; RIGHT$(in$, LEN(in$) - sp); "'."
9050 FOR x = 1 TO 1000: NEXT x: PRINT "nothing happens.": GOTO 700
9100 IF cp <> 4 OR ch THEN PRINT "nothing happens.": GOTO 700
9110 in$ = "the snake is charmed by the very utterance of your words."
9111 GOSUB 53000: PRINT
9120 ch = 1: ol%(2) = -2: ol%(3) = 4: GOTO 700
9200 IF cp <> 8 OR po THEN PRINT "nothing happens.": GOTO 700
9210 PRINT "a portal has opened in the north wall!!"
9220 po = 1: r%(8, 1) = 17: ol%(18) = 8: GOTO 700
9300 PRINT " a hollow voice says, 'wrong adventure'.": GOTO 700
10000 IF j <> 4 THEN PRINT "i wouldn't know how.": GOTO 700
10010 IF ol%(1) <> -1 AND ol%(1) <> cp THEN 51000
10020 IF bf = 0 THEN PRINT "the bucket is already empty.": GOTO 700
10030 IF cp = 19 THEN PRINT "ok": GOTO 700
10040 IF cp = 10 AND fb THEN 10050
10045 PRINT "the water disappears quickly.": bf = 0: GOTO 700
10050 PRINT "congratulations! you have vanquished": PRINT "the flames."
10060 fb = 0: bf = 0: GOTO 699
11000 IF j = 0 THEN 50000
11010 IF pt%(j) = -1 THEN PRINT "that wouldn't hold anything.": GOTO 700
11020 IF fna(j) <> cp AND fna(j) <> -1 THEN 51000
11030 IF j <> 4 THEN PRINT "that wouldn't hold anything.": GOTO 700
11040 IF bf THEN PRINT "it's already full.": GOTO 700
11050 IF cp = 25 AND pf THEN PRINT "i'd rather leave the mercury alone.": GOTO 700
11060 IF cp <> 23 AND cp <> 19 THEN PRINT "i don't see any water here.": GOTO 700
11070 PRINT "your bucket is now full.": bf = 1: GOTO 700
12000 IF j = 0 THEN 50000
12010 IF j <> 12 AND j <> 27 THEN PRINT "i don't know how to unlock one.": GOTO 700
12020 IF cp <> 0 AND cp <> 5 AND cp <> 6 THEN 51000
12030 IF cp = 0 AND j = 12 THEN 12200
12040 IF cp = 5 AND j = 27 THEN 12300
12050 IF cp <> 6 OR j <> 12 OR ol%(16) = -2 THEN 51000
12100 PRINT "the trapdoor has no lock": GOTO 700
12200 IF du THEN PRINT "it's already unlocked.": GOTO 700
12210 IF ol%(20) <> -1 THEN PRINT "i need a key.": GOTO 700
12220 PRINT "the door easily unlocks and swings open.": du = 1: GOTO 699
12300 IF vo THEN PRINT "it's already open.": GOTO 700
12305 IF fv = 0 THEN 51000
12310 IF kc = 0 THEN PRINT "i don't know the combination.": GOTO 700
12320 PRINT "ok, let's see. 12..35..6..": PRINT "<click!> the door swings open."
12330 vo = 1: r%(5, 3) = 46: GOTO 699
14000 in$ = "you are in the " + r$(cp) + ".": GOSUB 53000: PRINT
14010 FOR x = 1 TO 28: IF ol%(x) <> cp THEN 14020
14011 in$ = "there is a " + om$(x) + " here.": PRINT : GOSUB 53000: PRINT
14020 IF x = 1 AND bf AND ol%(1) = cp THEN PRINT "   the bucket is full of water."
14030 NEXT x
14040 IF cp = 25 AND pf THEN PRINT "the pool is full of liquid mercury!"
14050 IF cp <> 25 OR pf THEN 14060
14055 PRINT "the pool's empty.": IF ol%(7) <> 48 THEN 14060
14056 PRINT "i see something shiny in the pool!"
14060 IF cp <> 10 OR fb = 0 THEN 14090
14070 PRINT "there is a hot fire on the south wall!"
14080 PRINT "if i go that way i'll burn to death!"
14090 IF cp <> 16 THEN 14110
14100 in$ = "a rich, full voice says, 'ritnew is a charming word'."
14105 GOSUB 53000: PRINT
14110 IF cp = 26 THEN PRINT "there is a valve on one of the pipes."
14115 IF cp = 23 THEN PRINT "there is a leaky faucet nearby."
14120 IF cp = 10 AND fb = 0 THEN PRINT "there is evidence of a recent fire here."
14125 IF cp = 5 AND fv THEN PRINT "there is a vault in the east wall."
14126 IF cp = 5 AND vo THEN PRINT "the vault is open."
14127 IF cp = 0 AND du THEN PRINT "an open door leads north."
14130 IF cp <> 48 THEN PRINT "obviovs exits:": IF r%(cp, 1) > 0 THEN PRINT "n ";
14140 IF r%(cp, 2) > 0 THEN PRINT "s ";
14150 IF r%(cp, 3) > 0 THEN PRINT "e ";
14160 IF r%(cp, 4) > 0 THEN PRINT "w ";
14170 PRINT : GOTO 700
15000 IF j <> 8 AND j <> 18 AND j <> 28 THEN 50000
15010 IF (j = 8 AND cp <> 48) OR (j = 28 AND cp <> 25) THEN 51000
15015 IF j = 18 AND cp <> 2 AND cp <> 27 THEN 51000
15020 IF j = 8 THEN cp = 25: GOTO 699
15030 IF j = 28 AND pf THEN PRINT "the pool is full of mercury!": GOTO 700
15040 IF j = 28 THEN cp = 48: GOTO 699
15050 IF cp = 27 THEN cp = 2: GOTO 699
15060 IF ol%(9) = -1 THEN 15070
15061 in$ = "the suits of armor prevent you from going up!": GOSUB 53000
15062 PRINT : GOTO 700
15070 PRINT "the suits of armor try to stop you,"
15080 PRINT "but you fight them off with your sword.": cp = 27: GOTO 699
16000 IF cp = 0 AND du = 0 THEN PRINT "the door is locked shut.": GOTO 700
16010 IF r%(cp, 1) = 0 THEN 52000
16015 IF cp = 0 THEN PRINT "the door slams shut behind you!"
16020 cp = r%(cp, 1): GOTO 699
17000 IF cp = 10 AND fb THEN PRINT "you have burnt to a crisp!": END
17010 IF cp = 4 AND ch = 0 THEN 17060
17030 d = 2: IF i = 21 OR i = 22 THEN d = 3
17040 IF r%(cp, d) = 0 THEN 52000
17050 cp = r%(cp, d): GOTO 699
17060 IF ps = 0 THEN PRINT "the snake is about to attack!": ps = 1: GOTO 700
17070 PRINT "the snake bites you!": PRINT "you are dead.": END
19000 IF r%(cp, 4) = 0 THEN 52000
19010 cp = r%(cp, 4): GOTO 699
20000 PRINT : PRINT "if you were to quit now,": PRINT "you would have a score of";
20010 PRINT gt * 20; "points.": PRINT "(100 possible)"
20020 PRINT "do you indeed wish to quit now? ";
20030 GOSUB 60000
20040 PRINT : IF LEFT$(in$, 1) = "y" THEN 7010
20050 IF LEFT$(in$, 1) <> "n" THEN PRINT "please answer yes or no": GOTO 20020
20060 PRINT "ok": PRINT : GOTO 700
21000 IF j <> 7 THEN PRINT "i don't know how to turn such a thing.": GOTO 700
21010 IF cp <> 26 THEN 51000
21020 in$ = "with much effort, you turn the valve 5 times. you hear the sound "
21030 in$ = in$ + "of liquid ": GOSUB 53000: PRINT : PRINT "flowing through pipes."
21040 pf = 1 - pf
21050 IF pf = 0 AND ol%(7) = -3 THEN ol%(7) = 25: GOTO 700
21060 IF pfandol%(7) = 25 THEN ol%(7) = -3: GOTO 700
21070 GOTO 700
22000 IF cp <> 27 AND cp <> 29 AND cp <> 32 THEN 22050
22010 PRINT "you jump..": IF cp = 27 THEN 22500
22020 IF ol%(14) = -1 THEN 22100
22030 IF ol%(27) = -1 THEN 22200
22040 PRINT "you hit the ground.": GOTO 22540
22050 PRINT "there's nowhere to jump.": GOTO 700
22100 PRINT "there is no way to open the parachute!": GOTO 22040
22200 PRINT "you yank the ripcord and the"
22210 PRINT "'chute comes billowing out.": IF cp = 32 THEN cp = 40: GOTO 699
22220 PRINT "you land safely": PRINT "congratulations on escaping!"
22230 es = 1: GOTO 7010
22500 IF jm THEN 22530
22510 PRINT "you have landed downstairs,": PRINT "and narrowly escaped serious"
22520 PRINT "injury. please don't try it again.": jm = 1: cp = 2: GOTO 699
22530 PRINT "now you've done it! you ignored"
22535 PRINT "my warning, and as a result"
22540 PRINT "you have broken your neck!": PRINT "you are dead.": END
24000 IF cp = 19 THEN PRINT "the water is only a few inches deep.": GOTO 700
24010 IF cp <> 25 THEN PRINT "there's nothing here to swim in!": GOTO 700
24020 IF pf THEN PRINT "in mercury? no way!": GOTO 700
24030 PRINT "the pool is empty.": GOTO 700
25000 IF j = 0 THEN 50000
25010 IF j = 7 THEN PRINT "i ain't no plumber.": GOTO 700
25020 IF j <> 17 THEN PRINT "i wouldn't know how.": GOTO 700
25030 IF fna(j) <> cp AND fna(j) <> -1 THEN 51000
25040 IF ol%(14) = -2 THEN PRINT "it's already fixed.": GOTO 700
25050 IF ol%(17) <> -1 THEN PRINT "i need a ripcord.": GOTO 700
25060 PRINT "i'm no expert, but i think it'll work."
25070 ol%(27) = ol%(14): ol%(14) = -2: pt%(17) = 27: ol%(17) = 0: GOTO 700
50000 PRINT h$(em): em = 3 - em: GOTO 700
51000 PRINT "i don't see it here.": GOTO 700
52000 PRINT "it's impossible to go that way.": GOTO 700
53000 IF LEN(in$) <= 40 THEN PRINT in$; : RETURN
53005 oe = 40
53010 IF MID$(in$, oe, 1) <> " " THEN oe = oe - 1: GOTO 53010
53020 PRINT LEFT$(in$, oe): PRINT RIGHT$(in$, LEN(in$) - oe); : RETURN
60000 REM getting player input
60005 in$ = ""
60010 LINE INPUT in$: IF in$ <> "" THEN 60070
60030 GOTO 60010
60070 RETURN
62000 REM printing of opening screen
62001 KEY OFF: CLS : LOCATE 9, 40: PRINT "M i s e r"
62002 LOCATE 11, 35: PRINT "by Mary Jean Winter"
62003 LOCATE 13, 32: PRINT "(c) 1983 the code works"
62004 LOCATE 15, 26: PRINT "ported to MSDOS by Rene van Hasselaar"
62005 LOCATE 25, 35: GOSUB 62100
62010 RETURN
62100 LINE INPUT "hit return to begin"; QQ$: CLS : RETURN
63000 REM reading of data
63005 FOR i = 0 TO 48: FOR j = 1 TO 4: READ r%(i, j): NEXT j: READ r$(i): NEXT i
63006 DATA 1,0,0,0,front porch
63007 DATA 2,0,0,12,foyer to a large house. dust is everywhere
63008 DATA 3,1,0,0,great hall. suits of armor line the walls
63009 DATA 0,2,4,16,breakfast room. it is bright and cheery
63010 DATA 0,5,7,3,conservatory. through a window you see a hedge-maze
63011 DATA 4,6,0,0,red-walled room
63012 DATA 5,0,10,0,formal parlor
63013 DATA 0,0,8,4,green drawing room
63014 DATA 0,9,0,7,trophy room. animal heads line the walls
63015 DATA 8,0,0,10,den
63016 DATA 0,11,9,6,blue drawing room
63017 DATA 10,0,0,0,library. empty shelves line walls
63018 DATA 0,0,1,13,dining room
63019 DATA 15,0,12,0,chinese room
63020 DATA 0,0,0,0,$
63021 DATA 23,13,16,0,kitchen. it is bare
63022 DATA 0,0,3,15,pantry. dust covers the mahogany shelves
63023 DATA 0,8,0,18,game room
63024 DATA 21,0,17,19,smoking room. the air is stale in here
63025 DATA 21,0,18,20,portico. a murky pool glimmers on the south side
63026 DATA 21,21,19,19,hall of mirrors - a good place to reflect
63027 DATA 0,19,0,20,ballroom. it has a beautiful wood dance floor
63028 DATA 0,0,0,21,chapel. a tablet says 'drop a religous item or die!!'
63029 DATA 24,15,40,25,back yard
63030 DATA 24,23,24,24,forest
63031 DATA 26,0,23,0,pool area. there is a large swimming pool here
63032 DATA 0,25,0,0,pump house. there is pool machinery installed here
63033 DATA 35,0,31,28,middle of the western hallway
63034 DATA 0,0,27,0,west bedroom
63035 DATA 39,0,0,0,front balcony. there is a large road below
63036 DATA 0,0,0,0,$
63037 DATA 0,0,38,27,master bedroom. there's a huge four-poster bed
63038 DATA 0,36,0,0,rear balcony. below you see a hedge maze
63039 DATA 34,0,0,38,east bedroom
63040 DATA 0,33,0,0,closet
63041 DATA 0,27,36,0,junction of the west hallway and the north-south hallway
63042 DATA 32,0,37,35,center of the north-south hallway
63043 DATA 0,38,0,36,junction of the east hallway and the north-south hallway
63044 DATA 37,39,33,31,middle of the east hallway
63045 DATA 38,29,0,0,south end of the east hallway
63046 DATA 0,42,0,41,hedge maze
63047 DATA 44,42,0,0,hedge maze
63048 DATA 41,44,43,0,hedge maze
63049 DATA 41,23,0,0,hedge maze
63050 DATA 0,42,0,45,hedge maze
63051 DATA 0,0,44,0,hedge maze
63052 DATA 0,0,0,5,walk-in vault
63053 DATA 0,40,0,0,dungeon. there is light above and to the south
63054 DATA 0,0,0,0,bottom of the swimming pool. a ladder leads up and out
63055 FOR i = 1 TO 30: READ v$(i): NEXT i
63056 DATA get,take,move,slid,push,open,read,inve,quit
63057 DATA drop,say,pour,fill,unlo,look
63058 DATA go,nort,n,sout,s,east,e,west,w,scor,turn,jump,swim,i,fix
63059 FOR i = 1 TO 30: READ o$(i), pt%(i): NEXT i
63060 DATA ripc,17,mat,10,pape,13,buck,1,swor,9,key,20,valv,-1,ladd,-1
63061 DATA slip,19,rug,15,book,23,door,-1,cabi,-1,ritn,-1,vict,-1,orga,-1,para,14
63062 DATA stai,-1,penn,12,cros,11,leaf,4,bag,5,>$<,-1,>$<,-1,ring,7,pain,8
63063 DATA vaul,-1,pool,-1,xyzz,-1,plug,-1
63064 FOR i = 1 TO 28: READ om$(i), ol%(i): NEXT i: PRINT ""
63065 DATA plastic bucket,26,vicious snake,4,charmed snake,-2,*golden leaf*,45
63066 DATA *bulging moneybag*,46,>$<,-2,*diamond ring*,48
63067 DATA *rare painting*,39,sword,13,mat,0,rusty cross,23,penny,28
63068 DATA piece of paper,31,parachute with no ripcord,34,oriental rug,6
63069 DATA trapdoor marked 'danger',-2
63070 DATA parachute ripcord,-2,portal in the north wall,-2
63071 DATA pair of *ruby slippers*,-2,brass door key,-2
63072 DATA majestic staircase leading up,2
63073 DATA majestic staircase leading down,27,battered book,11
63074 DATA organ in the corner,21,open organ in the corner,-2
63075 DATA cabinet on rollers against one wall over,5,repaired parachute,-2
63076 DATA "sign saying 'drop coins for luck'",19
63099 RETURN
