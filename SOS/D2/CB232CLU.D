BEGIN ~CB232CLU~

IF ~AreaCheck("AR4232")
Global("CbPartyFoundCharlie","AR4232",0)
!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyInvestigatesLeads","GLOBAL",4)
!AreaCheck("AR4304")
~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 32
  IF ~~ THEN REPLY @3 GOTO 21
END

IF ~~ THEN BEGIN 1 // from: 23.0 0.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 24
  IF ~~ THEN REPLY @6 GOTO 27
  IF ~~ THEN REPLY @7 GOTO 27
  IF ~~ THEN REPLY @8 GOTO 34
  IF ~~ THEN REPLY @9 GOTO 34
END

IF ~AreaCheck("AR4286")
RandomNum(3,1)
!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyInvestigatesLeads","GLOBAL",4)
!AreaCheck("AR4304")
~ THEN BEGIN 2
  SAY @10
  IF ~~ THEN EXIT
END

IF ~AreaCheck("AR4286")
RandomNum(3,2)
!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyInvestigatesLeads","GLOBAL",4)
!AreaCheck("AR4304")
~ THEN BEGIN 3
  SAY @11
  IF ~~ THEN EXIT
END

IF ~AreaCheck("AR4286")
RandomNum(3,3)
!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyInvestigatesLeads","GLOBAL",4)
!AreaCheck("AR4304")
~ THEN BEGIN 4
  SAY @12
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyInvestigatesLeads","GLOBAL",2)
Global("CbQuestioningCharlie","LOCALS",0)
!AreaCheck("AR4304")
~ THEN BEGIN 5
  SAY @13
  IF ~!Global("CbSpyIsNotSSC","GLOBAL",1)~ THEN REPLY @14 DO ~SetGlobal("CbSpyIsNotSSC","GLOBAL",1)~ GOTO 6
  IF ~!Global("CbSpyIsNotCharlie","GLOBAL",1)~ THEN REPLY @15 DO ~SetGlobal("CbSpyIsNotCharlie","GLOBAL",1)~ GOTO 9
  IF ~Global("CbSpyIsNotMayor","GLOBAL",1)~ THEN REPLY @16 DO ~SetGlobal("CbSpyIsNotMayor","GLOBAL",1)~ GOTO 11
  IF ~!Global("CbSpyIsNotWinthrop","GLOBAL",1)~ THEN REPLY @17 DO ~SetGlobal("CbSpyIsNotWinthrop","GLOBAL",1)~ GOTO 15
  IF ~!Global("CbSpyIsNotFighter","GLOBAL",1)~ THEN REPLY @18 DO ~SetGlobal("CbSpyIsNotFighter","GLOBAL",1)~ GOTO 17
  IF ~!Global("CbSpyIsNotMiller","GLOBAL",1)~ THEN REPLY @19 DO ~SetGlobal("CbSpyIsNotMiller","GLOBAL",1)~ GOTO 18
  IF ~!Global("CbSpyIsNotRanger","GLOBAL",1)~ THEN REPLY @20 DO ~SetGlobal("CbSpyIsNotRanger","GLOBAL",1)~ GOTO 19
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @25
  IF ~~ THEN DO ~SetGlobal("CbQuestioningCharlie","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @28
  IF ~~ THEN DO ~SetGlobal("CbQuestioningCharlie","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY @29
  IF ~~ THEN REPLY @30 DO ~SetGlobal("CbQuestioningCharlie","LOCALS",1)~ EXIT
END

IF ~Global("CbPartyInvestigatesLeads","GLOBAL",4)
Global("CbSpyIs_Charlie","GLOBAL",1)
!AreaCheck("AR4304")
~ THEN BEGIN 12 // from:
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @35
  IF ~~ THEN DO ~SetGlobal("CbPartyInvestigatesLeads","GLOBAL",5)
SetGlobal("CbSpyIs_Charlie","GLOBAL",2)
SetGlobal("CbCharlieGuilty","LOCALS",1)
EraseJournalEntry(@50100)
EraseJournalEntry(@50101)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBCRLENM")~ 
SOLVED_JOURNAL @50200 EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.3
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @38
  IF ~~ THEN DO ~SetGlobal("CbQuestioningCharlie","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 5.4
  SAY @39
  IF ~~ THEN DO ~SetGlobal("CbQuestioningCharlie","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 5.5
  SAY @40
  IF ~~ THEN DO ~SetGlobal("CbQuestioningCharlie","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 5.6
  SAY @41
  IF ~~ THEN DO ~SetGlobal("CbQuestioningCharlie","LOCALS",1)~ EXIT
END

IF ~AreaCheck("AR4304")
~ THEN BEGIN 20 // from:
  SAY @42
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 0.2
  SAY @43
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @44
  IF ~~ THEN REPLY @45 GOTO 23
  IF ~~ THEN REPLY @46 GOTO 23
  IF ~~ THEN REPLY @47 GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.2 22.1 22.0
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 1
END

IF ~~ THEN BEGIN 24 // from: 1.0
  SAY @50
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @44
  IF ~~ THEN REPLY @45 GOTO 26
  IF ~~ THEN REPLY @47 GOTO 26
  IF ~~ THEN REPLY @46 GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.2 25.1 25.0
  SAY @48
  IF ~~ THEN REPLY @6 GOTO 27
  IF ~~ THEN REPLY @7 GOTO 37
  IF ~~ THEN REPLY @8 GOTO 28
  IF ~~ THEN REPLY @9 GOTO 34
END

IF ~~ THEN BEGIN 27 // from: 26.0 1.2 1.1
  SAY @51
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 26.2
  SAY @52
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 29 // from: 37.0 27.0
  SAY @53
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY @54
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @55
  IF ~~ THEN REPLY @56 GOTO 32
  IF ~~ THEN REPLY @57 GOTO 33
  IF ~~ THEN REPLY @58 GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 36.1 31.0 0.1
  SAY @59
  IF ~~ THEN DO ~EraseJournalEntry(@50102)
SetGlobal("CbPartyFoundCharlie","AR4232",1)
MoveBetweenAreas("AR4286",[414.374],1)~ SOLVED_JOURNAL @50202 EXIT
END

IF ~~ THEN BEGIN 33 // from: 36.0 31.1
  SAY @60
  IF ~~ THEN DO ~ReputationInc(1)
EraseJournalEntry(@50102)
SetGlobal("CbPartyFoundCharlie","AR4232",1)
SetGlobal("CbCharlieFollows","AR4232",1)~ SOLVED_JOURNAL @50202 EXIT
END

IF ~~ THEN BEGIN 34 // from: 31.2 28.0 26.3 1.4 1.3
  SAY @61
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @62
  IF ~~ THEN REPLY @63 GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY @64
  IF ~~ THEN REPLY @65 GOTO 33
  IF ~~ THEN REPLY @66 GOTO 32
END

IF ~~ THEN BEGIN 37 // from: 26.1
  SAY @67
  IF ~~ THEN GOTO 29
END
