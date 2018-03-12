BEGIN ~CBSOUMJ2~

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",2)
Global("CbRecruiting","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN GOTO 2
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
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @7
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @10
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 8 // from: 0.1
  SAY @11
  IF ~~ THEN EXIT
END

IF ~GlobalGT("CbRecruiting","GLOBAL",0)
GlobalLT("CbRecruiting","GLOBAL",7)~ THEN BEGIN 9
  SAY @12
  IF ~Global("CbRecruiting","GLOBAL",2)~ THEN REPLY @13 GOTO 43
  IF ~!Global("CbRecruiting","GLOBAL",3)~ THEN REPLY @14 GOTO 39
  IF ~Global("CbRecruiting","GLOBAL",3)~ THEN GOTO 40
  IF ~Global("CbRecruiting","GLOBAL",5)~ THEN REPLY @15 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.3
  SAY @16
  IF ~Global("CbPartyReportedNarwhal","LOCALS",0)~ THEN REPLY @17 EXIT
  IF ~Global("CbPartyReportedNarwhal","LOCALS",1)~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @20 GOTO 46
END

IF ~~ THEN BEGIN 11 // from: 10.2 10.1
  SAY @21
  IF ~~ THEN DO ~SetGlobal("CbRecruiting","GLOBAL",6)~ EXIT
END

IF ~Global("CbRecruiting","GLOBAL",7)
Global("CbOpenJail","AR4286",0)~ THEN BEGIN 12
  SAY @22
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @23
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @24
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @25
  IF ~~ THEN GOTO 50
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",3)
GlobalGT("CbPartyTrainedTriel","GLOBAL",0)~ THEN BEGIN 16
  SAY @26
  IF ~GlobalGT("CbPartyTrainedOneNewGuard","GLOBAL",0)
GlobalLT("CbPartyTrainedOneNewGuard","GLOBAL",2)~ THEN REPLY @27 DO ~AddexperienceParty(1000)~ GOTO 19
  IF ~GlobalGT("CbPartyTrainedOneNewGuard","GLOBAL",1)
GlobalLT("CbPartyTrainedOneNewGuard","GLOBAL",4)~ THEN REPLY @28 DO ~AddexperienceParty(3000)~ GOTO 19
  IF ~GlobalGT("CbPartyTrainedOneNewGuard","GLOBAL",3)
GlobalLT("CbPartyTrainedOneNewGuard","GLOBAL",7)~ THEN REPLY @29 DO ~AddexperienceParty(6000)~ GOTO 19
  IF ~GlobalGT("CbPartyTrainedOneNewGuard","GLOBAL",6)
GlobalLT("CbPartyTrainedOneNewGuard","GLOBAL",9)~ THEN REPLY @30 DO ~AddexperienceParty(8000)~ GOTO 19
  IF ~GlobalGT("CbPartyTrainedOneNewGuard","GLOBAL",9)~ THEN REPLY @31 DO ~AddexperienceParty(10000)~ GOTO 19
  IF ~GlobalLT("CbPartyTrainedOneNewGuard","GLOBAL",1)~ THEN REPLY @32 GOTO 22
  IF ~~ THEN REPLY @33 GOTO 42
END

IF ~Global("CbPartyHuntsSpy","GLOBAL",1)
Global("CbPartyIsInSoubarMilitia","GLOBAL",4)
GlobalLT("CbPartyInvestigatesLeads","GLOBAL",5)
GlobalLT("CbOneSpyDown","GLOBAL",6)
!Global("CbSpyIs_SSC","GLOBAL",1)~ THEN BEGIN 17
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @36
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.4 16.3 16.2 16.1 16.0
  SAY @37
  IF ~Global("CbPartyHuntsSpy","GLOBAL",0)~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @38
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @39
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 22 // from: 16.5
  SAY @40
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @41
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyHuntsSpy","GLOBAL",1)
Global("CbPartyIsInSoubarMilitia","GLOBAL",4)
Global("CbPartyInvestigatesLeads","GLOBAL",5)
Global("CbASpyEscaped","GLOBAL",1)
GlobalGT("CbOneSpyDown","GLOBAL",5)
!Global("CbSpyIs_SSC","GLOBAL",1)
~ THEN BEGIN 24
  SAY @42
  IF ~Global("CbWinthropTheSpyEscaped","GLOBAL",1)~ THEN REPLY @43 GOTO 25
  IF ~Global("CbCeebIssonTheSpyEscaped","GLOBAL",1)~ THEN REPLY @44 GOTO 29
  IF ~Global("CbCharlieTheSpyEscaped","GLOBAL",1)~ THEN REPLY @45 GOTO 30
  IF ~Global("CbFightersTheSpyEscaped","GLOBAL",1)~ THEN REPLY @46 GOTO 31
  IF ~Global("CbMayorTheSpyEscaped","GLOBAL",1)~ THEN REPLY @47 GOTO 32
  IF ~~ THEN REPLY @48 EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @49
  IF ~~ THEN REPLY @50 GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 31.0 30.0 29.0 25.0
  SAY @51
  IF ~~ THEN REPLY @52 GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @53
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY @54
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 29 // from: 24.1
  SAY @55
  IF ~~ THEN REPLY @50 GOTO 26
END

IF ~~ THEN BEGIN 30 // from: 24.2
  SAY @56
  IF ~~ THEN REPLY @50 GOTO 26
END

IF ~~ THEN BEGIN 31 // from: 24.3
  SAY @57
  IF ~~ THEN REPLY @58 GOTO 26
END

IF ~~ THEN BEGIN 32 // from: 24.4
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
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @65
  IF ~~ THEN GOTO 54
END

IF ~Global("CbPartyHuntsSpy","GLOBAL",1)
Global("CbPartyIsInSoubarMilitia","GLOBAL",4)
Global("CbPartyInvestigatesLeads","GLOBAL",5)
Global("CbASpyEscaped","GLOBAL",1)
GlobalGT("CbOneSpyDown","GLOBAL",5)~ THEN BEGIN 36
  SAY @34
  IF ~Global("CbSpyIs_SSC","GLOBAL",1)~ THEN REPLY @66 GOTO 56
  IF ~!Global("CbSpyIs_SSC","GLOBAL",1)~ THEN REPLY @66 GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY @67
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 38 // from: 7.0
  SAY @68
  IF ~~ THEN DO ~SetGlobal("CbRecruiting","GLOBAL",1)
SetGlobal("CbPartySquadCreated","GLOBAL",1)~ 
UNSOLVED_JOURNAL @50104 EXIT
END

IF ~~ THEN BEGIN 39 // from: 9.1
  SAY @69
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 40 // from: 9.2
  SAY @70
  IF ~~ THEN REPLY @71 GOTO 41
  IF ~~ THEN REPLY @72 GOTO 44
  IF ~~ THEN REPLY @73 GOTO 45
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY @74
  IF ~~ THEN REPLY @17 EXIT
END

IF ~~ THEN BEGIN 42 // from: 16.6
  SAY @75
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43 // from: 9.0
  SAY @76
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 44 // from: 40.1
  SAY @77
  IF ~~ THEN DO ~SetGlobal("CbPartyReportedNarwhal","LOCALS",1)
SetGlobal("CbRecruiting","GLOBAL",4)~ GOTO 48
END

IF ~~ THEN BEGIN 45 // from: 40.2
  SAY @78
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 46 // from: 10.3
  SAY @79
  IF ~NumInParty(1)~ THEN REPLY @80 GOTO 47
  IF ~NumInPartyGT(1)~ THEN REPLY @81 GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.1 46.0
  SAY @82
  IF ~~ THEN DO ~SetGlobal("CbRecruiting","GLOBAL",6)~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.0
  SAY @83
  IF ~~ THEN REPLY @84 GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY @85
  IF ~~ THEN REPLY @86 DO ~SetGlobal("CbRecruiting","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 15.0
  SAY @87
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY @88
  IF ~~ THEN DO ~SetGlobal("CbRecruiting","GLOBAL",8)
SetGlobal("CbOpenTrainingArea","GLOBAL",1)
SetGlobal("CbOpenJail","AR4286",1)
SetGlobal("CbPartyTrainedTriel","GLOBAL",1)
SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",3)~
UNSOLVED_JOURNAL @50109 EXIT
END

IF ~~ THEN BEGIN 52 // from: 21.0
  SAY @89
  IF ~~ THEN DO ~AddexperienceParty(50000)
SetGlobal("CbPartyHuntsSpy","GLOBAL",1)
SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",4)
EraseJournalEntry(@50109)~ 
SOLVED_JOURNAL @50100 EXIT
END

IF ~~ THEN BEGIN 53 // from: 57.0 28.0
  SAY @90
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0 35.0
  SAY @91
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY @92
  IF ~~ THEN DO ~GiveItemCreate("CBLOCKER",LastTalkedToBy(),1,0,0)
SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",5)
SetGlobal("CbDeactivateOtherCaptains","GLOBAL",1)
SetGlobal("CbPartyHuntsSpy","GLOBAL",3)
SetGlobal("CbASpyEscaped","GLOBAL",1)
EraseJournalEntry(@50100)
EraseJournalEntry(@50101)
EraseJournalEntry(@50103)
CreateCreatureOffScreen("CB287CPT",0)~
UNSOLVED_JOURNAL @50105 EXIT
END

IF ~~ THEN BEGIN 56 // from: 36.0
  SAY @93
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY @94
  IF ~~ THEN GOTO 53
END
