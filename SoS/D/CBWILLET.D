BEGIN ~CBWILLET~

IF ~Global("CbTownCouncilWithPlayer","GLOBAL",8)
!AreaCheck("AR4219")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",9)
ActionOverride("CBVINNIE",StartDialogNoSet("CBWILLET"))~ EXIT
END

IF ~Global("CbTownCouncilWithPlayer","GLOBAL",10)
!AreaCheck("AR4219")~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",11)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBUMARIN")~ EXIT
END

IF ~AreaCheck("AR4219")
Global("CbTownCouncilWithPlayer","GLOBAL",11)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",12)
JumpToPoint([534.680])
Face(12)
ActionOverride("CBVINNIE",StartDialogNoSet("CBUHGVCT"))~ EXIT
END
