BEGIN ~CB430SCD~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB430SDb")~ EXIT
END

IF ~Global("CbBanditsRun","AR4370",2)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @4
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CB430SDc")~ EXIT
END

IF ~Global("CbBanditsRun","AR4370",4)~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN DO ~ActionOverride("CB430SCE",Face(1))
ActionOverride("CB430SCF",Face(15))
Face(0)
Enemy()~ EXIT
END
