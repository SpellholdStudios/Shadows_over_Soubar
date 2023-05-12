BEGIN ~CBCHRRAN~

IF ~!Race(LastTalkedToBy,ELF)
OR(2)
!Gender(LastTalkedToBy,FEMALE)
!Class(LastTalkedToBy,RANGER)
!Global("CbPartyInvestigatesLeads","GLOBAL",1)
!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyInvestigatesLeads","GLOBAL",4)
!AreaCheck("AR4304")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 EXIT
  IF ~~ THEN REPLY @3 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @11
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~Race(LastTalkedToBy,ELF)
Gender(LastTalkedToBy,FEMALE)
Class(LastTalkedToBy,RANGER)
Global("CbCharlotteSpokeToRanger","LOCALS",0)
!Global("CbPartyInvestigatesLeads","GLOBAL",1)
!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyInvestigatesLeads","GLOBAL",4)
!AreaCheck("AR4304")~ THEN BEGIN 7
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @16
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @19
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 15.0 11.0
  SAY @20
  IF ~~ THEN REPLY @21 DO ~SetGlobal("CbCharlotteII","GLOBAL",1)~ GOTO 13
  IF ~~ THEN REPLY @22 DO ~SetGlobal("CbCharlotteII","GLOBAL",0)~ GOTO 13
  IF ~~ THEN REPLY @23 DO ~SetGlobal("CbCharlotteLion","GLOBAL",1)~ GOTO 13
  IF ~~ THEN REPLY @24 DO ~SetGlobal("CbCharlotteLion","GLOBAL",0)~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.3 12.2 12.1 12.0
  SAY @25
  IF ~~ THEN DO ~SetGlobal("CbCharlotteSpokeToRanger","LOCALS",1)~ EXIT
END

IF ~Race(LastTalkedToBy,ELF)
Gender(LastTalkedToBy,FEMALE)
Class(LastTalkedToBy,RANGER)
Global("CbCharlotteSpokeToRanger","LOCALS",1)
!Global("CbPartyInvestigatesLeads","GLOBAL",1)
!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyInvestigatesLeads","GLOBAL",4)
!AreaCheck("AR4304")~ THEN BEGIN 14
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 15
  IF ~~ THEN REPLY @28 GOTO 53
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @29
  IF ~~ THEN GOTO 12
END

IF ~Global("CbPartyInvestigatesLeads","GLOBAL",1)
!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyInvestigatesLeads","GLOBAL",4)
!AreaCheck("AR4304")~ THEN BEGIN 16
  SAY @30
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @31
  IF ~!InParty("Imoen2")~ THEN REPLY @32 GOTO 18
  IF ~InParty("Imoen2")~ THEN REPLY @33 GOTO 18
  IF ~~ THEN REPLY @34 GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.2 17.1 17.0
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 19
  IF ~~ THEN REPLY @37 GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1 18.0
  SAY @38
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @43
  IF ~~ THEN REPLY @44 GOTO 23
  IF ~~ THEN REPLY @45 GOTO 48
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @46
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @47
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @48
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @49
  IF ~~ THEN REPLY @50 GOTO 27
  IF ~~ THEN REPLY @51 GOTO 41
  IF ~~ THEN REPLY @52 GOTO 42
  IF ~~ THEN REPLY @53 GOTO 43
  IF ~~ THEN REPLY @54 GOTO 44
  IF ~~ THEN REPLY @55 GOTO 45
  IF ~GlobalLT("CbPartyTrainedOneNewGuard","GLOBAL",10)~ THEN REPLY @56 GOTO 46
  IF ~~ THEN REPLY @57 GOTO 47
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @58
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 54.0 46.0 45.0 43.0 42.0 41.0 27.0
  SAY @59
  IF ~~ THEN REPLY @53 GOTO 29
  IF ~~ THEN REPLY @55 GOTO 38
  IF ~~ THEN REPLY @56 GOTO 39
  IF ~~ THEN REPLY @60 GOTO 40
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY @61
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 47.0 40.0 39.0 38.0 29.0
  SAY @62
  IF ~!Global("CbSpyIsNotSSC","GLOBAL",1)~ THEN REPLY @63 DO ~SetGlobal("CbSpyIsNotSSC","GLOBAL",1)~ GOTO 31
  IF ~!Global("CbSpyIsNotWinthrop","GLOBAL",1)~ THEN REPLY @64 DO ~SetGlobal("CbSpyIsNotWinthrop","GLOBAL",1)~ GOTO 32
  IF ~!Global("CbSpyIsNotCharlie","GLOBAL",1)~ THEN REPLY @65 DO ~SetGlobal("CbSpyIsNotCharlie","GLOBAL",1)~ GOTO 33
  IF ~!Global("CbSpyIsNotFighter","GLOBAL",1)~ THEN REPLY @66 DO ~SetGlobal("CbSpyIsNotFighter","GLOBAL",1)~ GOTO 34
  IF ~!Global("CbSpyIsNotMiller","GLOBAL",1)~ THEN REPLY @67 DO ~SetGlobal("CbSpyIsNotMiller","GLOBAL",1)~ GOTO 35
  IF ~!Global("CbSpyIsNotRanger","GLOBAL",1)~ THEN REPLY @68 DO ~SetGlobal("CbSpyIsNotRanger","GLOBAL",1)~ GOTO 36
  IF ~!Global("CbSpyIsNotMayor","GLOBAL",1)~ THEN REPLY @69 DO ~SetGlobal("CbSpyIsNotMayor","GLOBAL",1)~ GOTO 37
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @70
  IF ~~ THEN DO   ~SetGlobal("CbPartyInvestigatesLeads","GLOBAL",2)~ 
  UNSOLVED_JOURNAL @50101 EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY @71
  IF ~~ THEN DO ~SetGlobal("CbPartyInvestigatesLeads","GLOBAL",2)~
UNSOLVED_JOURNAL @50101 EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY @72
  IF ~~ THEN DO   ~SetGlobal("CbPartyInvestigatesLeads","GLOBAL",2)~
 UNSOLVED_JOURNAL @50101 EXIT
END

IF ~~ THEN BEGIN 34 // from: 30.3
  SAY @73
  IF ~~ THEN DO   ~SetGlobal("CbPartyInvestigatesLeads","GLOBAL",2)~
  UNSOLVED_JOURNAL @50101 EXIT
END

IF ~~ THEN BEGIN 35 // from: 30.4
  SAY @74
  IF ~~ THEN DO   ~SetGlobal("CbPartyInvestigatesLeads","GLOBAL",2)~ 
 UNSOLVED_JOURNAL @50101 EXIT
END

IF ~~ THEN BEGIN 36 // from: 30.5
  SAY @75
  IF ~~ THEN DO   ~SetGlobal("CbPartyInvestigatesLeads","GLOBAL",2)~
UNSOLVED_JOURNAL @50101 EXIT
END

IF ~~ THEN BEGIN 37 // from: 30.6
  SAY @76
  IF ~~ THEN DO  ~SetGlobal("CbPartyInvestigatesLeads","GLOBAL",2)~
 UNSOLVED_JOURNAL @50101 EXIT
END

IF ~~ THEN BEGIN 38 // from: 28.1
  SAY @77
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 39 // from: 28.2
  SAY @78
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 40 // from: 28.3
  SAY @79
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 41 // from: 26.1
  SAY @80
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 42 // from: 26.2
  SAY @81
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 43 // from: 26.3
  SAY @61
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 44 // from: 26.4
  SAY @82
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 45 // from: 26.5
  SAY @77
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 46 // from: 26.6
  SAY @78
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 47 // from: 26.7
  SAY @83
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 48 // from: 22.1
  SAY @84
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyInvestigatesLeads","GLOBAL",4)
Global("CbSpyIs_Ranger","GLOBAL",1)
!AreaCheck("AR4304")~ THEN BEGIN 49
  SAY @85
  IF ~~ THEN REPLY @86 GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY @87
  IF ~~ THEN DO ~SetGlobal("CbPartyInvestigatesLeads","GLOBAL",5)
SetGlobal("CbSpyIs_Ranger","GLOBAL",2)
SetGlobal("CbRangerGuilty","LOCALS",1)
EraseJournalEntry(@50100)
EraseJournalEntry(@50101)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBRANGJL")~
SOLVED_JOURNAL @50124 EXIT
END

IF ~AreaCheck("AR4287")
!AreaCheck("AR4304")~ THEN BEGIN 51
  SAY @88
  IF ~~ THEN EXIT
END

IF ~AreaCheck("AR4304")~ THEN BEGIN 52
  SAY @89
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 53 // from: 14.1
  SAY @90
  IF ~~ THEN DO ~SetGlobal("CbCharlotteSpokeToRanger","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN 54 // from: 44.0
  SAY @91
  IF ~~ THEN GOTO 28
END
