BEGIN ~CBUHAKCT~

IF ~Global("CbTownCouncilWithPlayer","GLOBAL",0)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN DO ~SetGlobal("CbStopVinnieAndBoy","GLOBAL",1)
SetGlobal("CbTownCouncilWithPlayer","GLOBAL",1)
ActionOverride("CBUHGVCT",StartDialogNoSet("CBUHAKCT"))~ EXIT
END

IF ~Global("CbTownCouncilWithPlayer","GLOBAL",2)~ THEN BEGIN 1
  SAY @1 
  IF ~~ THEN GOTO 46
END

IF ~Global("CbTownCouncilWithPlayer","GLOBAL",5)~ THEN BEGIN 2
  SAY @2 
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @3 
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @4 
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @5 
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @6 
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @7 
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",6)
ActionOverride("CBUHGVCT",StartDialogNoSet("CBVINNIE"))~ EXIT
END

IF ~Global("CbTownCouncilWithPlayer","GLOBAL",14)
AreaCheck("AR4219")~ THEN BEGIN 8
  SAY @8 
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @9 
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @10 
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @11 
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @12 
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @13 
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @14 
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",15)
ActionOverride("CBVINNIE",JumpToPoint([947.319]))
SetGlobal("CbSoubarContactsInitiateDialog","AR4219",33)
ActionOverride("CBVINNIE",StartDialogueNoSet("CBUHAKCT")~ EXIT
END

IF ~Global("CbTownCouncilWithPlayer","GLOBAL",18)
AreaCheck("AR4219")~ THEN BEGIN 15
  SAY @15 
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @16 
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @17 
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @18 
  IF ~~ THEN REPLY @19 GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @20
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @21 
  IF ~~ THEN GOTO 47
END

IF ~Global("CbSoubarContactsInitiateDialog","AR4219",42)
Global("CbGvAndAkLeave","AR4219",2)
AreaCheck("AR4219")~ THEN BEGIN 21
  SAY @22 
  IF ~~ THEN DO ~SetGlobal("CbGvAndAkLeave","AR4219",3)~ EXIT
END

IF ~GlobalLT("CbTownCouncilWithPlayer","GLOBAL",21)
Global("CbPartyWantsMoneyFromSoubar","AR4219",1)
AreaCheck("AR4219")~ THEN BEGIN 22
  SAY @23 
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @24 
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @25 
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @26 
  IF ~~ THEN REPLY @27 DO ~SetGlobal("CbGvAndAkLeave","AR4219",1)~ EXIT
  IF ~~ THEN REPLY @28 GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY @29 
  IF ~~ THEN REPLY @30 DO ~SetGlobal("CbPartyWantsMoneyFromSoubar","AR4219",3)
SetGlobal("CbPartyHelpsSoubar","AR4219",1)~ EXIT
  IF ~~ THEN REPLY @27 DO ~SetGlobal("CbGvAndAkLeave","AR4219",1)~ EXIT
END

IF ~Global("CbTownCouncilWithPlayer","GLOBAL",20)
Global("CbPartyHelpsSoubar","AR4219",1)~ THEN BEGIN 27
  SAY @31 
  IF ~~ THEN GOTO 48
END

IF ~GlobalGT("CbTownCouncilWithPlayer","GLOBAL",20)
GlobalLT("CbTownCouncilWithPlayer","GLOBAL",24)~ THEN BEGIN 28
  SAY @32 
  IF ~~ THEN DO ~SetGlobal("CbVinnyHasDinner","AR4219",5)
SetGlobal("CbPartyHelpsSoubar","AR4219",4)~ EXIT
END

IF ~Global("CbTownCouncilWithPlayer","GLOBAL",24)~ THEN BEGIN 29
  SAY @33 
  IF ~~ THEN REPLY @34 GOTO 49
  IF ~~ THEN REPLY @35 GOTO 51
  IF ~~ THEN REPLY @36 GOTO 53
  IF ~~ THEN REPLY @37 GOTO 54
END

IF ~AreaCheck("AR1100")
Global("CbPartyHelpsSoubar","GLOBAL",1)~ THEN BEGIN 30
  SAY @38 
  IF ~~ THEN REPLY @39 GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @40 
  IF ~~ THEN DO ~RevealAreaOnMap("AR4220")~ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY @41 
  IF ~~ THEN DO ~SetGlobal("CbPartyHelpsSoubar","GLOBAL",2)~ EXIT
END

IF ~AreaCheck("AR1100")
Global("CbPartyHelpsSoubar","GLOBAL",2)~ THEN BEGIN 33
  SAY @42 
  IF ~~ THEN REPLY @43 GOTO 34
  IF ~~ THEN REPLY @44 GOTO 39
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @45 
  IF ~!InParty("SELENCE")~ THEN GOTO 35
  IF ~InParty("SELENCE")~ THEN GOTO 38
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @46 
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY @47 
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY @48 
  IF ~~ THEN DO ~SetGlobal("CbPartyHelpsSoubar","GLOBAL",3)
ActionOverride("CBUHGVCT",EscapeArea())
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 34.1
  SAY @48 
  IF ~~ THEN DO ~SetGlobal("CbPartyHelpsSoubar","GLOBAL",3)
ActionOverride("CBUHGVCT",EscapeArea())
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 33.1
  SAY @49 
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY @50 
  IF ~~ THEN DO ~SetGlobal("CbPartyHelpsSoubar","GLOBAL",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBCARRGE")~ EXIT
END

IF ~AreaCheck("AR4220")
Global("CbPartyHelpsSoubar","AR4220",12)~ THEN BEGIN 41
  SAY @51 
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY @52 
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY @53 
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY @54 
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY @55 
  IF ~~ THEN DO ~SetGlobal("CbPartyHelpsSoubar","AR4220",13)
ActionOverride("CBUHGVCT",EscapeArea())
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 1.0
  SAY @56 
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",3)
ActionOverride("CBUHGVCT",StartDialogNoSet("CBUHAKCT"))~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 20.0
  SAY @57 
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",19)
ActionOverride("CBUHGVCT",StartDialogNoSet(Player1))~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 27.0
  SAY @58 
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",21)
SetGlobal("CbVinnyHasDinner","AR4219",2)
ActionOverride("CBVINNIE",JumpToPoint([947.319]))
ActionOverride("CBVINNIE",StartDialogueNoSet("CBUHGVCT"))~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 29.0
  SAY @59 
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY @60 
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",24)
ActionOverride("CBUHGVCT",StartDialogNoSet(Player1))~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 29.1
  SAY @61 
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY @60 
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",24)
ActionOverride("CBUHGVCT",StartDialogNoSet(Player1))~ EXIT
END

IF ~~ THEN BEGIN 53 // from: 29.2
  SAY @62 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 54 // from: 29.3
  SAY @63 
  IF ~~ THEN EXIT
END
