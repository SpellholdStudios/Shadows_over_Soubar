BEGIN ~CBSBIN75~

IF ~GlobalLT("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyHuntsSpy","GLOBAL",1)
!AreaCheck("AR4304")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @5
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 30.1 8.0 5.0
  SAY @10
  IF ~~ THEN DO ~StartStore("Inn2616",LastTalkedToBy())~ EXIT
END

IF ~Global("CbPartyHuntsSpy","GLOBAL",1)
!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!AreaCheck("AR4304")~ THEN BEGIN 7
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 6
  IF ~Global("CbWinthopHelpsParty","LOCALS",0)~ THEN REPLY @15 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @20
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @21
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @24
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @27
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @32
  IF ~~ THEN DO ~SetGlobal("CbWinthopHelpsParty","LOCALS",1)
SetGlobal("CbPartyInvestigatesLeads","GLOBAL",1)~ EXIT
END

IF ~Global("CbPartyInvestigatesLeads","GLOBAL",2)
Global("CbQuestioningWinthrop","LOCALS",0)
!AreaCheck("AR4304")~ THEN BEGIN 20
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @35
  IF ~!Global("CbSpyIsNotSSC","GLOBAL",1)~ THEN REPLY @36 DO ~SetGlobal("CbSpyIsNotSSC","GLOBAL",1)~ GOTO 22
  IF ~!Global("CbSpyIsNotWinthrop","GLOBAL",1)~ THEN REPLY @37 DO ~SetGlobal("CbSpyIsNotWinthrop","GLOBAL",1)~ GOTO 24
  IF ~!Global("CbSpyIsNotRanger","GLOBAL",1)~ THEN REPLY @38 DO ~SetGlobal("CbSpyIsNotRanger","GLOBAL",1)~ GOTO 26
  IF ~!Global("CbSpyIsNotMayor","GLOBAL",1)~ THEN REPLY @39 DO ~SetGlobal("CbSpyIsNotMayor","GLOBAL",1)~ GOTO 29
  IF ~!Global("CbSpyIsNotCharlie","GLOBAL",1)~ THEN REPLY @40 DO ~SetGlobal("CbSpyIsNotCharlie","GLOBAL",1)~ GOTO 41
  IF ~!Global("CbSpyIsNotCharlie","GLOBAL",1)~ THEN REPLY @41 DO ~SetGlobal("CbSpyIsNotCharlie","GLOBAL",1)~ GOTO 42
  IF ~!Global("CbSpyIsNotFighter","GLOBAL",1)~ THEN REPLY @42 DO ~SetGlobal("CbSpyIsNotFighter","GLOBAL",1)~ GOTO 43
  IF ~!Global("CbSpyIsNotMiller","GLOBAL",1)~ THEN REPLY @43 DO ~SetGlobal("CbSpyIsNotMiller","GLOBAL",1)~ GOTO 44
  IF ~~ THEN REPLY @44 EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @45
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @46
  IF ~~ THEN DO ~SetGlobal("CbQuestioningWinthrop","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.1
  SAY @47
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @48
  IF ~~ THEN DO ~SetGlobal("CbQuestioningWinthrop","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 21.2
  SAY @49
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @50
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY @51
  IF ~~ THEN REPLY @52 GOTO 47
END

IF ~~ THEN BEGIN 29 // from: 21.3
  SAY @53
  IF ~~ THEN DO ~SetGlobal("CbQuestioningWinthrop","LOCALS",1)~ EXIT
END

IF ~GlobalGT("CbPartyInvestigatesLeads","GLOBAL",2)
!AreaCheck("AR4304")~ THEN BEGIN 30 // from:
  SAY @54
  IF ~!Global("CbSpyIs_Winthrop","GLOBAL",1)~ THEN REPLY @55 EXIT
  IF ~!Global("CbSpyIs_Winthrop","GLOBAL",1)~ THEN REPLY @14 GOTO 6
  IF ~Global("CbSpyIs_Winthrop","GLOBAL",1)~ THEN REPLY @56 GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.2
  SAY @57
  IF ~~ THEN REPLY @58 GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY @59
  IF ~~ THEN REPLY @60 GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY @61
  IF ~~ THEN REPLY @62 GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @63
  IF ~~ THEN REPLY @64 GOTO 35
  IF ~~ THEN REPLY @65 GOTO 40
  IF ~~ THEN REPLY @66 GOTO 39
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @67
  IF ~~ THEN REPLY @65 GOTO 36
  IF ~~ THEN REPLY @66 GOTO 38
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY @68
  IF ~~ THEN REPLY @66 GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY @69
  IF ~~ THEN DO ~SetGlobal("CbPartyInvestigatesLeads","GLOBAL",5)
SetGlobal("CbSpyIs_Winthrop","GLOBAL",2)
SetGlobal("CbWinthropJailed","LOCALS",1)
EraseJournalEntry(@50100)
EraseJournalEntry(@50101)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBWINTJL")~
SOLVED_JOURNAL @50120 EXIT
END

IF ~~ THEN BEGIN 38 // from: 35.1
  SAY @70
  IF ~~ THEN REPLY @71 GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 40.1 40.0 38.0 34.2
  SAY @72
  IF ~~ THEN DO ~SetGlobal("CbPartyInvestigatesLeads","GLOBAL",5)
SetGlobal("CbSpyIs_Winthrop","GLOBAL",2)
SetGlobal("CbWintrhopGuilty","LOCALS",1)
EraseJournalEntry(@50100)
EraseJournalEntry(@50101)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBWINENM")~
SOLVED_JOURNAL @50121 EXIT
END

IF ~~ THEN BEGIN 40 // from: 34.1
  SAY @73
  IF ~~ THEN REPLY @64 GOTO 39
  IF ~~ THEN REPLY @66 GOTO 39
END

IF ~~ THEN BEGIN 41 // from: 21.4
  SAY @74
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from: 21.5
  SAY @75
  IF ~~ THEN DO ~SetGlobal("CbQuestioningWinthrop","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 21.6
  SAY @76
  IF ~~ THEN DO ~SetGlobal("CbQuestioningWinthrop","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 21.7
  SAY @77
  IF ~~ THEN DO ~SetGlobal("CbQuestioningWinthrop","LOCALS",1)~ EXIT
END

IF ~AreaCheck("AR4287")~ THEN BEGIN 45
  SAY @78
  IF ~~ THEN EXIT
END

IF ~AreaCheck("AR4304")~ THEN BEGIN 46
  SAY @79
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 47 // from: 28.0
  SAY @80
  IF ~~ THEN DO ~SetGlobal("CbQuestioningWinthrop","LOCALS",1)~ EXIT
END
