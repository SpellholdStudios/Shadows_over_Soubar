BEGIN ~CBRRRPIP~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 3.0 2.1 1.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN REPLY @6 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1 2.2 1.1
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~~ THEN REPLY @11 GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 6
  IF ~~ THEN REPLY @14 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 10.1 9.0 5.0
  SAY @15
  IF ~~ THEN DO ~GiveItem("CBRRRPIP",LastTalkedToBy())
IncrementGlobal("CbRatsRatsRatsStart","AR0500",1)
SetGlobal("CbPiperGetsRidOfPipe","AR0500",1)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 10.0 9.1 5.1
  SAY @16
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @17
  IF ~~ THEN DO ~IncrementGlobal("CbRatsRatsRatsStart","AR0500",1)
SetGlobal("CbPiperGetsRidOfPipe","AR0500",1)
GiveItem("CBRRRPIP",LastTalkedToBy())
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY @18
  IF ~~ THEN REPLY @13 GOTO 6
  IF ~~ THEN REPLY @14 GOTO 7
END

IF ~~ THEN BEGIN 10 // from: 4.2
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 7
  IF ~~ THEN REPLY @21 GOTO 6
END
