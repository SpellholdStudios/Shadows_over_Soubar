BEGIN ~CB4300CT~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~NumInPartyGT(1)~ THEN GOTO 1
  IF ~NumInParty(1)~ THEN GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @2
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY @3
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB430SDd")~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY @4
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB430SDd")~ EXIT
END
