BEGIN ~CBLOLTH3~

IF ~Global("CbLolthThreeTalkedToParty","AR4211",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN DO ~SetGlobal("CbLolthTheGoddessFinishedSpeaking","AR4211",1)
ClearAllActions()~ GOTO 4
END

IF ~Global("CbLolthThreeTalkedToParty","AR4211",2)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @3
  IF ~~ THEN DO ~SetGlobal("CbLolthThreeTalkedToParty","AR4211",3)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY @4
  IF ~~ THEN DO ~ClearAllActions()
SetGlobal("CbLolthTheGoddessFinishedSpeaking","AR4211",1)~ EXIT
END
