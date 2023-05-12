BEGIN ~CBSOUMJR~

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",0)
Global("CbPlayerCanJoinSoubarMilita","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",0)
Global("CbPlayerCanJoinSoubarMilita","GLOBAL",1)
Global("CbMajorWantsStuffInBag","AR4286",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7
  IF ~~ THEN DO ~SetGlobal("CbMajorWantsStuffInBag","AR4286",1)
GiveItem("CBLOCKER",Player1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @8
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",0)
Global("CbPlayerCanJoinSoubarMilita","GLOBAL",1)
Global("CbMajorWantsStuffInBag","AR4286",1)~ THEN BEGIN 6
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 14
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 13
  IF ~~ THEN REPLY @15 GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 8.0 7.0
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @18
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 13.0 9.0
  SAY @19
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 12.0 10.0
  SAY @20
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 12 // from: 8.2 7.2
  SAY @21
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 7.1
  SAY @18
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY @22
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.0
  SAY @23
  IF ~~ THEN DO ~SetGlobal("CbMajorWantsStuffInBag","AR4286",2)
EraseJournalEntry(@50106)
TakePartyItem("CBLOCKER")
DestroyItem("CBLOCKER")
CreateCreatureOffScreen("CBSOUSGT",0)~ 
UNSOLVED_JOURNAL @50107 EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",0)
Global("CbMajorWantsStuffInBag","AR4286",3)~ THEN BEGIN 16
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @26
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @27
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @28
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @29
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @30
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @31
  IF ~~ THEN REPLY @32 DO ~SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",1)~
UNSOLVED_JOURNAL @50108 EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",1)
Global("CbRoadPatrolDone","AR4286",0)~ THEN BEGIN 23
  SAY @33
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @34
  IF ~~ THEN REPLY @35 EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",1)
Global("CbRoadPatrolDone","AR4286",1)
Global("CbFarmPatrolDuty","AR4286",0)~ THEN BEGIN 25
  SAY @36
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @37
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @38
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY @39
  IF ~~ THEN DO ~GiveItemCreate("CBTRVBAG",LastTalkedToBy(),1,0,0)
EraseJournalEntry(@50108)
SetGlobal("CbRoadPatrolDone","AR4286",2)
SetGlobal("CbFarmPatrolDuty","AR4286",1)~ 
UNSOLVED_JOURNAL @50102 EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",1)
Global("CbFarmPatrolDuty","AR4286",4)~ THEN BEGIN 29
  SAY @40
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY @41
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY @44
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY @45
  IF ~~ THEN REPLY @46 GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @47
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @48
  IF ~!Class(Player1,MONK)
!Class(Player2,MONK)
!Class(Player3,MONK)
!Class(Player4,MONK)
!Class(Player5,MONK)
!Class(Player6,MONK)
~ THEN DO ~AddexperienceParty(30000)
EraseJournalEntry(@50107)
SetGlobal("CbFarmPatrolDuty","AR4286",5)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBPROMO1")~ UNSOLVED_JOURNAL @50103 EXIT
  IF ~~ THEN DO ~AddexperienceParty(30000)
EraseJournalEntry(@50107)
SetGlobal("CbFarmPatrolDuty","AR4286",5)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBFXMNKA")~ UNSOLVED_JOURNAL @50103 EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",2)
Global("CbRecruiting","GLOBAL",0)~ THEN BEGIN 43
  SAY @49
  IF ~~ THEN REPLY @50 GOTO 44
  IF ~~ THEN REPLY @51 GOTO 51
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY @52
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY @53
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY @54
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY @55
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY @56
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY @57
  IF ~~ THEN REPLY @58 GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY @59
  IF ~~ THEN DO ~SetGlobal("CbRecruiting","GLOBAL",1)
SetGlobal("CbPartySquadCreated","GLOBAL",1)~ 
UNSOLVED_JOURNAL @50104 GOTO 199
END

IF ~~ THEN BEGIN 51 // from: 43.1
  SAY @60
  IF ~~ THEN EXIT
END

IF ~GlobalGT("CbRecruiting","GLOBAL",0)
!GlobalGT("CbRecruiting","GLOBAL",5)~ THEN BEGIN 64
  SAY @61
  IF ~Global("CbRecruiting","GLOBAL",2)~ THEN REPLY @62 GOTO 65
  IF ~~ THEN REPLY @63 GOTO 200
  IF ~Global("CbRecruiting","GLOBAL",3)~ THEN GOTO 201
  IF ~Global("CbRecruiting","GLOBAL",4)~ THEN GOTO 203
  IF ~Global("CbRecruiting","GLOBAL",5)~ THEN GOTO 79
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY @64
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 68 // from: 202.2 202.1
  SAY @65
  IF ~~ THEN REPLY @66 GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY @67
  IF ~~ THEN REPLY @68 GOTO 70
  IF ~Global("CbPartyReportedNarwhal","LOCALS",0)~ THEN REPLY @69 GOTO 71
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY @70
  IF ~~ THEN DO ~SetGlobal("CbRecruiting","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN 71 // from: 69.1
  SAY @71
  IF ~~ THEN DO ~SetGlobal("CbRecruiting","GLOBAL",4)
SetGlobal("CbPartyReportedNarwhal","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 72 // from: 202.3
  SAY @72
  IF ~NumInParty(1)~ THEN REPLY @73 GOTO 73
  IF ~Global("CbPartyReportedNarwhal","LOCALS",0)~ THEN REPLY @74 GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72.1 72.0
  SAY @75
  IF ~!Global("CbPartyReportedNarwhal","LOCALS",1)~ THEN REPLY @76 GOTO 74
  IF ~~ THEN REPLY @77 GOTO 75
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY @78
  IF ~~ THEN REPLY @14 /* #78310 */ DO ~SetGlobal("CbRecruiting","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN 75 // from: 73.1
  SAY @79
  IF ~~ THEN DO ~SetGlobal("CbRecruiting","GLOBAL",4)
SetGlobal("CbPartyReportedNarwhal","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 77 // from: 203.0
  SAY @80
  IF ~~ THEN DO ~SetGlobal("CbPartyReportedNarwhal","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 78 // from: 203.1
  SAY @81
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 79 // from: 64.4
  SAY @82
  IF ~Global("CbPartyReportedNarwhal","LOCALS",0)~ THEN REPLY @83 GOTO 80
  IF ~Global("CbPartyReportedNarwhal","LOCALS",1)~ THEN REPLY @84 GOTO 81
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY @85
  IF ~~ THEN DO ~AddexperienceParty(40000)
SetGlobal("CbRecruiting","GLOBAL",6)
SetGlobal("CbPartyReportedNarwhal","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 81 // from: 79.1
  SAY @86
  IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY @87
  IF ~~ THEN REPLY @88 GOTO 83
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY @89
  IF ~~ THEN REPLY @90 DO ~AddexperienceParty(40000)
SetGlobal("CbRecruiting","GLOBAL",6)
SetGlobal("CbPartyReportedNarwhal","LOCALS",1)~ EXIT
END

IF ~Global("CbRecruiting","GLOBAL",6)
Global("CbPartyPickedAMission","AR4286",0)
!GlobalGT("CbDeliveringMissives","GLOBAL",0)~ THEN BEGIN 84
  SAY @91
  IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 85 // from: 84.0
  SAY @92
  IF ~~ THEN GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY @93
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY @94 /* #78196 */
  IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY @95
  IF ~~ THEN REPLY @96 GOTO 89
  IF ~~ THEN REPLY @97 GOTO 92
END

IF ~~ THEN BEGIN 89 // from: 88.0
  SAY @98
  IF ~~ THEN DO ~SetGlobal("CbOpenJail","AR4286",1)~ GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY @99
  IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY @100
  IF ~~ THEN DO ~SetGlobal("CbRecruiting","GLOBAL",7)
IncrementGlobal("CbPartyIsInSoubarMilitia","GLOBAL",1)
SetGlobal("CbPartyPickedAMission","AR4286",1)
SetGlobal("CbOpenTrainingArea","GLOBAL",1)
SetGlobal("CbOpenJail","AR4286",1)
SetGlobal("CbPartyTrainedTriel","GLOBAL",1)~ UNSOLVED_JOURNAL @50109 EXIT
END

IF ~~ THEN BEGIN 92 // from: 88.1
  SAY @101
  IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY @102
  IF ~~ THEN DO ~SetGlobal("CbRecruiting","GLOBAL",7)
IncrementGlobal("CbPartyIsInSoubarMilitia","GLOBAL",1)
SetGlobal("CbPartyPickedAMission","AR4286",1)
SetGlobal("CbPartyHuntsSpy","GLOBAL",1)~ 
UNSOLVED_JOURNAL @50100 EXIT
END

IF ~Global("CbPartyHuntsSpy","GLOBAL",1)
GlobalLT("CbPartyInvestigatesLeads","GLOBAL",4)
GlobalLT("CbOneSpyDown","GLOBAL",5)
!Global("CbSpyIs_SSC","GLOBAL",1)
!GlobalGT("CbPartyIsInSoubarMilitia","GLOBAL",5)
!GlobalGT("CbDeliveringMissives","GLOBAL",0)~ THEN BEGIN 96
  SAY @103
  IF ~~ THEN REPLY @104 GOTO 97
END

IF ~~ THEN BEGIN 97 // from: 96.0
  SAY @105
  IF ~~ THEN EXIT
END

IF ~GlobalGT("CbPartyTrainedTriel","GLOBAL",0)
!Global("CbPartyHuntsSpy","GLOBAL",1)
!GlobalGT("CbPartyIsInSoubarMilitia","GLOBAL",4)
!GlobalGT("CbDeliveringMissives","GLOBAL",0)~ THEN BEGIN 98
  SAY @106
  IF ~GlobalGT("CbPartyTrainedOneNewGuard","GLOBAL",0)
GlobalLT("CbPartyTrainedOneNewGuard","GLOBAL",2)~ THEN REPLY @107 DO ~AddexperienceParty(1000)~ GOTO 99
  IF ~GlobalGT("CbPartyTrainedOneNewGuard","GLOBAL",1)
GlobalLT("CbPartyTrainedOneNewGuard","GLOBAL",4)~ THEN REPLY @108 DO ~AddexperienceParty(3000)~ GOTO 99
  IF ~GlobalGT("CbPartyTrainedOneNewGuard","GLOBAL",3)
GlobalLT("CbPartyTrainedOneNewGuard","GLOBAL",7)~ THEN REPLY @109 DO ~AddexperienceParty(6000)~ GOTO 99
  IF ~GlobalGT("CbPartyTrainedOneNewGuard","GLOBAL",6)
GlobalLT("CbPartyTrainedOneNewGuard","GLOBAL",9)~ THEN REPLY @110 DO ~AddexperienceParty(8000)~ GOTO 99
  IF ~GlobalGT("CbPartyTrainedOneNewGuard","GLOBAL",9)~ THEN REPLY @111 DO ~AddexperienceParty(10000)~ GOTO 99
  IF ~GlobalLT("CbPartyTrainedOneNewGuard","GLOBAL",1)~ THEN REPLY @112 GOTO 102
  IF ~~ THEN REPLY @113 GOTO 204
END

IF ~~ THEN BEGIN 99 // from: 98.4 98.3 98.2 98.1 98.0
  SAY @114
  IF ~Global("CbPartyHuntsSpy","GLOBAL",0)~ THEN GOTO 100
  IF ~Global("CbPartyHuntsSpy","GLOBAL",1)~ THEN EXIT
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY @115
  IF ~~ THEN REPLY @116 GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 100.0
  SAY @117
  IF ~~ THEN DO  ~AddexperienceParty(50000)
IncrementGlobal("CbPartyIsInSoubarMilitia","GLOBAL",1)
EraseJournalEntry(@50109)
SetGlobal("CbPartyHuntsSpy","GLOBAL",1)~ UNSOLVED_JOURNAL @50100 EXIT
END

IF ~~ THEN BEGIN 102 // from: 98.5
  SAY @118
  IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.0
  SAY @119
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyInvestigatesLeads","GLOBAL",4)
Global("CbSpyIs_SSC","GLOBAL",1)
!GlobalGT("CbPartyIsInSoubarMilitia","GLOBAL",5)
!GlobalGT("CbDeliveringMissives","GLOBAL",0)~ THEN BEGIN 104
  SAY @120
  IF ~~ THEN GOTO 105
END

IF ~~ THEN BEGIN 105 // from: 104.0
  SAY @121
  IF ~~ THEN GOTO 106
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY @122
  IF ~~ THEN GOTO 107
END

IF ~~ THEN BEGIN 107 // from: 106.0
  SAY @123
  IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY @124
  IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 109 // from: 108.0
  SAY @125
  IF ~~ THEN GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 109.0
  SAY @126
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 111 // from: 129.0 110.0
  SAY @127
  IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 112 // from: 119.0 111.0
  SAY @128
  IF ~~ THEN GOTO 113
END

IF ~~ THEN BEGIN 113 // from: 126.0 112.0
  SAY @129
  IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 114 // from: 113.0
  SAY @130
  IF ~~ THEN DO ~GiveItemCreate("CBLOCKER",LastTalkedToBy(),1,0,0)
SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",5)
SetGlobal("CbDeactivateOtherCaptains","GLOBAL",1)
SetGlobal("CbPartyHuntsSpy","GLOBAL",2)
SetGlobal("CbASpyEscaped","GLOBAL",1)
EraseJournalEntry(@50100)
EraseJournalEntry(@50101)
EraseJournalEntry(@50103)
CreateCreatureOffScreen("CB287CPT",0)~ UNSOLVED_JOURNAL @50105 EXIT
END

IF ~Global("CbASpyEscaped","GLOBAL",1)
Global("CbPartyHuntsSpy","GLOBAL",1)
Global("CbPartyInvestigatesLeads","GLOBAL",5)
GlobalGT("CbPartyIsInSoubarMilitia","GLOBAL",2)
!GlobalGT("CbPartyIsInSoubarMilitia","GLOBAL",5)
!GlobalGT("CbDeliveringMissives","GLOBAL",0)~ THEN BEGIN 115
  SAY @131
  IF ~Global("CbWinthropTheSpyEscaped","GLOBAL",1)~ THEN REPLY @132 GOTO 116
  IF ~Global("CbCeebIssonTheSpyEscaped","GLOBAL",1)~ THEN REPLY @133 GOTO 120
  IF ~Global("CbCharlieTheSpyEscaped","GLOBAL",1)~ THEN REPLY @134 GOTO 121
  IF ~Global("CbFightersTheSpyEscaped","GLOBAL",1)~ THEN REPLY @135 GOTO 122
  IF ~Global("CbMayorTheSpyEscaped","GLOBAL",1)~ THEN REPLY @136 GOTO 123
  IF ~~ THEN REPLY @137 EXIT
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY @138
  IF ~~ THEN REPLY @139 GOTO 117
END

IF ~~ THEN BEGIN 117 // from: 122.0 121.0 120.0 116.0
  SAY @140
  IF ~~ THEN REPLY @141 GOTO 118
END

IF ~~ THEN BEGIN 118 // from: 117.0
  SAY @142
  IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 119 // from: 118.0
  SAY @143
  IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 120 // from: 115.1
  SAY @144
  IF ~~ THEN REPLY @139 GOTO 117
END

IF ~~ THEN BEGIN 121 // from: 115.2
  SAY @145
  IF ~~ THEN REPLY @139 GOTO 117
END

IF ~~ THEN BEGIN 122 // from: 115.3
  SAY @146
  IF ~~ THEN REPLY @147 GOTO 117
END

IF ~~ THEN BEGIN 123 // from: 115.4
  SAY @148
  IF ~~ THEN REPLY @149 GOTO 124
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY @150
  IF ~~ THEN REPLY @151 GOTO 125
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY @152
  IF ~~ THEN REPLY @153 GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY @154
  IF ~~ THEN GOTO 113
END

IF ~Global("CbPartyHuntsSpy","GLOBAL",1)
!GlobalGT("CbPartyIsInSoubarMilitia","GLOBAL",5)
!GlobalGT("CbDeliveringMissives","GLOBAL",0)~ THEN BEGIN 127
  SAY @103
  IF ~GlobalGT("CbOneSpyDown","GLOBAL",5)~ THEN REPLY @155 GOTO 128
  IF ~GlobalLT("CbOneSpyDown","GLOBAL",6)~ THEN REPLY @155 GOTO 198
END

IF ~~ THEN BEGIN 128 // from: 127.0
  SAY @156
  IF ~~ THEN GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 128.0
  SAY @157
  IF ~~ THEN GOTO 111
END

IF ~GlobalLT("CbPartyIsInSoubarMilitia","GLOBAL",7)~ THEN BEGIN 130
  SAY @158
  IF ~GlobalLT("CbOrderCompanyOfGuard","GLOBAL",1)
!GlobalGT("CbDeliveringMissives","GLOBAL",0)~ THEN GOTO 131
  IF ~GlobalGT("CbOrderCompanyOfGuard","GLOBAL",0)
!GlobalGT("CbDeliveringMissives","GLOBAL",0)
GlobalGT("CbCompTo_N_W","GLOBAL",0)
OR(2)
GlobalGT("CbCompTo_N","GLOBAL",0)
GlobalGT("CbCompTo_N_E","GLOBAL",0)~ THEN REPLY @159 GOTO 135
  IF ~GlobalGT("CbDeliveringMissives","GLOBAL",2)
!Global("CbPartyIsInSoubarMilitia","GLOBAL",6)~ THEN REPLY @160 GOTO 139
  IF ~!Global("CbOrderCompanyOfGuard","GLOBAL",0)
!Global("CbPartyIsInSoubarMilitia","GLOBAL",6)~ THEN REPLY @161 GOTO 134
  IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",6)~ THEN GOTO 141
END

IF ~~ THEN BEGIN 131 // from: 130.0
  SAY @162
  IF ~~ THEN GOTO 132
END

IF ~~ THEN BEGIN 132 // from: 131.0
  SAY @163
  IF ~~ THEN DO ~SetGlobal("CbOrderCompanyOfGuard","GLOBAL",1)~
  UNSOLVED_JOURNAL @50110 EXIT
END

IF ~~ THEN BEGIN 134 // from: 130.3
  SAY @164
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 135 // from: 130.1
  SAY @165
  IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 135.0
  SAY @166
  IF ~~ THEN GOTO 137
END

IF ~~ THEN BEGIN 137 // from: 136.0
  SAY @167
  IF ~~ THEN GOTO 138
END

IF ~~ THEN BEGIN 138 // from: 137.0
  SAY @168
  IF ~~ THEN DO ~SetGlobal("CbDeliveringMissives","GLOBAL",1)
SetGlobal("CbStopPrelate","GLOBAL",1)
SetGlobal("CbStopLogan","GLOBAL",1)
GiveItemCreate("CBLOGMSS",LastTalkedToBy(),1,0,0)
GiveItemCreate("CBPREMSS",LastTalkedToBy(),1,0,0)
EraseJournalEntry(@50110)~
UNSOLVED_JOURNAL @50111 EXIT
END

IF ~~ THEN BEGIN 139 // from: 141.4 130.2
  SAY @169
  IF ~~ THEN GOTO 140
END

IF ~~ THEN BEGIN 140 // from: 139.0
  SAY @170
  IF ~~ THEN DO ~SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",6)
AddexperienceParty(60000)
EraseJournalEntry(@50111)~ EXIT
END

IF ~~ THEN BEGIN 141 // from: 130.4
  SAY @171
  IF ~!Global("CbPromotePartyLieutenant","GLOBAL",1)~ THEN REPLY @172 EXIT
  IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",6)
Global("CbBigRaid","GLOBAL",1)~ THEN REPLY @173 GOTO 142
  IF ~Global("CbPromotePartyLieutenant","GLOBAL",1)
Global("CbMayorTheSpyEscaped","GLOBAL",0)~ THEN GOTO 149
  IF ~Global("CbPromotePartyLieutenant","GLOBAL",1)
Global("CbMayorTheSpyEscaped","GLOBAL",1)~ THEN GOTO 150
  IF ~!Global("CbPartyIsInSoubarMilitia","GLOBAL",6)~ THEN REPLY @160 GOTO 139
END

IF ~~ THEN BEGIN 142 // from: 141.1
  SAY @174
  IF ~~ THEN GOTO 143
END

IF ~~ THEN BEGIN 143 // from: 142.0
  SAY @175
  IF ~~ THEN GOTO 144
END

IF ~~ THEN BEGIN 144 // from: 143.0
  SAY @176
  IF ~~ THEN GOTO 145
END

IF ~~ THEN BEGIN 145 // from: 144.0
  SAY @177
  IF ~Global("CbMayorTheSpyEscaped","GLOBAL",0)~ THEN GOTO 146
  IF ~Global("CbMayorTheSpyEscaped","GLOBAL",1)~ THEN GOTO 147
END

IF ~~ THEN BEGIN 146 // from: 145.0
  SAY @178
  IF ~~ THEN DO ~SetGlobal("CbPromotePartyLieutenant","GLOBAL",1)~ 
  SOLVED_JOURNAL @50128 EXIT
END

IF ~~ THEN BEGIN 147 // from: 145.1
  SAY @179
  IF ~~ THEN GOTO 148
END

IF ~~ THEN BEGIN 148 // from: 147.0
  SAY @180
  IF ~~ THEN DO ~SetGlobal("CbPromotePartyLieutenant","GLOBAL",1)~ 
  SOLVED_JOURNAL @50128 EXIT
END

IF ~~ THEN BEGIN 149 // from: 141.2
  SAY @181
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 150 // from: 141.3
  SAY @182
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",7)
Global("CbPromotePartyLieutenant","GLOBAL",2)
!Global("CbPartyHasKilledAllBandits","GLOBAL",3)
IsGabber(Player1)~ THEN BEGIN 151
  SAY @183
  IF ~Global("CbMajorExplainsHowToGetToLyrars","GLOBAL",0)~ THEN GOTO 152
  IF ~Global("CbMajorExplainsHowToGetToLyrars","GLOBAL",1)~ THEN GOTO 205
  IF ~GlobalGT("CbPartyHasKilledAllBandits","GLOBAL",0)~ THEN GOTO 206
END

IF ~~ THEN BEGIN 152 // from: 151.0
  SAY @184
  IF ~~ THEN GOTO 153
END

IF ~~ THEN BEGIN 153 // from: 152.0
  SAY @185
  IF ~~ THEN GOTO 154
END

IF ~~ THEN BEGIN 154 // from: 153.0
  SAY @186
  IF ~~ THEN GOTO 155
END

IF ~~ THEN BEGIN 155 // from: 154.0
  SAY @187
  IF ~~ THEN GOTO 156
END

IF ~~ THEN BEGIN 156 // from: 155.0
  SAY @188
  IF ~~ THEN GOTO 157
END

IF ~~ THEN BEGIN 157 // from: 156.0
  SAY @189
  IF ~~ THEN GOTO 158
END

IF ~~ THEN BEGIN 158 // from: 157.0
  SAY @190
  IF ~~ THEN GOTO 159
END

IF ~~ THEN BEGIN 159 // from: 158.0
  SAY @191
  IF ~~ THEN GOTO 160
END

IF ~~ THEN BEGIN 160 // from: 159.0
  SAY @192
  IF ~~ THEN GOTO 161
END

IF ~~ THEN BEGIN 161 // from: 160.0
  SAY @193
  IF ~~ THEN GOTO 162
END

IF ~~ THEN BEGIN 162 // from: 161.0
  SAY @194
  IF ~~ THEN GOTO 163
END

IF ~~ THEN BEGIN 163 // from: 162.0
  SAY @195
  IF ~~ THEN GOTO 164
END

IF ~~ THEN BEGIN 164 // from: 163.0
  SAY @196
  IF ~~ THEN GOTO 165
END

IF ~~ THEN BEGIN 165 // from: 164.0
  SAY @197
  IF ~~ THEN GOTO 166
END

IF ~~ THEN BEGIN 166 // from: 165.0
  SAY @198
  IF ~~ THEN DO ~SetGlobal("CbPromotePartyLieutenant","GLOBAL",3)
SetGlobal("CbMajorExplainsHowToGetToLyrars","GLOBAL",1)~ 
UNSOLVED_JOURNAL @5094 EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",7)
Global("CbPromotePartyLieutenant","GLOBAL",2)
!Global("CbPartyHasKilledAllBandits","GLOBAL",3)
!IsGabber(Player1)~ THEN BEGIN 167
  SAY @199
  IF ~Global("CbMajorExplainsHowToGetToLyrars","GLOBAL",0)~ THEN GOTO 168
  IF ~Global("CbMajorExplainsHowToGetToLyrars","GLOBAL",1)~ THEN GOTO 208
  IF ~GlobalGT("CbPartyHasKilledAllBandits","GLOBAL",0)~ THEN GOTO 209
END

IF ~~ THEN BEGIN 168 // from: 167.0
  SAY @184
  IF ~~ THEN GOTO 169
END

IF ~~ THEN BEGIN 169 // from: 168.0
  SAY @185
  IF ~~ THEN GOTO 170
END

IF ~~ THEN BEGIN 170 // from: 169.0
  SAY @200
  IF ~~ THEN GOTO 171
END

IF ~~ THEN BEGIN 171 // from: 170.0
  SAY @187
  IF ~~ THEN GOTO 172
END

IF ~~ THEN BEGIN 172 // from: 171.0
  SAY @188
  IF ~~ THEN GOTO 173
END

IF ~~ THEN BEGIN 173 // from: 172.0
  SAY @189
  IF ~~ THEN GOTO 174
END

IF ~~ THEN BEGIN 174 // from: 173.0
  SAY @190
  IF ~~ THEN GOTO 175
END

IF ~~ THEN BEGIN 175 // from: 174.0
  SAY @191
  IF ~~ THEN GOTO 176
END

IF ~~ THEN BEGIN 176 // from: 175.0
  SAY @201
  IF ~~ THEN GOTO 177
END

IF ~~ THEN BEGIN 177 // from: 176.0
  SAY @193
  IF ~~ THEN GOTO 178
END

IF ~~ THEN BEGIN 178 // from: 177.0
  SAY @194
  IF ~~ THEN GOTO 179
END

IF ~~ THEN BEGIN 179 // from: 178.0
  SAY @202
  IF ~~ THEN GOTO 180
END

IF ~~ THEN BEGIN 180 // from: 179.0
  SAY @196
  IF ~~ THEN GOTO 181
END

IF ~~ THEN BEGIN 181 // from: 180.0
  SAY @197
  IF ~~ THEN GOTO 182
END

IF ~~ THEN BEGIN 182 // from: 181.0
  SAY @203
  IF ~~ THEN DO ~SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",7)
SetGlobal("CbPromotePartyLieutenant","GLOBAL",3)
SetGlobal("CbMajorExplainsHowToGetToLyrars","GLOBAL",1)~ 
UNSOLVED_JOURNAL @5094 EXIT
END

IF ~Global("CbPartyHasKilledAllBandits","GLOBAL",3)
Global("CbPartyLeaderBecomesMayor","GLOBAL",0)~ THEN BEGIN 183
  SAY @204
  IF ~~ THEN GOTO 184
END

IF ~~ THEN BEGIN 184 // from: 183.0
  SAY @205
  IF ~~ THEN GOTO 185
END

IF ~~ THEN BEGIN 185 // from: 184.0
  SAY @206
  IF ~!Global("CbMayorTheSpyEscaped","GLOBAL",1)~ THEN GOTO 186
  IF ~Global("CbMayorTheSpyEscaped","GLOBAL",1)~ THEN GOTO 187
END

IF ~~ THEN BEGIN 186 // from: 185.0
  SAY @207
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 187 // from: 185.1
  SAY @208
  IF ~~ THEN GOTO 188
END

IF ~~ THEN BEGIN 188 // from: 187.0
  SAY @209
  IF ~~ THEN GOTO 189
END

IF ~~ THEN BEGIN 189 // from: 188.0
  SAY @210
  IF ~~ THEN GOTO 190
END

IF ~~ THEN BEGIN 190 // from: 189.0
  SAY @211
  IF ~NumInParty(1)~ THEN REPLY @212 GOTO 191
  IF ~NumInPartyGT(1)~ THEN REPLY @213 GOTO 191
  IF ~~ THEN REPLY @214 GOTO 192
END

IF ~~ THEN BEGIN 191 // from: 195.1 190.1 190.0
  SAY @215
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBPROMO5")~ EXIT
END

IF ~~ THEN BEGIN 192 // from: 190.2
  SAY @216
  IF ~~ THEN GOTO 193
END

IF ~~ THEN BEGIN 193 // from: 192.0
  SAY @217
  IF ~~ THEN GOTO 194
END

IF ~~ THEN BEGIN 194 // from: 193.0
  SAY @218
  IF ~~ THEN DO ~SetGlobal("CbPartyLeaderBecomesMayor","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBPROMO6")~ EXIT
END

IF ~Global("CbPartyHasKilledAllBandits","GLOBAL",3)
Global("CbPartyLeaderBecomesMayor","GLOBAL",2)~ THEN BEGIN 195
  SAY @219
  IF ~~ THEN REPLY @220 GOTO 196
  IF ~~ THEN REPLY @221 GOTO 191
END

IF ~~ THEN BEGIN 196 // from: 195.0
  SAY @222
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyLeaderBecomesMayor","GLOBAL",3)~ THEN BEGIN 197
  SAY @223
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 198 // from: 127.1
  SAY @224
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 199 // from: 50.0
  SAY @225
  IF ~~ THEN DO ~SetGlobal("CbRecruiting","GLOBAL",1)
SetGlobal("CbPartySquadCreated","GLOBAL",1)~ 
UNSOLVED_JOURNAL @50104 EXIT
END

IF ~~ THEN BEGIN 200 // from: 64.1
  SAY @226
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 201 // from: 64.2
  SAY @227
  IF ~~ THEN REPLY @228 GOTO 202
END

IF ~~ THEN BEGIN 202 // from: 201.0
  SAY @229
  IF ~~ THEN REPLY @230 EXIT
  IF ~~ THEN REPLY @231 GOTO 68
  IF ~~ THEN REPLY @232 GOTO 68
  IF ~~ THEN REPLY @233 GOTO 72
END

IF ~~ THEN BEGIN 203 // from: 64.3
  SAY @82
  IF ~~ THEN REPLY @234 GOTO 77
  IF ~~ THEN REPLY @235 GOTO 78
END

IF ~~ THEN BEGIN 204 // from: 98.6
  SAY @236
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 205 // from: 151.1
  SAY @237
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 206 // from: 151.2
  SAY @238
  IF ~~ THEN GOTO 207
END

IF ~~ THEN BEGIN 207 // from: 206.0
  SAY @239
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 208 // from: 167.1
  SAY @240
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 209 // from: 167.2
  SAY @241
  IF ~~ THEN GOTO 210
END

IF ~~ THEN BEGIN 210 // from: 209.0
  SAY @242
  IF ~~ THEN EXIT
END
