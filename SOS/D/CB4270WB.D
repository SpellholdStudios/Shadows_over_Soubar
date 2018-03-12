BEGIN ~CB4270WB~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 7
  IF ~~ THEN REPLY @4 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @5
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @6
  IF ~~ THEN DO ~StartStore("CBWBTEST",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY @7
  IF ~~ THEN DO ~StartStore("CBWBBUY1",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY @8
  IF ~~ THEN EXIT
END
