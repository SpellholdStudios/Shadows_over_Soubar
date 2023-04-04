BEGIN ~CBVINNIE~

IF ~Global("CbTownCouncilWithPlayer","GLOBAL",7)
!AreaCheck("AR4219")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",8)
ActionOverride("CBWILLET",StartDialogNoSet("CBVINNIE"))~ EXIT
END

IF ~Global("CbTownCouncilWithPlayer","GLOBAL",9)
!AreaCheck("AR4219")~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @3
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",10)
Face(12)
ActionOverride("CBWILLET",StartDialogNoSet("CBVINNIE"))~ EXIT
END

IF ~AreaCheck("AR4219")
Global("CbTownCouncilWithPlayer","GLOBAL",12)
!Global("CbTownCouncilWithPlayer","LOCALS",12)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","LOCALS",12)
ActionOverride("CBVINNIE",StartDialogNoSet("CBUHGVCT"))~ EXIT
END

IF ~AreaCheck("AR4219")
Global("CbTownCouncilWithPlayer","LOCALS",12)~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",13)
SetGlobal("CbTownCouncilWithPlayer","LOCALS",13)
ActionOverride("CBUHGVCT",StartDialogNoSet(Player1))~ EXIT
END

IF ~Global("CbTownCouncilWithPlayer","GLOBAL",15)
AreaCheck("AR4219")~ THEN BEGIN 6
  SAY @6
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @7
  IF ~~ THEN DO ~SetGlobal("CbSoubarContactsInitiateDialog","AR4219",34)
SetGlobal("CbTownCouncilWithPlayer","GLOBAL",16)
JumpToPoint([603.609])
Face(12)
ActionOverride("CBUHGVCT",StartDialogNoSet(Player1))~ EXIT
END

IF ~Global("CbTownCouncilWithPlayer","GLOBAL",17)
AreaCheck("AR4219")~ THEN BEGIN 8
  SAY @8
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",18)
SetGlobal("CbSoubarContactsInitiateDialog","AR4219",38)
JumpToPoint([603.609])
Face(12)
ActionOverride("CBUHAKCT",StartDialogNoSet(Player1))~ EXIT
END

IF ~Global("CbTownCouncilWithPlayer","GLOBAL",21)
AreaCheck("AR4219")~ THEN BEGIN 9
  SAY @9
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @10
  IF ~~ THEN DO ~SetGlobal("CbVinnyHasDinner","AR4219",5)
SetGlobal("CbStopVinnieAndBoy","GLOBAL",0)
SetGlobal("CbTownCouncilWithPlayer","GLOBAL",22)
JumpToPoint([603.609])
Face(12)
ActionOverride("CBUHGVCT",StartDialogNoSet(Player1))~ EXIT
END
