BEGIN ~TOMASTOP~

IF ~Global("KickedOut","LOCALS",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 EXIT
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()
~ EXIT
END

IF ~HappinessLT(Myself,-290)~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
EscapeArea()~ EXIT
END

IF ~True()~ THEN BEGIN 3 // from:
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @9
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @10
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @11
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY @12
  IF ~~ THEN EXIT
END
