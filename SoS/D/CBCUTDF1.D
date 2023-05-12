BEGIN ~CBCUTDF1~

IF ~Global("CbCut4982","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~MoveViewPoint([230.742],INSTANT)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBATTAC2")~ EXIT
END

IF ~Global("CbCut4982","GLOBAL",2)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~MoveViewPoint([230.742],INSTANT)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBATTAC4")~ EXIT
END

IF ~Global("CbCut4982","GLOBAL",4)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~MoveViewPoint([230.742],INSTANT)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBATTAC6")~ EXIT
END
