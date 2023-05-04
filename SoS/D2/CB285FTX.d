BEGIN ~CB285FTX~

IF ~RandomNum(10,1)
!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyInvestigatesLeads","GLOBAL",4)
!AreaCheck("AR4287")
!AreaCheck("AR4304")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~IncrementGlobal("CbFightersAreSpy","GLOBAL",1)~ EXIT
END

IF ~RandomNum(10,2)
!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyInvestigatesLeads","GLOBAL",4)
!AreaCheck("AR4287")
!AreaCheck("AR4304")
~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~IncrementGlobal("CbFightersAreSpy","GLOBAL",1)~ EXIT
END

IF ~RandomNum(10,3)
!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyInvestigatesLeads","GLOBAL",4)
!AreaCheck("AR4287")
!AreaCheck("AR4304")
~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~IncrementGlobal("CbFightersAreSpy","GLOBAL",1)~ EXIT
END

IF ~RandomNum(10,4)
!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyInvestigatesLeads","GLOBAL",4)
!AreaCheck("AR4287")
!AreaCheck("AR4304")~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~IncrementGlobal("CbFightersAreSpy","GLOBAL",1)~ EXIT
END

IF ~RandomNum(10,5)
!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyInvestigatesLeads","GLOBAL",4)
!AreaCheck("AR4287")
!AreaCheck("AR4304")~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN DO ~IncrementGlobal("CbFightersAreSpy","GLOBAL",1)~ EXIT
END

IF ~RandomNum(10,6)
!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyInvestigatesLeads","GLOBAL",4)
!AreaCheck("AR4287")
!AreaCheck("AR4304")
~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN DO ~IncrementGlobal("CbFightersAreSpy","GLOBAL",1)~ EXIT
END

IF ~RandomNum(10,7)
!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyInvestigatesLeads","GLOBAL",4)
!AreaCheck("AR4287")
!AreaCheck("AR4304")
~ THEN BEGIN 6
  SAY @6
  IF ~~ THEN DO ~IncrementGlobal("CbFightersAreSpy","GLOBAL",1)~ EXIT
END

IF ~RandomNum(10,8)
!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyInvestigatesLeads","GLOBAL",4)
!AreaCheck("AR4287")
!AreaCheck("AR4304")
~ THEN BEGIN 7
  SAY @7
  IF ~~ THEN DO ~IncrementGlobal("CbFightersAreSpy","GLOBAL",1)~ EXIT
END

IF ~RandomNum(10,9)
!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyInvestigatesLeads","GLOBAL",4)
!AreaCheck("AR4287")
!AreaCheck("AR4304")
~ THEN BEGIN 8
  SAY @8
  IF ~~ THEN DO ~IncrementGlobal("CbFightersAreSpy","GLOBAL",1)~ EXIT
END

IF ~RandomNum(10,10)
!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyInvestigatesLeads","GLOBAL",4)
!AreaCheck("AR4287")
!AreaCheck("AR4304")~ THEN BEGIN 9
  SAY @9
  IF ~~ THEN DO ~IncrementGlobal("CbFightersAreSpy","GLOBAL",1)~ EXIT
END

IF ~Global("CbPartyInvestigatesLeads","GLOBAL",2)
!GlobalGT("CbInvestigatedFighters","AR4285",3)
!AreaCheck("AR4287")
!AreaCheck("AR4304")~ THEN BEGIN 10
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 11
  IF ~~ THEN REPLY @12 GOTO 12
  IF ~~ THEN REPLY @13 GOTO 13
  IF ~~ THEN REPLY @14 GOTO 14
  IF ~~ THEN REPLY @15 GOTO 15
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @16
  IF ~~ THEN DO ~IncrementGlobal("CbInvestigatedFighters","AR4285",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY @17
  IF ~~ THEN DO ~IncrementGlobal("CbInvestigatedFighters","AR4285",1)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY @18
  IF ~~ THEN DO ~IncrementGlobal("CbInvestigatedFighters","AR4285",1)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY @19
  IF ~~ THEN DO ~IncrementGlobal("CbInvestigatedFighters","AR4285",1)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.4
  SAY @20
  IF ~~ THEN DO ~IncrementGlobal("CbInvestigatedFighters","AR4285",1)~ EXIT
END

IF ~Global("CbPartyInvestigatesLeads","GLOBAL",2)
Global("CbInvestigatedFighters","AR4285",4)
!AreaCheck("AR4287")
!AreaCheck("AR4304")~ THEN BEGIN 16
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @23
  IF ~!Global("CbSpyIsNotSSC","GLOBAL",1)~ THEN REPLY @24 DO ~SetGlobal("CbSpyIsNotSSC","GLOBAL",1)~ GOTO 18
  IF ~!Global("CbSpyIsNotRanger","GLOBAL",1)~ THEN REPLY @25 DO ~SetGlobal("CbSpyIsNotRanger","GLOBAL",1)~ GOTO 19
  IF ~!Global("CbSpyIsNotMayor","GLOBAL",1)~ THEN REPLY @26 DO ~SetGlobal("CbSpyIsNotMayor","GLOBAL",1)~ GOTO 20
  IF ~!Global("CbSpyIsNotWinthrop","GLOBAL",1)~ THEN REPLY @27 DO ~SetGlobal("CbSpyIsNotWinthrop","GLOBAL",1)~ GOTO 26
  IF ~!Global("CbSpyIsNotCharlie","GLOBAL",1)~ THEN REPLY @28 DO ~SetGlobal("CbSpyIsNotCharlie","GLOBAL",1)~ GOTO 27
  IF ~!Global("CbSpyIsNotFighter","GLOBAL",1)~ THEN REPLY @29 DO ~SetGlobal("CbSpyIsNotFighter","GLOBAL",1)~ GOTO 28
  IF ~!Global("CbSpyIsNotMiller","GLOBAL",1)~ THEN REPLY @30 DO ~SetGlobal("CbSpyIsNotMiller","GLOBAL",1)~ GOTO 29
  IF ~~ THEN REPLY @31 EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @32
  IF ~~ THEN REPLY @33 DO ~SetGlobal("CbInvestigatedFighters","AR4285",5)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY @34
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 20 // from: 17.2
  SAY @35
  IF ~~ THEN REPLY @36 DO ~SetGlobal("CbInvestigatedFighters","AR4285",5)~ EXIT
END

IF ~Global("CbInvestigatedFighters","AR4285",5)
!AreaCheck("AR4287")
!AreaCheck("AR4304")~ THEN BEGIN 21
  SAY @37
  IF ~Global("CbPartyInvestigatesLeads","GLOBAL",4)
Global("CbSpyIs_Fighter","GLOBAL",1)
!AreaCheck("AR4287")~ THEN REPLY @38 GOTO 22
  IF ~GlobalGT("CbPartyInvestigatesLeads","GLOBAL",4)
!Global("CbSpyIs_Fighter","GLOBAL",1)
!AreaCheck("AR4287")~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 24
  IF ~~ THEN REPLY @43 GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @44
  IF ~~ THEN DO ~SetGlobal("CbPartyInvestigatesLeads","GLOBAL",5)
SetGlobal("CbSpyIs_Fighter","GLOBAL",2)
SetGlobal("CbFightersGuilty","LOCALS",1)
EraseJournalEntry(@50100)
EraseJournalEntry(@50101)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBFGTENM")~ 
SOLVED_JOURNAL @50122 EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY @45
  IF ~~ THEN DO ~SetGlobal("CbPartyInvestigatesLeads","GLOBAL",5)
SetGlobal("CbSpyIs_Fighter","GLOBAL",2)
SetGlobal("CbFightersNotGuilty","LOCALS",1)
EraseJournalEntry(@50100)
EraseJournalEntry(@50101)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBFIGHJL")~ 
SOLVED_JOURNAL @50123 EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.3
  SAY @46
  IF ~~ THEN DO ~SetGlobal("CbInvestigatedFighters","AR4285",5)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.4
  SAY @47
  IF ~~ THEN DO ~SetGlobal("CbInvestigatedFighters","AR4285",5)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 17.5
  SAY @48
  IF ~~ THEN DO ~SetGlobal("CbInvestigatedFighters","AR4285",5)~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 17.6
  SAY @49
  IF ~~ THEN GOTO 33
END

IF ~AreaCheck("AR4287")
!AreaCheck("AR4304")~ THEN BEGIN 30
  SAY @50
  IF ~~ THEN EXIT
END

IF ~AreaCheck("AR4304")~ THEN BEGIN 31
  SAY @51
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32 // from: 19.0
  SAY @52
  IF ~~ THEN REPLY @53 DO ~SetGlobal("CbInvestigatedFighters","AR4285",5)~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 29.0
  SAY @54
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @55
  IF ~~ THEN REPLY @56 DO ~SetGlobal("CbInvestigatedFighters","AR4285",5)~ EXIT
END
