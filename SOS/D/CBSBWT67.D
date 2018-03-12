BEGIN ~CBSBWT67~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~Global("CbJillAnnKrossStoreCanOpen","AR4267",1)~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @10
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @11
  IF ~~ THEN DO ~StartStore("CBSBWT67",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY @12
  IF ~~ THEN EXIT
END
