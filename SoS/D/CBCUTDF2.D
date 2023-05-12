BEGIN ~CBCUTDF2~

IF ~Global("CbCut4982","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~MoveViewPoint([230.742],INSTANT)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBATTAC3")~ EXIT
END

IF ~Global("CbCut4982","GLOBAL",3)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~MoveViewPoint([230.742],INSTANT)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBATTAC5")~ EXIT
END

IF ~Global("CbCut4982","GLOBAL",5)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~ClearActions(Player1)
ClearActions(Player2)
ClearActions(Player3)
ClearActions(Player4)
ClearActions(Player5)
ClearActions(Player6)
MoveViewPoint([230.742],INSTANT)
StartCutSceneMode()
StartCutScene("CBATTAC7")~ JOURNAL @50204 EXIT
END
