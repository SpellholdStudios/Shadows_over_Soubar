BEGIN ~BOLIVARP~

IF ~Global("CbKickedOut","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @2 DO ~SetGlobal("CbKickedOut","LOCALS",1)~ EXIT
END

IF ~Global("CbKickedOut","LOCALS",1)~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 EXIT
  IF ~~ THEN REPLY @5 DO ~SetGlobal("CbKickedOut","LOCALS",0)
JoinParty()~ EXIT
END
