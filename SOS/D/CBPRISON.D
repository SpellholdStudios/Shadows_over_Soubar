BEGIN ~CBPRISON~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 8
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN GOTO 9
END

IF ~NumTimesTalkedTo(2)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN GOTO 10
END

IF ~NumTimesTalkedTo(3)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @4
  IF ~~ THEN GOTO 11
END

IF ~NumTimesTalkedTo(4)~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(5)~ THEN BEGIN 6
  SAY @6
  IF ~~ THEN GOTO 12
END

IF ~NumTimesTalkedToGT(5)~ THEN BEGIN 7
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.0
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.0
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.0
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.0
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.0
  SAY @12
  IF ~~ THEN DO ~GiveItemCreate("BOOK19",LastTalkedToBy(Myself),1,0,0)~ EXIT
END
