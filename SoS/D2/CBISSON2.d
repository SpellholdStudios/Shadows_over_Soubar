BEGIN ~CBISSON2~

IF ~!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyInvestigatesLeads","GLOBAL",4)
!AreaCheck("AR4304")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1 
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyInvestigatesLeads","GLOBAL",2)
!AreaCheck("AR4304")~ THEN BEGIN 2
  SAY @2 
  IF ~Global("CbQuestionedMiller","LOCALS",0)~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @5 
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7 
  IF ~!Global("CbSpyIsNotCharlie","GLOBAL",1)~ THEN REPLY @8 DO ~SetGlobal("CbSpyIsNotCharlie","GLOBAL",1)~ GOTO 5
  IF ~!Global("CbSpyIsNotRanger","GLOBAL",1)~ THEN REPLY @9 DO ~SetGlobal("CbSpyIsNotRanger","GLOBAL",1)~ GOTO 6
  IF ~!Global("CbSpyIsNotMayor","GLOBAL",1)~ THEN REPLY @10 DO ~SetGlobal("CbSpyIsNotMayor","GLOBAL",1)~ GOTO 8
  IF ~!Global("CbSpyIsNotMiller","GLOBAL",1)~ THEN REPLY @11 DO ~SetGlobal("CbSpyIsNotMiller","GLOBAL",1)~ GOTO 10
  IF ~!Global("CbSpyIsNotWinthrop","GLOBAL",1)~ THEN REPLY @12 DO ~SetGlobal("CbSpyIsNotWinthrop","GLOBAL",1)~ GOTO 14
  IF ~!Global("CbSpyIsNotSSC","GLOBAL",1)~ THEN REPLY @13 DO ~SetGlobal("CbSpyIsNotSSC","GLOBAL",1)~ GOTO 15
  IF ~!Global("CbSpyIsNotMayor","GLOBAL",1)~ THEN REPLY @14 DO ~SetGlobal("CbSpyIsNotMayor","GLOBAL",1)~ GOTO 21
  IF ~!Global("CbSpyIsNotFighter","GLOBAL",1)~ THEN REPLY @15 DO ~SetGlobal("CbSpyIsNotFighter","GLOBAL",1)~ GOTO 23
  IF ~~ THEN REPLY @16 GOTO 24
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @17 
  IF ~~ THEN DO ~SetGlobal("CbQuestionedMiller","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @18 
  IF ~~ THEN DO ~SetGlobal("CbQuestionedMiller","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY @19 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY @20 
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @21 
  IF ~~ THEN DO ~SetGlobal("CbQuestionedMiller","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.3
  SAY @22 
  IF ~~ THEN DO ~SetGlobal("CbQuestionedMiller","LOCALS",1)~ EXIT
END

IF ~Global("CbPartyInvestigatesLeads","GLOBAL",4)
Global("CbSpyIs_Miller","GLOBAL",1)
!AreaCheck("AR4304")~ THEN BEGIN 11
  SAY @23 
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @24 
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @25 
  IF ~~ THEN DO ~SetGlobal("CbPartyInvestigatesLeads","GLOBAL",5)
SetGlobal("CbSpyIs_Miller","GLOBAL",2)
SetGlobal("CbMillerisGuilty","LOCALS",1)
EraseJournalEntry(@50100)
EraseJournalEntry(@50101)
Enemy()
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBMILENM")~
 SOLVED_JOURNAL @50125 EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.4
  SAY @26 
  IF ~~ THEN DO ~SetGlobal("CbQuestionedMiller","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 4.5
  SAY @27 
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @28 
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @29 
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @30 
  IF ~~ THEN REPLY @31 GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @32 
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @33 
  IF ~~ THEN DO ~SetGlobal("CbQuestionedMiller","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 4.6
  SAY @34 
  IF ~~ THEN REPLY @35 GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @36 
  IF ~~ THEN DO ~SetGlobal("CbQuestionedMiller","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 4.7
  SAY @37 
  IF ~~ THEN DO ~SetGlobal("CbQuestionedMiller","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 4.8
  SAY @38 
  IF ~~ THEN EXIT
END

IF ~AreaCheck("AR4304")~ THEN BEGIN 25
  SAY @39 
  IF ~~ THEN EXIT
END
