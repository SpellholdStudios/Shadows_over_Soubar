BEGIN ~CBCOMP01~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~NumInPartyGT(1)~ THEN REPLY @7 GOTO 7
  IF ~NumInPartyGT(2)~ THEN REPLY @8 GOTO 8
  IF ~NumInPartyGT(3)~ THEN REPLY @9 GOTO 9
  IF ~NumInPartyGT(4)~ THEN REPLY @10 GOTO 10
  IF ~NumInPartyGT(5)~ THEN REPLY @11 GOTO 11
  IF ~~ THEN REPLY @12 GOTO 12
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @13
  IF ~~ THEN DO ~ChangeAIScript("CBSOUGRD",CLASS)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @13
  IF ~~ THEN DO ~IncrementGlobal("CbCompTo_N_W","GLOBAL",1)
MoveToObject("CbNorthWestWayPoint")
ChangeAIScript("CBRNDTRN",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @13
  IF ~~ THEN DO ~IncrementGlobal("CbCompTo_N","GLOBAL",1)
MoveToObject("CbNorthWayPoint")
ChangeAIScript("CBRNDTRN",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @13
  IF ~~ THEN DO ~IncrementGlobal("CbCompTo_N_E","GLOBAL",1)
MoveToObject("CbNorthEastWayPoint")
ChangeAIScript("CBRNDTRN",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @13
  IF ~RandomNum(4,1)~ THEN DO ~ChangeAIScript("CBCOMP11",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
  IF ~RandomNum(4,2)~ THEN DO ~ChangeAIScript("CBCOMP12",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
  IF ~RandomNum(4,3)~ THEN DO ~ChangeAIScript("CBCOMP13",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
  IF ~RandomNum(4,4)~ THEN DO ~ChangeAIScript("CBCOMP14",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY @13
  IF ~RandomNum(4,1)~ THEN DO ~ChangeAIScript("CBCOMP21",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
  IF ~RandomNum(4,2)~ THEN DO ~ChangeAIScript("CBCOMP22",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
  IF ~RandomNum(4,3)~ THEN DO ~ChangeAIScript("CBCOMP23",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
  IF ~RandomNum(4,4)~ THEN DO ~ChangeAIScript("CBCOMP24",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.6
  SAY @13
  IF ~RandomNum(4,1)~ THEN DO ~ChangeAIScript("CBCOMP31",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
  IF ~RandomNum(4,2)~ THEN DO ~ChangeAIScript("CBCOMP32",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
  IF ~RandomNum(4,3)~ THEN DO ~ChangeAIScript("CBCOMP33",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
  IF ~RandomNum(4,4)~ THEN DO ~ChangeAIScript("CBCOMP34",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.7
  SAY @13
  IF ~RandomNum(4,1)~ THEN DO ~ChangeAIScript("CBCOMP41",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
  IF ~RandomNum(4,2)~ THEN DO ~ChangeAIScript("CBCOMP42",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
  IF ~RandomNum(4,3)~ THEN DO ~ChangeAIScript("CBCOMP43",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
  IF ~RandomNum(4,4)~ THEN DO ~ChangeAIScript("CBCOMP44",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.8
  SAY @13
  IF ~RandomNum(4,1)~ THEN DO ~ChangeAIScript("CBCOMP51",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
  IF ~RandomNum(4,2)~ THEN DO ~ChangeAIScript("CBCOMP52",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
  IF ~RandomNum(4,3)~ THEN DO ~ChangeAIScript("CBCOMP53",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
  IF ~RandomNum(4,4)~ THEN DO ~ChangeAIScript("CBCOMP54",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.9
  SAY @13
  IF ~RandomNum(4,1)~ THEN DO ~ChangeAIScript("CBCOMP61",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
  IF ~RandomNum(4,2)~ THEN DO ~ChangeAIScript("CBCOMP62",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
  IF ~RandomNum(4,3)~ THEN DO ~ChangeAIScript("CBCOMP63",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
  IF ~RandomNum(4,4)~ THEN DO ~ChangeAIScript("CBCOMP64",CLASS)
ChangeAIScript("WTASIGHT",RACE)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.10
  SAY @13
  IF ~~ THEN EXIT
END
