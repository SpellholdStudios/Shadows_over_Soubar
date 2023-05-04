BEGIN ~CBSPYRLF~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN GOTO 8
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 2
  SAY @2
  IF ~Global("CbSpyIs_Charlie","GLOBAL",2)~ THEN GOTO 3
  IF ~Global("CbSpyIs_Fighter","GLOBAL",2)~ THEN GOTO 4
  IF ~Global("CbSpyIs_Miller","GLOBAL",2)~ THEN GOTO 5
  IF ~Global("CbSpyIs_Winthrop","GLOBAL",2)~ THEN GOTO 6
  IF ~Global("CbSpyIs_Mayor","GLOBAL",2)~ THEN GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @3
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBXTCTCH")~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @3
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBXTCTFT")~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY @3
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBXTCTCB")~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY @3
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBXTCTWN")~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4
  SAY @3
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBXTCTMY")~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.0
  SAY @4
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @5
  IF ~~ THEN DO ~Enemy()~ EXIT
END
