BEGIN ~CBSIRRUS~

IF ~NumTimesTalkedTo(0)
!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyInvestigatesLeads","GLOBAL",4)
GlobalLT("CbPartyIsInSoubarMilitia","GLOBAL",6)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 25.0 24.0 0.0
  SAY @2 
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @3 
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @4 
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 9
  IF ~~ THEN REPLY @7 GOTO 17
  IF ~~ THEN REPLY @8 GOTO 19
  IF ~~ THEN REPLY @9 GOTO 23
END

IF ~~ THEN BEGIN 4 // from: 8.0 3.0
  SAY @10
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @11
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @12
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @13
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 22.0 18.0 16.0 7.0
  SAY @14
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 9
  IF ~~ THEN REPLY @7 GOTO 17
  IF ~~ THEN REPLY @8 GOTO 19
  IF ~~ THEN REPLY @9 GOTO 23
END

IF ~~ THEN BEGIN 9 // from: 8.1 3.1
  SAY @15
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @16
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @17
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @18
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @19
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @20
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @21
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @22
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 17 // from: 8.2 3.2
  SAY @23
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @24
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 8.3 3.3
  SAY @25
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @26
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @27
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @28
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 23 // from: 8.4 3.4
  SAY @29
  IF ~~ THEN GOTO 95
END

IF ~~ THEN BEGIN 24 // from:
  SAY @30 /* #0 */
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 25 // from:
  SAY @30 /* #0 */
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~Global("CbPlayerMetSirrus","AR4289",1)
!Global("CbPlayerCanJoinSoubarMilita","GLOBAL",1)
!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyInvestigatesLeads","GLOBAL",4)
GlobalLT("CbPartyIsInSoubarMilitia","GLOBAL",6)~ THEN BEGIN 26
  SAY @31 
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @32 
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY @33 
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY @34 
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY @35 
  IF ~~ THEN GOTO 99
END

IF ~Global("CbPlayerCanJoinSoubarMilita","GLOBAL",1)
Global("CbPartyIsInSoubarMilitia","GLOBAL",0)
!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyInvestigatesLeads","GLOBAL",4)
GlobalLT("CbPartyIsInSoubarMilitia","GLOBAL",6)~ THEN BEGIN 31
  SAY @36 
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",1)
!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyInvestigatesLeads","GLOBAL",4)
GlobalLT("CbPartyIsInSoubarMilitia","GLOBAL",6)~ THEN BEGIN 32
  SAY @37 
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",2)
!Global("CbRecruiting","GLOBAL",6)
!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyInvestigatesLeads","GLOBAL",4)
GlobalLT("CbPartyIsInSoubarMilitia","GLOBAL",6)~ THEN BEGIN 33
  SAY @38 
  IF ~~ THEN EXIT
END

IF ~Global("CbRecruiting","GLOBAL",6)
Global("CbToldMayorAboutAttack","LOCALS",0)
!Global("CbPartyInvestigatesLeads","GLOBAL",2)
!Global("CbPartyInvestigatesLeads","GLOBAL",4)
GlobalLT("CbPartyIsInSoubarMilitia","GLOBAL",6)~ THEN BEGIN 34
  SAY @39 
  IF ~~ THEN REPLY @40 GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @41 
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY @42 
  IF ~~ THEN DO ~SetGlobal("CbRecruiting","GLOBAL",7)
SetGlobal("CbToldMayorAboutAttack","LOCALS",1)
EraseJournalEntry(@50104)
MoveBetweenAreas("AR4290",[174.638],12)~
SOLVED_JOURNAL @50126 EXIT
END

IF ~Global("CbPartyInvestigatesLeads","GLOBAL",2)
Global("CbQuestioningMayor","LOCALS",0)
GlobalLT("CbPartyIsInSoubarMilitia","GLOBAL",6)~ THEN BEGIN 37
  SAY @43 
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY @44 
  IF ~~ THEN REPLY @45 GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY @46 
  IF ~~ THEN REPLY @47 GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 66.0 39.0
  SAY @48 
  IF ~!Global("CbSpyIsNotSSC","GLOBAL",1)~ THEN REPLY @49 DO ~SetGlobal("CbSpyIsNotSSC","GLOBAL",1)~ GOTO 41
  IF ~!Global("CbSpyIsNotWinthrop","GLOBAL",1)~ THEN REPLY @50 DO ~SetGlobal("CbSpyIsNotWinthrop","GLOBAL",1)~ GOTO 47
  IF ~!Global("CbSpyIsNotFighter","GLOBAL",1)~ THEN REPLY @51 DO ~SetGlobal("CbSpyIsNotFighter","GLOBAL",1)~ GOTO 49
  IF ~!Global("CbSpyIsNotMiller","GLOBAL",1)~ THEN REPLY @52 DO ~SetGlobal("CbSpyIsNotMiller","GLOBAL",1)~ GOTO 51
  IF ~!Global("CbSpyIsNotRanger","GLOBAL",1)~ THEN REPLY @53 DO ~SetGlobal("CbSpyIsNotRanger","GLOBAL",1)~ GOTO 60
  IF ~!Global("CbSpyIsNotMayor","GLOBAL",1)~ THEN REPLY @54 DO ~SetGlobal("CbSpyIsNotMayor","GLOBAL",1)~ GOTO 61
  IF ~!Global("CbSpyIsNotCharlie","GLOBAL",1)~ THEN REPLY @55 DO ~SetGlobal("CbSpyIsNotCharlie","GLOBAL",1)~ GOTO 72
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY @56
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY @57
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY @58
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY @59
  IF ~~ THEN REPLY @60 GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY @61
  IF ~~ THEN REPLY @62 GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY @63
  IF ~~ THEN DO ~SetGlobal("CbQuestioningMayor","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 40.1
  SAY @64
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY @65
  IF ~~ THEN DO ~SetGlobal("CbQuestioningMayor","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 40.2
  SAY @66
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY @67
  IF ~~ THEN DO ~SetGlobal("CbQuestioningMayor","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 40.3
  SAY @68
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY @69
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY @70
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY @71
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY @72
  IF ~~ THEN REPLY @73 GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY @74
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY @75
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY @76
  IF ~~ THEN REPLY @77 GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY @78
  IF ~~ THEN DO ~SetGlobal("CbQuestioningMayor","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 60 // from: 40.4
  SAY @79
  IF ~~ THEN GOTO 101
END

IF ~~ THEN BEGIN 61 // from: 40.5
  SAY @80
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY @81
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY @82
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY @83
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY @84
  IF ~~ THEN REPLY @85 GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY @86
  IF ~~ THEN REPLY @87 DO ~SetGlobal("CbPartyAccusedMayor","LOCALS",1)
IncrementGlobal("CbOneSpyDown","GLOBAL",1)~ GOTO 40
END

IF ~Global("CbPartyInvestigatesLeads","GLOBAL",4)
Global("CbSpyIs_Mayor","GLOBAL",1)
GlobalLT("CbPartyIsInSoubarMilitia","GLOBAL",6)~ THEN BEGIN 67
  SAY @88 
  IF ~~ THEN REPLY @89 GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY @90 
  IF ~~ THEN REPLY @91 GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY @92 
  IF ~~ THEN REPLY @93 GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY @94 
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY @95 
  IF ~~ THEN DO ~SetGlobal("CbPartyInvestigatesLeads","GLOBAL",5)
SetGlobal("CbSpyIs_Mayor","GLOBAL",2)
SetGlobal("CbMayorGuilty","LOCALS",1)
EraseJournalEntry(@50100)
EraseJournalEntry(@50101)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBMAYENM")~
SOLVED_JOURNAL @50127 EXIT
END

IF ~~ THEN BEGIN 72 // from: 40.6
  SAY @96
  IF ~~ THEN REPLY @97 GOTO 73
  IF ~~ THEN REPLY @98 DO ~SetGlobal("CbSpyIsNotCharlie","GLOBAL",1)~ GOTO 74
  IF ~~ THEN REPLY @99 GOTO 73
  IF ~~ THEN REPLY @100 GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72.3 72.2 72.0
  SAY @101
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 74 // from: 72.1
  SAY @102
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY @103
  IF ~~ THEN REPLY @104 GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY @105
  IF ~~ THEN REPLY @106 GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY @107
  IF ~~ THEN DO ~SetGlobal("CbQuestioningMayor","LOCALS",1)~ EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",6)
Global("CbPromotePartyLieutenant","GLOBAL",1)
IsGabber(Player1)~ THEN BEGIN 78 // from:
  SAY @108 
  IF ~~ THEN REPLY @109 GOTO 79
  IF ~~ THEN REPLY @110 GOTO 83
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY @111
  IF ~~ THEN REPLY @112 GOTO 80
  IF ~~ THEN REPLY @113 GOTO 81
END

IF ~~ THEN BEGIN 80 // from: 81.0 79.0
  SAY @114
  IF ~~ THEN DO ~SetGlobal("CbPromotePartyLieutenant","GLOBAL",2)
EraseJournalEntry(@50105)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBPROMO3")~
SOLVED_JOURNAL @5092 EXIT
END

IF ~~ THEN BEGIN 81 // from: 79.1
  SAY @115
  IF ~~ THEN REPLY @116 GOTO 80
  IF ~~ THEN REPLY @117 GOTO 82
END

IF ~~ THEN BEGIN 82 // from: 81.1
  SAY @118
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 83 // from: 78.1
  SAY @119
  IF ~~ THEN EXIT
END

IF ~Global("CbPromotePartyLieutenant","GLOBAL",2)
Global("CbMayorIsAngry","LOCALS",0)
IsGabber(Player1)
!AreaCheck("AR4304")
!GlobalGT("CbPartyHasKilledAllBandits","GLOBAL",0)~ THEN BEGIN 84
  SAY @120 
  IF ~~ THEN GOTO 102
END

IF ~Global("CbPartyHasKilledAllBandits","GLOBAL",3)
Global("CbPartyLeaderBecomesMayor","GLOBAL",0)
IsGabber(Player1)
!AreaCheck("AR4304")~ THEN BEGIN 85
  SAY @121 
  IF ~~ THEN REPLY @122 GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY @123 
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY @124 
  IF ~NumInParty(1)~ THEN REPLY @125 GOTO 88
  IF ~NumInPartyGT(1)~ THEN REPLY @126 GOTO 90
  IF ~~ THEN REPLY @127 GOTO 91
END

IF ~~ THEN BEGIN 88 // from: 92.0 87.0
  SAY @128
  IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 89 // from: 90.0 88.0
  SAY @129
  IF ~~ THEN DO ~SetGlobal("CbPartyLeaderBecomesMayor","GLOBAL",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBPROMO5")~ EXIT
END

IF ~~ THEN BEGIN 90 // from: 87.1
  SAY @130
  IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 91 // from: 87.2
  SAY @131
  IF ~~ THEN DO ~SetGlobal("CbPartyLeaderBecomesMayor","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBPROMO6")~ EXIT
END

IF ~Global("CbPartyHasKilledAllBandits","GLOBAL",3)
Global("CbPartyLeaderBecomesMayor","GLOBAL",2)
!AreaCheck("AR4304")~ THEN BEGIN 92
  SAY @132 
  IF ~~ THEN REPLY @133 GOTO 88
  IF ~~ THEN REPLY @134 GOTO 93
END

IF ~~ THEN BEGIN 93 // from: 92.1
  SAY @135
  IF ~~ THEN EXIT
END

IF ~AreaCheck("AR4304")~ THEN BEGIN 94
  SAY @136 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 95 // from: 23.0
  SAY @137
  IF ~~ THEN REPLY @138 GOTO 96
  IF ~~ THEN REPLY @139 GOTO 97
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY @140
  IF ~~ THEN DO ~SetGlobal("CbPlayerMetSirrus","AR4289",1)~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 95.1
  SAY @141
  IF ~~ THEN GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 97.0
  SAY @142
  IF ~~ THEN DO ~SetGlobal("CbPlayerMetSirrus","AR4289",1)~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 30.0
  SAY @143 
  IF ~~ THEN GOTO 100
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY @144 
  IF ~~ THEN DO ~SetGlobal("CbPlayerCanJoinSoubarMilita","GLOBAL",1)~
SOLVED_JOURNAL @50106 EXIT
END

IF ~~ THEN BEGIN 101 // from: 60.0
  SAY @145
  IF ~~ THEN DO ~SetGlobal("CbQuestioningMayor","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 102 // from: 84.0
  SAY @146 
  IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.0
  SAY @147
  IF ~~ THEN DO ~SetGlobal("CbMayorIsAngry","LOCALS",1)~ EXIT
END
