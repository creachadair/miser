0 PG$="MISER":NM$="27":GOTO 62000
1 " M.J. LANSING
2 " MATH DEPT MSU
3 " E LANSING, MI 48824
4 "
5 " CURSOR #27, AUG, 1981
6 " COPYRIGHT(C)1981 THE CODE WORKS
7 " BOX 550, GOLETA, CA. 93116
8 "
10 " AS OF 81 AUG 23 1:25 BS
20 DEF FN A(X)=OL%(PT%(X)):WD=40:POKE 32768,96:IF PEEK(33792)<>96 THEN WD=80
200 DIM R$(48),R%(48,4),OM$(28),OL%(28),V$(30),O$(30),PT%(30)
210 EM=1:PF=1:FB=1:H$(1)="WHAT?":H$(2)="I DON'T UNDERSTAND THAT."
300 FOR I=0 TO 48:FOR J=1 TO 4:READ R%(I,J):NEXT J:READ R$(I):NEXT I
400 DATA 1,0,0,0,FRONT PORCH
401 DATA 2,0,0,12,FOYER TO A LARGE HOUSE. DUST IS EVERYWHERE
402 DATA 3,1,0,0,GREAT HALL. SUITS OF ARMOR LINE THE WALLS
403 DATA 0,2,4,16,BREAKFAST ROOM. IT IS BRIGHT AND CHEERY
404 DATA 0,5,7,3,CONSERVATORY. THROUGH A WINDOW YOU SEE A HEDGE-MAZE
405 DATA 4,6,0,0,RED-WALLED ROOM
406 DATA 5,0,10,0,FORMAL PARLOR
407 DATA 0,0,8,4,GREEN DRAWING ROOM
408 DATA 0,9,0,7,TROPHY ROOM. ANIMAL HEADS LINE THE WALLS
409 DATA 8,0,0,10,DEN
410 DATA 0,11,9,6,BLUE DRAWING ROOM
411 DATA 10,0,0,0,LIBRARY. EMPTY SHELVES LINE WALLS
412 DATA 0,0,1,13,DINING ROOM
413 DATA 15,0,12,0,CHINESE ROOM
414 DATA 0,0,0,0,$
415 DATA 23,13,16,0,KITCHEN. IT IS BARE
416 DATA 0,0,3,15,PANTRY. DUST COVERS THE MAHOGANY SHELVES
417 DATA 0,8,0,18,GAME ROOM
418 DATA 21,0,17,19,SMOKING ROOM. THE AIR IS STALE IN HERE
419 DATA 21,0,18,20,PORTICO. A MURKY POOL GLIMMERS ON THE SOUTH SIDE
420 DATA 21,21,19,19,HALL OF MIRRORS - A GOOD PLACE TO REFLECT
421 DATA 0,19,0,20,BALLROOM. IT HAS A BEAUTIFUL WOOD DANCE FLOOR
422 DATA 0,0,0,21,CHAPEL. A TABLET SAYS 'DROP A RELIGOUS ITEM OR DIE!!'
423 DATA 24,15,40,25,BACK YARD
424 DATA 24,23,24,24,FOREST
425 DATA 26,0,23,0,POOL AREA. THERE IS A LARGE SWIMMING POOL HERE
426 DATA 0,25,0,0,PUMP HOUSE. THERE IS POOL MACHINERY INSTALLED HERE
427 DATA 35,0,31,28,MIDDLE OF THE WESTERN HALLWAY
428 DATA 0,0,27,0,WEST BEDROOM
429 DATA 39,0,0,0,FRONT BALCONY. THERE IS A LARGE ROAD BELOW
430 DATA 0,0,0,0,$
431 DATA 0,0,38,27,MASTER BEDROOM. THERE'S A HUGE FOUR-POSTER BED
432 DATA 0,36,0,0,REAR BALCONY. BELOW YOU SEE A HEDGE MAZE
433 DATA 34,0,0,38,EAST BEDROOM
434 DATA 0,33,0,0,CLOSET
435 DATA 0,27,36,0,JUNCTION OF THE WEST HALLWAY AND THE NORTH-SOUTH HALLWAY
436 DATA 32,0,37,35,CENTER OF THE NORTH-SOUTH HALLWAY
437 DATA 0,38,0,36,JUNCTION OF THE EAST HALLWAY AND THE NORTH-SOUTH HALLWAY
438 DATA 37,39,33,31,MIDDLE OF THE EAST HALLWAY
439 DATA 38,29,0,0,SOUTH END OF THE EAST HALLWAY
440 DATA 0,42,0,41,HEDGE MAZE
441 DATA 44,42,0,0,HEDGE MAZE
442 DATA 41,44,43,0,HEDGE MAZE
443 DATA 41,23,0,0,HEDGE MAZE
444 DATA 0,42,0,45,HEDGE MAZE
445 DATA 0,0,44,0,HEDGE MAZE
446 DATA 0,0,0,5,WALK-IN VAULT
447 DATA 0,40,0,0,DUNGEON. THERE IS LIGHT ABOVE AND TO THE SOUTH
448 DATA 0,0,0,0,BOTTOM OF THE SWIMMING POOL. A LADDER LEADS UP AND OUT
500 FOR I=1 TO 30:READ V$(I):NEXT I
510 DATA GET,TAKE,MOVE,SLID,PUSH,OPEN,READ,INVE,QUIT
511 DATA DROP,SAY,POUR,FILL,UNLO,LOOK
512 DATA GO,NORT,N,SOUT,S,EAST,E,WEST,W,SCOR,TURN,JUMP,SWIM,I,FIX
550 FOR I=1 TO 30:READ O$(I),PT%(I):NEXT I
560 DATA RIPC,17,MAT,10,PAPE,13,BUCK,1,SWOR,9,KEY,20,VALV,-1,LADD,-1
570 DATA SLIP,19,RUG,15,BOOK,23,DOOR,-1,CABI,-1,RITN,-1,VICT,-1,ORGA,-1,PARA,14
580 DATA STAI,-1,PENN,12,CROS,11,LEAF,4,BAG,5,>$<,-1,>$<,-1,RING,7,PAIN,8
590 DATA VAUL,-1,POOL,-1,XYZZ,-1,PLUG,-1
600 FOR I=1 TO 28:READ OM$(I),OL%(I):NEXT I:PRINT "�"
610 DATA PLASTIC BUCKET,26,VICIOUS SNAKE,4,CHARMED SNAKE,-2,*GOLDEN LEAF*,45
611 DATA*BULGING MONEYBAG*,46,>$<,-2,*DIAMOND RING*,48
612 DATA*RARE PAINTING*,39,SWORD,13,MAT,0,RUSTY CROSS,23,PENNY,28
613 DATA PIECE OF PAPER,31,PARACHUTE WITH NO RIPCORD,34,ORIENTAL RUG,6
614 DATA TRAPDOOR MARKED 'DANGER',-2
615 DATA PARACHUTE RIPCORD,-2,PORTAL IN THE NORTH WALL,-2
616 DATA PAIR OF *RUBY SLIPPERS*,-2,BRASS DOOR KEY,-2
617 DATA MAJESTIC STAIRCASE LEADING UP,2
618 DATA MAJESTIC STAIRCASE LEADING DOWN,27,BATTERED BOOK,11
619 DATA ORGAN IN THE CORNER,21,OPEN ORGAN IN THE CORNER,-2
620 DATA CABINET ON ROLLERS AGAINST ONE WALL OVER,5,REPAIRED PARACHUTE,-2
621 DATA "SIGN SAYING 'DROP COINS FOR LUCK'",19
699 GOTO 14000
700 PRINT:SC=0:SF=0:GOSUB 60000:IF LEN(IN$)=0 THEN 700
720 IF LEFT$(IN$,1)=" " THEN IN$=RIGHT$(IN$,LEN(IN$)-1):GOTO 720
730 IF RIGHT$(IN$,1)=" " THEN IN$=LEFT$(IN$,LEN(IN$)-1):GOTO 730
735 SP=LEN(IN$)+1:PRINT
740 SC=SC+1:IF MID$(IN$,SC,1)=" " THEN SF=SF+1:SP=SC
750 IF SC<LEN(IN$)THEN 740
760 IF SF>-1 AND SF<2 THEN GOTO 780
770 PRINT "PLEASE TYPE A ONE OR TWO WORD COMMAND":GOTO 700
780 CV$=LEFT$(IN$,SP-1):FOR X=1 TO 30:IF LEFT$(CV$,4)=V$(X)THEN I=X:GOTO 800
790 NEXT X:GOTO 50000
800 IF SF=0 THEN CO$="":J=0:GOTO 900
810 CO$=MID$(IN$,SP+1,4):FOR X=1 TO 30:IF CO$=O$(X)THEN J=X:GOTO 900
820 NEXT X:GOTO 50000
830 GOTO 700
900 ON I GOTO 1000,1000,2000,2000,2000,4000,5000,6000,7000,8000,9000,10000
910 ON I-12 GOTO 11000,12000,14000,15000,16000,16000,17000,17000,17010,17010
920 ON I-22 GOTO 19000,19000,20000,21000,22000,24000,6000,25000
1000 IF J=0 THEN 50000
1002 IF PT%(J)=-1 THEN PRINT "I AM UNABLE TO DO THAT.":GOTO 700
1005 IF FN A(J)=-1 THEN PRINT "YOU'RE ALREADY CARRYING IT":GOTO 700
1010 IF FN A(J)<>CP THEN 51000
1020 OL%(PT%(J))=-1:PRINT "OK"
1030 X=PT%(J):IF(X>3 AND X<9)OR X=19 THEN PRINT "YOU GOT A TREASURE!":GT=GT+1
1040 IF J=2 AND OL%(20)=-2 THEN PRINT "YOU FIND A DOOR KEY!":OL%(20)=0
1050 GOTO 700
2000 IF J=0 THEN 50000
2005 IF J=13 AND CP=5 AND R%(5,3)=0 THEN 2100
2010 IF PT%(J)=-1 THEN PRINT "THAT ITEM STAYS PUT.":GOTO 700
2020 IF(FN A(J)<>CP)AND(FN A(J)<>-1)THEN 51000
2030 IF J=2 AND OL%(20)=-2 THEN 1040
2040 IF J=10 AND OL%(16)=-2 THEN 2200
2050 PRINT "MOVING IT REVEALS NOTHING."
2060 GOTO 700
2100 PRINT "BEHIND THE CABINET IS A VAULT!"
2110 FV=1:GOTO 699
2200 PRINT "YOU FIND A TRAP DOOR!"
2210 OL%(16)=6:GOTO 699
4000 IF J=0 THEN 50000
4002 IF J<>11 THEN 4030
4005 IF(FN A(J)<>CP)AND(FN A(J)<>-1)THEN 4030
4010 IN$="SCRAWLED IN BLOOD ON THE INSIDE FRONT COVER IS THE MESSAGE,"
4011 GOSUB 53000:PRINT
4020 PRINT "''VICTORY' IS A PRIZE-WINNING WORD'.":GOTO 700
4030 IF J=7 THEN PRINT "TRY TURNING IT.":GOTO 700
4040 IF J<>12 THEN 4120
4050 IF CP=0 AND DU=0 THEN PRINT "SORRY, THE DOOR IS LOCKED.":GOTO 700
4060 IF CP=0 AND DU THEN PRINT "IT'S ALREADY OPEN.":GOTO 700
4070 IF CP<>6 THEN 51000
4080 IN$="YOU OPEN THE DOOR. YOU LEAN OVER TO PEER IN, AND YOU FALL IN!"
4090 GOSUB 53000:CP=47:PRINT:GOTO 699
4120 IF J<>13 THEN 4160
4130 IF OL%(26)<>CP THEN 51000
4140 PRINT "THE CABINET IS EMPTY AND DUSTY."
4150 IN$="SCRIBBLED IN DUST ON ONE SHELF ARE THE WORDS, 'BEHIND ME'."
4155 GOSUB 53000:PRINT:GOTO 700
4160 IF J<>22 THEN 4190
4170 IF FN A(J)<>CP AND FN A(J)<>-1 THEN 51000
4180 PRINT "THE BAG IS KNOTTED SECURELY.":PRINT "IT WON'T OPEN.":GOTO 700
4190 IF J<>27 THEN 4230
4200 IF CP<>5 OR FV=0 THEN 51000
4210 IF VO THEN PRINT "IT'S ALREADY OPEN.":GOTO 700
4220 PRINT "I CAN'T, IT'S LOCKED.":GOTO 700
4230 IF J<>16 THEN PRINT "I DON'T KNOW HOW TO OPEN THAT.":GOTO 700
4232 IF CP<>21 THEN 51000
4235 IF GG=0 THEN PRINT "IT'S STUCK SHUT.":GOTO 700
4240 IF OL%(24)=-2 THEN PRINT "IT'S ALREADY OPEN.":GOTO 700
4250 PRINT "AS YOU OPEN IT, SEVERAL OBJECTS":PRINT "SUDDENLY APPEAR!"
4260 OL%(24)=-2:OL%(25)=21:OL%(19)=21:OL%(17)=21:GOTO 699
5000 IF J=0 THEN 50000
5005 IF PT%(J)>-1 THEN IF FN A(J)<>CP AND FN A(J)<>-1 THEN 51000
5010 IF PT%(J)=-1 THEN PRINT "THERE'S NOTHING WRITTEN ON THAT.":GOTO 700
5020 IF J<>3 AND J<>11 THEN PRINT "THERE'S NOTHING WRITTEN ON THAT.":GOTO 700
5030 IF J=11 THEN PRINT "THE FRONT COVER IS INSCRIBED IN GREEK.":GOTO 700
5040 PRINT "IT SAYS, '12-35-6'.":PRINT "HMM.. LOOKS LIKE A COMBINATION."
5050 KC=1:GOTO 700
6000 PRINT "YOU ARE CARRYING THE FOLLOWING:"
6010 FI=0:FOR X=1 TO 27:IF OL%(X)=-1 THEN PRINT OM$(X):FI=1
6020 IF X=1 AND BF AND OL%(1)=-1 THEN PRINT "  THE BUCKET IS FULL OF WATER."
6025 IF X=14 AND OL%(14)=-1 THEN PRINT "  (BETTER FIX IT)"
6030 NEXT X:IF FI=0 THEN PRINT "NOTHING AT ALL."
6040 GOTO 700
7000 PRINT "DO YOU REALLY WANT TO QUIT NOW?"
7001 GOSUB 60000:IF IN$="" THEN 7001
7002 IF LEFT$(IN$,1)<>"Y" THEN PRINT:PRINT "OK":GOTO 700
7005 PRINT "�"
7010 PRINT "YOU ACCUMULATED";GT;"TREASURES,"
7020 PRINT "FOR A SCORE OF";GT*20;"POINTS."
7030 PRINT "(100 POSSIBLE)":IF ES=0 THEN PRINT "HOWEVER, YOU DID NOT ESCAPE."
7040 PRINT "THIS PUTS YOU IN A CLASS OF:":IF ES THEN GT=GT+1
7050 ON GT+1 GOTO 7060,7070,7075,7090,7100,7110,7115
7060 PRINT "<BEGINNER ADVENTURER>":GOTO 7120
7070 PRINT "<AMATEUR ADVENTURER>":GOTO 7120
7075 PRINT "<JOURNEYMAN ADVENTURER>":GOTO 7120
7090 PRINT "<EXPERIENCED ADVENTURER>":GOTO 7120
7100 PRINT "<PRO ADVENTURER>":GOTO 7120
7110 PRINT "<MASTER ADVENTURER>":GOTO 7120
7115 PRINT "<GRANDMASTER ADVENTURER>"
7120 IF GT<>6 THEN PRINT "BETTER LUCK NEXT TIME!"
7150 END
8000 IF FN A(J)<>-1 THEN PRINT "YOU AREN'T CARRYING IT!":GOTO 700
8010 X=PT%(J):IF(X>3 AND X<9)OR X=19 THEN PRINT "DON'T DROP *TREASURES*!":GOTO 700
8020 IF CP=19 AND J=19 THEN 8100
8030 IF CP=22 AND J=20 THEN 8200
8040 OL%(PT%(J))=CP:PRINT "OK":GOTO 700
8100 IN$="AS THE PENNY SINKS BELOW THE SURFACE OF THE POOL, A FLEETING IMAGE OF"
8110 GOSUB 53000:PRINT:PRINT "A CHAPEL WITH DANCERS OUTSIDE APPEARS."
8130 R%(21,3)=22:OL%(12)=-2:GOTO 700
8200 IN$="EVEN BEFORE IT HITS THE GROUND, THE CROSS FADES AWAY!":GOSUB 53000:PRINT
8210 PRINT "THE TABLET HAS DISINTEGRATED."
8215 PRINT "YOU HEAR MUSIC FROM THE ORGAN."
8220 GG=1:OL%(11)=-2:R$(22)="CHAPEL"
8221 OM$(24)="CLOSED ORGAN PLAYING MUSIC IN THE CORNER":GOTO 700
9000 IF J=0 THEN PRINT "SAY WHAT???":GOTO 700
9010 IF J=14 THEN 9100
9020 IF J=15 THEN 9200
9030 IF J>28 THEN 9300
9040 PRINT "OKAY, '";RIGHT$(IN$,LEN(IN$)-SP);"'."
9050 FOR X=1 TO 1000:NEXT X:PRINT "NOTHING HAPPENS.":GOTO 700
9100 IF CP<>4 OR CH THEN PRINT "NOTHING HAPPENS.":GOTO 700
9110 IN$="THE SNAKE IS CHARMED BY THE VERY UTTERANCE OF YOUR WORDS."
9111 GOSUB 53000:PRINT
9120 CH=1:OL%(2)=-2:OL%(3)=4:GOTO 700
9200 IF CP<>8 OR PO THEN PRINT "NOTHING HAPPENS.":GOTO 700
9210 PRINT "A PORTAL HAS OPENED IN THE NORTH WALL!!"
9220 PO=1:R%(8,1)=17:OL%(18)=8:GOTO 700
9300 PRINT "A HOLLOW VOICE SAYS, 'WRONG ADVENTURE'.":GOTO 700
10000 IF J<>4 THEN PRINT "I WOULDN'T KNOW HOW.":GOTO 700
10010 IF OL%(1)<>-1 AND OL%(1)<>CP THEN 51000
10020 IF BF=0 THEN PRINT "THE BUCKET IS ALREADY EMPTY.":GOTO 700
10030 IF CP=19 THEN PRINT "OK":GOTO 700
10040 IF CP<>10 OR FB=0 THEN PRINT "THE WATER DISAPPEARS QUICKLY.":BF=0:GOTO 700
10050 PRINT "CONGRATULATIONS! YOU HAVE VANQUISHED":PRINT "THE FLAMES."
10060 FB=0:BF=0:GOTO 699
11000 IF J=0 THEN 50000
11010 IF PT%(J)=-1 THEN PRINT "THAT WOULDN'T HOLD ANYTHING.":GOTO 700
11020 IF FN A(J)<>CP AND FN A(J)<>-1 THEN 51000
11030 IF J<>4 THEN PRINT "THAT WOULDN'T HOLD ANYTHING.":GOTO 700
11040 IF BF THEN PRINT "IT'S ALREADY FULL.":GOTO 700
11050 IF CP=25 AND PF THEN PRINT "I'D RATHER STAY AWAY FROM THE MERCURY.":GOTO 700
11060 IF CP<>23 AND CP<>19 THEN PRINT "I DON'T SEE ANY WATER HERE.":GOTO 700
11070 PRINT "YOUR BUCKET IS NOW FULL.":BF=1:GOTO 700
12000 IF J=0 THEN 50000
12010 IF J<>12 AND J<>27 THEN PRINT "I WOULDN'T KNOW HOW TO UNLOCK ONE.":GOTO 700
12020 IF CP<>0 AND CP<>5 AND CP<>6 THEN 51000
12030 IF CP=0 AND J=12 THEN 12200
12040 IF CP=5 AND J=27 THEN 12300
12050 IF CP<>6 OR J<>12 OR OL%(16)=-2 THEN 51000
12100 PRINT "THE TRAPDOOR HAS NO LOCK":GOTO 700
12200 IF DU THEN PRINT "IT'S ALREADY UNLOCKED.":GOTO 700
12210 IF OL%(20)<>-1 THEN PRINT "I NEED A KEY.":GOTO 700
12220 PRINT "THE DOOR EASILY UNLOCKS AND SWINGS OPEN.":DU=1:GOTO 699
12300 IF VO THEN PRINT "IT'S ALREADY OPEN.":GOTO 700
12305 IF FV=0 THEN 51000
12310 IF KC=0 THEN PRINT "I DON'T KNOW THE COMBINATION.":GOTO 700
12320 PRINT "OK, LET'S SEE. 12..35..6..":PRINT "<CLICK!> THE DOOR SWINGS OPEN."
12330 VO=1:R%(5,3)=46:GOTO 699
14000 IN$="YOU ARE IN THE "+R$(CP)+".":GOSUB 53000:PRINT
14010 FOR X=1 TO 28:IF OL%(X)<>CP THEN 14020
14011 IN$="THERE IS A "+OM$(X)+" HERE.":PRINT:GOSUB 53000:PRINT
14020 IF X=1 AND BF AND OL%(1)=CP THEN PRINT "   THE BUCKET IS FULL OF WATER."
14030 NEXT X
14040 IF CP=25 AND PF THEN PRINT "THE POOL IS FULL OF LIQUID MERCURY!"
14050 IF CP<>25 OR PF THEN 14060
14055 PRINT "THE POOL'S EMPTY.":IF OL%(7)<>48 THEN 14060
14056 PRINT "I SEE SOMETHING SHINY IN THE POOL!"
14060 IF CP<>10 OR FB=0 THEN 14090
14070 PRINT "THERE IS A HOT FIRE ON THE SOUTH WALL!"
14080 PRINT "IF I GO THAT WAY I'LL BURN TO DEATH!"
14090 IF CP<>16 THEN 14110
14100 IN$="A RICH, FULL VOICE SAYS, 'RITNEW IS A CHARMING WORD'."
14105 GOSUB 53000:PRINT
14110 IF CP=26 THEN PRINT "THERE IS A VALVE ON ONE OF THE PIPES."
14115 IF CP=23 THEN PRINT "THERE IS A LEAKY FAUCET NEARBY."
14120 IF CP=10 AND FB=0 THEN PRINT "THERE IS EVIDENCE OF A RECENT FIRE HERE."
14125 IF CP=5 AND FV THEN PRINT "THERE IS A VAULT IN THE EAST WALL."
14126 IF CP=5 AND VO THEN PRINT "THE VAULT IS OPEN."
14127 IF CP=0 AND DU THEN PRINT "AN OPEN DOOR LEADS NORTH."
14130 IF CP<>48 THEN PRINT "OBVIOUS EXITS:":IF R%(CP,1)>0 THEN PRINT "N ";
14140 IF R%(CP,2)>0 THEN PRINT "S ";
14150 IF R%(CP,3)>0 THEN PRINT "E ";
14160 IF R%(CP,4)>0 THEN PRINT "W ";
14170 PRINT:GOTO 700
15000 IF J<>8 AND J<>18 AND J<>28 THEN 50000
15010 IF(J=8 AND CP<>48)OR(J=18 AND CP<>2 AND CP<>27)OR(J=28 AND CP<>25)THEN 51000
15020 IF J=8 THEN CP=25:GOTO 699
15030 IF J=28 AND PF THEN PRINT "THE POOL IS FULL OF MERCURY!":GOTO 700
15040 IF J=28 THEN CP=48:GOTO 699
15050 IF CP=27 THEN CP=2:GOTO 699
15060 IF OL%(9)=-1 THEN 15070
15061 IN$="THE SUITS OF ARMOR PREVENT YOU FROM GOING UP!":GOSUB 53000
15062 PRINT:GOTO 700
15070 PRINT "THE SUITS OF ARMOR TRY TO STOP YOU,"
15080 PRINT "BUT YOU FIGHT THEM OFF WITH YOUR SWORD.":CP=27:GOTO 699
16000 IF CP=0 AND DU=0 THEN PRINT "THE DOOR IS LOCKED SHUT.":GOTO 700
16010 IF R%(CP,1)=0 THEN 52000
16015 IF CP=0 THEN PRINT "THE DOOR SLAMS SHUT BEHIND YOU!"
16020 CP=R%(CP,1):GOTO 699
17000 IF CP=10 AND FB THEN PRINT "YOU HAVE BURNT TO A CRISP!":END
17010 IF CP=4 AND CH=0 AND PS=0 THEN PRINT "THE SNAKE IS ABOUT TO ATTACK!":PS=1:GOTO 700
17020 IF CP=4 AND CH=0 THEN PRINT "THE SNAKE BITES YOU!":PRINT "YOU ARE DEAD.":END
17030 D=2:IF I=21 OR I=22 THEN D=3
17040 IF R%(CP,D)=0 THEN 52000
17050 CP=R%(CP,D):GOTO 699
19000 IF R%(CP,4)=0 THEN 52000
19010 CP=R%(CP,4):GOTO 699
20000 PRINT:PRINT "IF YOU WERE TO QUIT NOW,":PRINT "YOU WOULD HAVE A SCORE OF";
20010 PRINT GT*20;"POINTS.":PRINT "(100 POSSIBLE)"
20020 PRINT "DO YOU INDEED WISH TO QUIT NOW? ";
20030 GOSUB 60000
20040 PRINT:IF LEFT$(IN$,1)="Y" THEN 7010
20050 IF LEFT$(IN$,1)<>"N" THEN PRINT "PLEASE ANSWER YES OR NO":GOTO 20020
20060 PRINT "OK":PRINT:GOTO 700
21000 IF J<>7 THEN PRINT "I DON'T KNOW HOW TO TURN SUCH A THING.":GOTO 700
21010 IF CP<>26 THEN 51000
21020 IN$="WITH MUCH EFFORT, YOU TURN THE VALVE 5 TIMES. YOU HEAR THE SOUND "
21030 IN$=IN$+"OF LIQUID ":GOSUB 53000:PRINT:PRINT "FLOWING THROUGH PIPES."
21040 PF=1-PF
21050 IF PF=0 AND OL%(7)=-3 THEN OL%(7)=25:GOTO 700
21060 IF PF AND OL%(7)=25 THEN OL%(7)=-3:GOTO 700
21070 GOTO 700
22000 IF CP<>27 AND CP<>29 AND CP<>32 THEN PRINT "THERE'S NOWHERE TO JUMP.":GOTO 700
22010 PRINT "YOU JUMP..":IF CP=27 THEN 22500
22020 IF OL%(14)=-1 THEN 22100
22030 IF OL%(27)=-1 THEN 22200
22040 PRINT "YOU HIT THE GROUND.":GOTO 22540
22100 PRINT "THERE IS NO WAY TO OPEN THE PARACHUTE!":GOTO 22040
22200 PRINT "YOU YANK THE RIPCORD AND THE"
22210 PRINT "'CHUTE COMES BILLOWING OUT.":IF CP=32 THEN CP=40:GOTO 699
22220 PRINT "YOU LAND SAFELY":PRINT "CONGRATULATIONS ON ESCAPING!":ES=1:GOTO 7010
22500 IF JM THEN 22530
22510 PRINT "YOU HAVE LANDED DOWN-STAIRS,":PRINT "AND NARROWLY ESCAPED SERIOUS"
22520 PRINT "INJURY. PLEASE DON'T TRY IT AGAIN.":JM=1:CP=2:GOTO 699
22530 PRINT "NOW YOU'VE DONE IT. YOU IGNORED":PRINT "MY WARNING, AND AS A RESULT"
22540 PRINT "YOU HAVE BROKEN YOUR NECK!":PRINT "YOU ARE DEAD.":END
24000 IF CP<>19 AND CP<>25 THEN PRINT "THERE'S NOTHING HERE TO SWIM IN!":GOTO 700
24010 IF CP=19 THEN PRINT "THE WATER IS ONLY A FEW INCHES DEEP.":GOTO 700
24020 IF PF THEN PRINT "IN MERCURY? NO WAY!":GOTO 700
24030 PRINT "THE POOL IS EMPTY.":GOTO 700
25000 IF J=0 THEN 50000
25010 IF J=7 THEN PRINT "I AIN'T NO PLUMBER.":GOTO 700
25020 IF J<>17 THEN PRINT "I WOULDN'T KNOW HOW.":GOTO 700
25030 IF FN A(J)<>CP AND FN A(J)<>-1 THEN 51000
25040 IF OL%(14)=-2 THEN PRINT "IT'S ALREADY FIXED.":GOTO 700
25050 IF OL%(17)<>-1 THEN PRINT "I NEED A RIPCORD.":GOTO 700
25060 PRINT "I'M NO EXPERT, BUT I THINK IT'LL WORK."
25070 OL%(27)=OL%(14):OL%(14)=-2:PT%(17)=27:OL%(17)=0:GOTO 700
50000 PRINT H$(EM):EM=3-EM:GOTO 700
51000 PRINT "I DON'T SEE IT HERE.":GOTO 700
52000 PRINT "IT'S IMPOSSIBLE TO GO THAT WAY.":GOTO 700
53000 IF LEN(IN$)<=40 OR WD=80 THEN PRINT IN$;:RETURN
53005 OE=41
53010 IF MID$(IN$,OE,1)<>" " THEN OE=OE-1:GOTO 53010
53020 PRINT LEFT$(IN$,OE):PRINT RIGHT$(IN$,LEN(IN$)-OE);:RETURN
60000 IN$=" ":ZT=TI:ZC=2:ZD$=CHR$(20)
60010 GET Z$:IF Z$<>"" THEN 60070
60020 IF ZT<=TI THEN PRINT MID$(" �",ZC,1);"�";:ZC=3-ZC:ZT=TI+15
60030 GOTO 60010
60070 Z=ASC(Z$):ZL=LEN(IN$):IF(Z AND 127)<32 THEN PRINT " �";:GOTO 60110
60090 IF ZL>254 THEN 60010
60100 IN$=IN$+Z$:PRINT Z$;ZD$;Z$;
60110 IF Z=13 THEN IN$=MID$(IN$,2):PRINT CR$;:RETURN
60120 IF Z=20 AND ZL>1 THEN IN$=LEFT$(IN$,ZL-1):PRINT "�";:GOTO 60010
60130 IF Z=141 THEN Z$=CHR$(-20*(ZL>1)):FOR Z=2 TO ZL:PRINT Z$;:NEXT Z:GOTO 60000
60140 GOTO 60010
60500 FOR I=1 TO 13:PRINT "���";:NEXT I:PRINT "���":RETURN
62000 POKE 59468,12
62005 PRINT "�";TAB(15-LEN(PG$));PG$;"  BY M.J. LANSING
62010 PRINT "     CURSOR #";NM$;"  COPYRIGHT (C) 1981
62020 GOSUB 60500
62030 PRINT "EXPLORE THE MISER'S HOUSE   (NEEDS 16K)
62080 PRINT "PRESS RETURN� TO BEGIN
62090 GET IN$:IF IN$="" THEN 62090
62100 PRINT "ONE MOMENT PLEASE...":GOTO 20
