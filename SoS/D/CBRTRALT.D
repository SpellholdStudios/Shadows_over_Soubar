BEGIN ~CBRTRALT~

IF ~Global("CbASpyEscaped","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN DO ~SetGlobal("CbAlertSounded","AR4230",1)~ EXIT
END

IF ~Global("CbASpyWasJailed","GLOBAL",1)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 6
  IF ~~ THEN REPLY @5 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @7
  IF ~~ THEN DO ~EscapeAreaDestroy(10)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 8.1 5.1
  SAY @8
  IF ~~ THEN DO ~EscapeAreaDestroy(10)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~~ THEN REPLY @11 GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @12
  IF ~~ THEN DO ~EscapeAreaDestroy(10)~ EXIT
END
