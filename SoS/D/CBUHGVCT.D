BEGIN ~CBUHGVCT~

IF ~Global("CbTownCouncilWithPlayer","GLOBAL",1)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",2)
ActionOverride("CBUHAKCT",StartDialogNoSet("CBUHGVCT")
~ EXIT
END

IF ~Global("CbTownCouncilWithPlayer","GLOBAL",3)~ THEN BEGIN 1
  SAY @1 
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",4)
SetGlobal("CbSoubarContactsInitiateDialog","AR1105",8)~ EXIT
END

IF ~Global("CbTownCouncilWithPlayer","GLOBAL",4)~ THEN BEGIN 2
  SAY @2 
  IF ~~ THEN GOTO 47
END

IF ~Global("CbTownCouncilWithPlayer","GLOBAL",6)~ THEN BEGIN 7
  SAY @3 
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @4 
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",7)
ActionOverride("CBVINNIE",StartDialogNoSet("CBWILLET")~ EXIT
END

IF ~AreaCheck("AR4219")
Global("CbTownCouncilWithPlayer","GLOBAL",13)~ THEN BEGIN 9
  SAY @5 
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @6 
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",14)
ActionOverride("CBUHAKCT",StartDialogNoSet(Player1))~ EXIT
END

IF ~Global("CbTownCouncilWithPlayer","GLOBAL",16)~ THEN BEGIN 11
  SAY @7 
  IF ~~ THEN REPLY @8 GOTO 12
  IF ~~ THEN REPLY @9 GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @10 
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",17)
ActionOverride("CBVINNIE",StartDialogNoSet("CBUHGVCT")~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY @11 
  IF ~~ THEN REPLY @12 GOTO 14
  IF ~~ THEN REPLY @13 GOTO 14
  IF ~~ THEN REPLY @14 GOTO 14
  IF ~~ THEN REPLY @15 GOTO 14
  IF ~~ THEN REPLY @16 GOTO 15
  IF ~~ THEN REPLY @17 GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.3 13.2 13.1 13.0
  SAY @18 
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",17)
ActionOverride("CBVINNIE",StartDialogNoSet("CBUHGVCT")~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.4
  SAY @19 
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",17)
ActionOverride("CBVINNIE",StartDialogNoSet("CBUHGVCT")~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.5
  SAY @20 
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",17)
ActionOverride("CBVINNIE",StartDialogNoSet("CBUHGVCT")~ EXIT
END

IF ~Global("CbTownCouncilWithPlayer","GLOBAL",19)~ THEN BEGIN 17
  SAY @21 
  IF ~~ THEN REPLY @22 GOTO 18
  IF ~~ THEN REPLY @23 DO ~SetGlobal("CbSoubarContactsInitiateDialog","AR4219",42)
SetGlobal("CbPartyWantsMoneyFromSoubar","AR4219",1)
ActionOverride("CBUHAKCT",StartDialogNoSet(Player1))~ EXIT
  IF ~~ THEN REPLY @24 GOTO 22
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @25 
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @26 
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @27 
  IF ~~ THEN REPLY @28 DO ~SetGlobal("CbSoubarContactsInitiateDialog","AR4219",42)
SetGlobal("CbGvAndAkLeave","AR4219",2)
ActionOverride("CBUHAKCT",StartDialogNoSet(Player1))
~ EXIT
  IF ~~ THEN REPLY @29 GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY @30 
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",20)
SetGlobal("CbPartyHelpsSoubar","AR4219",1)
ActionOverride("CBUHAKCT",StartDialogNoSet(Player1))~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.2
  SAY @31 
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @32 
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",20)
SetGlobal("CbPartyHelpsSoubar","AR4219",1)
ActionOverride("CBUHAKCT",StartDialogNoSet(Player1))~ EXIT
END

IF ~Global("CbTownCouncilWithPlayer","GLOBAL",22)
AreaCheck("AR4219")~ THEN BEGIN 24
  SAY @33 
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",23)~ EXIT
END

IF ~Global("CbTownCouncilWithPlayer","GLOBAL",23)~ THEN BEGIN 25
  SAY @34 
  IF ~~ THEN REPLY @35 GOTO 26
  IF ~~ THEN REPLY @36 GOTO 27
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @37 
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",24)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY @38 
  IF ~~ THEN EXIT
END

IF ~Global("CbTownCouncilWithPlayer","GLOBAL",24)
AreaCheck("AR4219")~ THEN BEGIN 28
  SAY @39 
  IF ~NumInParty(1)~ THEN GOTO 53
  IF ~NumInPartyGT(1)~ THEN GOTO 55
END

IF ~AreaCheck("AR1100")
Global("CbPartyHelpsSoubar","GLOBAL",1)~ THEN BEGIN 30
  SAY @40 
  IF ~~ THEN REPLY @41 GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @42 
  IF ~~ THEN DO ~RevealAreaOnMap("AR4220")~ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY @43 
  IF ~~ THEN DO ~SetGlobal("CbPartyHelpsSoubar","GLOBAL",2)~ EXIT
END

IF ~AreaCheck("AR1100")
Global("CbPartyHelpsSoubar","GLOBAL",2)~ THEN BEGIN 33
  SAY @44 
  IF ~~ THEN REPLY @45 GOTO 34
  IF ~~ THEN REPLY @46 GOTO 39
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @47 
  IF ~!InParty("SELENCE")~ THEN GOTO 35
  IF ~InParty("SELENCE")~ THEN GOTO 38
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @48 
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY @49 
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY @50 
  IF ~~ THEN DO ~SetGlobal("CbPartyHelpsSoubar","GLOBAL",3)
ActionOverride("CBUHAKCT",EscapeArea())
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 34.1
  SAY @50 
  IF ~~ THEN DO ~SetGlobal("CbPartyHelpsSoubar","GLOBAL",3)
ActionOverride("CBUHAKCT",EscapeArea())
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 33.1
  SAY @51 
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY @52 
  IF ~~ THEN DO ~SetGlobal("CbPartyHelpsSoubar","GLOBAL",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBCARRGE")~ EXIT
END

IF ~Global("CbSoubarContactsInitiateDialog","AR1105",10)
Global("CbPlayerTurnedDownGaius","LOCALS",1)~ THEN BEGIN 41
  SAY @53 
  IF ~~ THEN REPLY @54 GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY @55 
  IF ~~ THEN REPLY @56 GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY @57 
  IF ~~ THEN DO ~SetGlobal("CbPlayerTurnedDownGaius","LOCALS",2)~ EXIT
END

IF ~GlobalLT("CbSoubarContactsInitiateDialog","AR1105",12)
Global("CbPlayerTurnedDownGaius","LOCALS",2)~ THEN BEGIN 44
  SAY @58 
  IF ~~ THEN REPLY @59 GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 52.0 44.0
  SAY @60 
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY @61 
  IF ~~ THEN DO ~SetGlobal("CbSoubarContactsInitiateDialog","AR1105",11)~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 2.0
  SAY @62 
  IF ~~ THEN REPLY @63 DO ~SetGlobal("CbSoubarContactsInitiateDialog","AR1105",10)~ GOTO 48
  IF ~~ THEN REPLY @64 DO ~SetGlobal("CbSoubarContactsInitiateDialog","AR1105",10)~ GOTO 50
  IF ~~ THEN REPLY @65 DO ~SetGlobal("CbSoubarContactsInitiateDialog","AR1105",10)~ GOTO 51
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY @66 
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY @67 
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",5)
SetGlobal("CbSoubarContactsInitiateDialog","AR1105",11)~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.1
  SAY @68 
  IF ~~ THEN DO ~SetGlobal("CbPlayerTurnedDownGaius","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 47.2
  SAY @69 
  IF ~~ THEN DO ~SetGlobal("CbPlayerTurnedDownGaius","LOCALS",2)~ EXIT
END

IF ~GlobalLT("CbSoubarContactsInitiateDialog","AR1105",12)~ THEN BEGIN 52
  SAY @58 
  IF ~~ THEN REPLY @59 GOTO 45
END

IF ~~ THEN BEGIN 53 // from: 28.0
  SAY @70 
  IF ~~ THEN REPLY @71 GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 55.0 53.0
  SAY @72 
  IF ~~ THEN DO ~SetGlobal("CbTownCouncilWithPlayer","GLOBAL",25)
SetGlobal("CbPartyHelpsSoubar","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBUMARSP")~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 28.1
  SAY @73 
  IF ~~ THEN REPLY @74 GOTO 54
END
