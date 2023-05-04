BEGIN ~CHARLOTJ~

IF ~Global("CbCharlotteExplainsFallenRanger","LOCALS",1)
!Global("CbCharlotteInstructsCrossingRivers","LOCALS",1)
!Global("CbCharlotteAndTheSpy","AR4230",1)
!AreaCheck("AR4330")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6
  IF ~~ THEN DO ~SetGlobal("CbCharlotteExplainsFallenRanger","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @8
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @9
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @10
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @11
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @12
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @13
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @14
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @15
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @16
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @17
  IF ~~ THEN REPLY @18 DO ~SetGlobal("CbCharlotteExplainsFallenRanger","LOCALS",4)~ EXIT
  IF ~~ THEN REPLY @19 DO ~SetGlobal("CbCharlotteExplainsFallenRanger","LOCALS",5)~ EXIT
END

IF ~Global("CbCharlotteExplainsFallenRanger","LOCALS",6)
GlobalTimerExpired("CbCleanRiverChionthar","GLOBAL")
!Global("CbCharlotteWantsToGoChiontharAgain","LOCALS",1)
!Global("CbCharlotteInstructsCrossingRivers","LOCALS",1)
!Global("CbCharlotteAndTheSpy","AR4230",1)
!AreaCheck("AR4330")
!AreaCheck("AR4220")~ THEN BEGIN 15
  SAY @20
  IF ~!Global("CbRefusedCharlotteRiver","LOCALS",3)~ THEN REPLY @21 GOTO 16
  IF ~!Global("CbRefusedCharlotteRiver","LOCALS",3)~ THEN REPLY @22 GOTO 86
  IF ~!Global("CbRefusedCharlotteRiver","LOCALS",3)~ THEN REPLY @23 GOTO 87
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 17
  IF ~~ THEN REPLY @26 GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @27
  IF ~~ THEN DO ~SetGlobal("CbCharlotteExplainsFallenRanger","LOCALS",9)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY @28
  IF ~~ THEN DO ~SetGlobal("CbCharlotteExplainsFallenRanger","LOCALS",7)
SetGlobalTimer("CbCharlotteRemindsChionthar","LOCALS",ONE_DAY)~ EXIT
END

IF ~Global("CbCharlotteExplainsFallenRanger","LOCALS",8)
!Global("CbCharlotteInstructsCrossingRivers","LOCALS",1)
!Global("CbCharlotteAndTheSpy","AR4230",1)
!AreaCheck("AR4330")
!AreaCheck("AR4220")~ THEN BEGIN 19
  SAY @29
  IF ~~ THEN REPLY @30 DO ~SetGlobal("CbCharlotteExplainsFallenRanger","LOCALS",9)~ EXIT
  IF ~~ THEN REPLY @31 DO ~SetGlobal("CbCharlotteExplainsFallenRanger","LOCALS",9)~ EXIT
END

IF ~Global("CbCharlotteExplainsFallenRanger","LOCALS",10)
!Global("CbCharlotteInstructsCrossingRivers","LOCALS",1)
!Global("CbCharlotteAndTheSpy","AR4230",1)
!AreaCheck("AR4330")~ THEN BEGIN 20
  SAY @32
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @33
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 23
  IF ~~ THEN REPLY @36 GOTO 91
  IF ~~ THEN REPLY @37 GOTO 92
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @38
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 91.0 23.0
  SAY @39
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 26
  IF ~~ THEN REPLY @42 GOTO 88
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @43
  IF ~~ THEN DO 
~SetGlobal("CbCharlotteExplainsFallenRanger","LOCALS",11)
IncrementGlobal("CbCharlotteRegainsRangerhood","GLOBAL",1)
AddXPObject(Player1,50000)
AddXPObject(Player2,50000)
AddXPObject(Player3,50000)
AddXPObject(Player4,50000)
AddXPObject(Player5,50000)
AddXPObject(Player6,50000)
AddXPObject("CHARLOTT",100000)
SetGlobal("CbSelenceSaysSomethingHere","AR4220",1)~ 
JOURNAL @50114 EXIT
END

IF ~AreaCheck("AR4330")
!Global("CbCharlotteInstructsCrossingRivers","LOCALS",2)
!Global("CbGetsAcrossRiver","LOCALS",1)
!Global("CbCharlotteAndTheSpy","AR4230",1)~ THEN BEGIN 27
  SAY @44
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY @45
  IF ~~ THEN REPLY @46 DO ~SetGlobal("CbCharlotteInstructsCrossingRivers","LOCALS",2)~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY @47
  IF ~~ THEN REPLY @48 GOTO 30
  IF ~~ THEN REPLY @49 GOTO 94
  IF ~~ THEN REPLY @50 GOTO 95
END

IF ~~ THEN BEGIN 30 // from: 95.0 29.0
  SAY @51
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @52
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY @53
  IF ~~ THEN REPLY @54 GOTO 33
  IF ~~ THEN REPLY @55 GOTO 37
  IF ~~ THEN REPLY @56 GOTO 38
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY @57
  IF ~~ THEN REPLY @58 DO ~SetGlobal("CbCharlotteInstructsCrossingRivers","LOCALS",2)~ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 38.0 37.0 33.0
  SAY @59
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @60
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 94.0 35.0
  SAY @61
  IF ~~ THEN DO ~SetGlobal("CbCharlotteInstructsCrossingRivers","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 32.1
  SAY @62
  IF ~~ THEN REPLY @63 GOTO 34
END

IF ~~ THEN BEGIN 38 // from: 32.2
  SAY @64
  IF ~~ THEN REPLY @63 GOTO 34
END

IF ~AreaCheck("AR4330")
Global("CbGetsAcrossRiver","LOCALS",1)
!Global("CbCharlotteAndTheSpy","AR4230",1)~ THEN BEGIN 39
  SAY @65
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY @66
  IF ~~ THEN REPLY @67 GOTO 41
  IF ~~ THEN REPLY @68 GOTO 96
  IF ~~ THEN REPLY @69 GOTO 97
  IF ~~ THEN REPLY @70 GOTO 98
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY @71
  IF ~~ THEN DO ~IncrementGlobal("CbCharlotteRegainsRangerhood","GLOBAL",1)
SetGlobal("CbGetsAcrossRiver","LOCALS",2)
ActionOverride("CBCHARLN",JumpToPoint([353.147])
AddXPObject(Player1,10000)
AddXPObject(Player2,10000)
AddXPObject(Player3,10000)
AddXPObject(Player4,10000)
AddXPObject(Player5,10000)
AddXPObject(Player6,10000)
AddXPObject("CHARLOTT",30000)~
JOURNAL @50113 EXIT
END

IF ~AreaCheck("AR4230")
Global("CbPartyHuntsSpy","GLOBAL",1)
Global("CbCharlotteStartsTheInquisition","LOCALS",1)~ THEN BEGIN 42
  SAY @72
  IF ~~ THEN REPLY @73 GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY @74
  IF ~~ THEN REPLY @75 GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY @76
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY @77
  IF ~~ THEN DO ~SetGlobal("CbCharlotteStartsTheInquisition","LOCALS",2)~ EXIT
END

IF ~AreaCheck("AR4230")
Global("CbOneSpyDown","GLOBAL",1)
Global("CbPartyInvestigatesLeads","GLOBAL",2)
Global("CbCharlotteAndTheSpy","LOCALS",1)~ THEN BEGIN 46
  SAY @78
  IF ~!InParty("Imoen2")~ THEN REPLY @79 GOTO 47
  IF ~InParty("Imoen2")~ THEN REPLY @80 GOTO 52
  IF ~~ THEN REPLY @81 GOTO 48
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY @82
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 48 // from: 46.2
  SAY @83
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY @84
  IF ~~ THEN DO ~SetGlobal("CbCharlotteAndTheSpy","LOCALS",2)~ EXIT
END

IF ~AreaCheck("AR4230")
Global("CbOneSpyDown","GLOBAL",2)
Global("CbPartyInvestigatesLeads","GLOBAL",2)
Global("CbCharlotteAndTheSpyII","LOCALS",1)~ THEN BEGIN 50
  SAY @85
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 51 // from: 47.0
  SAY @86
  IF ~~ THEN DO ~SetGlobal("CbCharlotteAndTheSpy","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 52 // from: 46.1
  SAY @87
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY @84
  IF ~~ THEN DO ~SetGlobal("CbCharlotteAndTheSpy","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 54 // from: 50.0
  SAY @88
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY @89
  IF ~~ THEN DO ~SetGlobal("CbCharlotteAndTheSpyII","LOCALS",4)~ EXIT
END

IF ~AreaCheck("AR4230")
Global("CbOneSpyDown","GLOBAL",3)
Global("CbPartyInvestigatesLeads","GLOBAL",2)
Global("CbCharlotteAndTheSpy3","LOCALS",1)~ THEN BEGIN 56
  SAY @90
  IF ~~ THEN REPLY @91 GOTO 57
  IF ~~ THEN REPLY @92 GOTO 58
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY @93
  IF ~~ THEN DO ~SetGlobal("CbCharlotteAndTheSpy3","LOCALS",6)~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 56.1
  SAY @94
  IF ~~ THEN DO ~SetGlobal("CbCharlotteAndTheSpy3","LOCALS",6)~ EXIT
END

IF ~AreaCheck("AR4230")
Global("CbOneSpyDown","GLOBAL",4)
Global("CbPartyInvestigatesLeads","GLOBAL",2)
Global("CbCharlotteAndTheSpy4","LOCALS",1)~ THEN BEGIN 59
  SAY @95
  IF ~~ THEN REPLY @96 GOTO 60
  IF ~~ THEN REPLY @97 GOTO 64
  IF ~~ THEN REPLY @98 GOTO 66
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY @99
  IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY @100
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 65.0 61.0
  SAY @101
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY @102
  IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 64 // from: 59.1
  SAY @99
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY @100
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 66 // from: 59.2
  SAY @103
  IF ~~ THEN DO ~SetGlobal("CbCharlotteAndTheSpy4","LOCALS",8)~ EXIT
END

IF ~AreaCheck("AR4230")
Global("CbOneSpyDown","GLOBAL",5)
Global("CbPartyInvestigatesLeads","GLOBAL",2)
Global("CbCharlotteAndTheSpy5","LOCALS",1)~ THEN BEGIN 67
  SAY @104
  IF ~~ THEN REPLY @105 GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY @106
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY @107
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY @108
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY @109
  IF ~~ THEN DO ~SetGlobal("CbCharlotteAndTheSpy5","LOCALS",10)~ EXIT
END

IF ~Global("CbCharlotteAndTheSpy6","LOCALS",1)
Global("CbPartyInvestigatesLeads","GLOBAL",4)~ THEN BEGIN 72
  SAY @110
  IF ~Global("CbSpyIs_Ranger","GLOBAL",1)~ THEN GOTO 73
  IF ~Global("CbSpyIs_Charlie","GLOBAL",1)~ THEN GOTO 74
  IF ~Global("CbSpyIs_Fighter","GLOBAL",1)~ THEN GOTO 75
  IF ~Global("CbSpyIs_Mayor","GLOBAL",1)~ THEN GOTO 76
  IF ~Global("CbSpyIs_Miller","GLOBAL",1)~ THEN GOTO 77
  IF ~Global("CbSpyIs_Winthrop","GLOBAL",1)~ THEN GOTO 78
  IF ~Global("CbSpyIs_SSC","GLOBAL",1)~ THEN GOTO 79
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY @111
  IF ~~ THEN DO ~SetGlobal("CbCharlotteAndTheSpy6","LOCALS",12)~ EXIT
END

IF ~~ THEN BEGIN 74 // from: 72.1
  SAY @112
  IF ~~ THEN DO ~SetGlobal("CbCharlotteAndTheSpy6","LOCALS",12)~ EXIT
END

IF ~~ THEN BEGIN 75 // from: 72.2
  SAY @113
  IF ~~ THEN DO ~SetGlobal("CbCharlotteAndTheSpy6","LOCALS",12)~ EXIT
END

IF ~~ THEN BEGIN 76 // from: 72.3
  SAY @114
  IF ~~ THEN DO ~SetGlobal("CbCharlotteAndTheSpy6","LOCALS",12)~ EXIT
END

IF ~~ THEN BEGIN 77 // from: 72.4
  SAY @115
  IF ~~ THEN DO ~SetGlobal("CbCharlotteAndTheSpy6","LOCALS",12)~ EXIT
END

IF ~~ THEN BEGIN 78 // from: 72.5
  SAY @116
  IF ~~ THEN DO ~SetGlobal("CbCharlotteAndTheSpy6","LOCALS",12)~ EXIT
END

IF ~~ THEN BEGIN 79 // from: 72.6
  SAY @117
  IF ~~ THEN DO ~SetGlobal("CbCharlotteAndTheSpy6","LOCALS",12)~ EXIT
END

IF ~Global("CbCharlotteSaysThis","LOCALS",1)
Global("CbPartyIsInSoubarMilitia","GLOBAL",5)~ THEN BEGIN 80
  SAY @118
  IF ~~ THEN REPLY @119 GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY @120
  IF ~~ THEN DO ~IncrementGlobal("CbCharlotteRegainsRangerhood","GLOBAL",1)
SetGlobal("CbCharlotteSaysThis","LOCALS",2)
AddXPObject(Player1,50000)
AddXPObject(Player2,50000)
AddXPObject(Player3,50000)
AddXPObject(Player4,50000)
AddXPObject(Player5,50000)
AddXPObject(Player6,50000)
AddXPObject("CHARLOTT",100000)~ EXIT
END

IF ~Global("CbCharlotteRegainsRangerhood","GLOBAL",3)
Global("CbCharlotteRangerAgain","LOCALS",1)~ THEN BEGIN 82
  SAY @121
  IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY @122
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 83.0
  SAY @123
  IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 85 // from: 84.0
  SAY @124
  IF ~~ THEN DO ~AddXPObject(Player1,100000)
AddXPObject(Player2,100000)
AddXPObject(Player3,100000)
AddXPObject(Player4,100000)
AddXPObject(Player5,100000)
AddXPObject(Player6,100000)
AddXPObject("CHARLOTT",200000)
EraseJournalEntry(@50113)
EraseJournalEntry(@50114)
ApplySpell(Myself,GAIN_ONE_CHA_PERMANENT)
ApplySpell(Myself,GAIN_ONE_CHA_PERMANENT)
RegainRangerHood()
SetGlobal("CbCharlotteRangerAgain","LOCALS",2)~ JOURNAL @50208 EXIT
END

IF ~~ THEN BEGIN 86 // from: 15.1
  SAY @28
  IF ~~ THEN DO ~SetGlobalTimer("CbCleanRiverChionthar","GLOBAL",TWO_DAYS)
SetGlobal("CbCharlotteExplainsFallenRanger","LOCALS",4)~ EXIT
END

IF ~~ THEN BEGIN 87 // from: 15.2
  SAY @125
  IF ~~ THEN DO ~IncrementGlobal("CbRefusedCharlotteRiver","LOCALS",1)
SetGlobalTimer("CbCleanRiverChionthar","GLOBAL",FOUR_DAYS)
SetGlobal("CbCharlotteExplainsFallenRanger","LOCALS",4)~ EXIT
END

IF ~~ THEN BEGIN 88 // from: 25.1
  SAY @126
  IF ~~ THEN REPLY @127 GOTO 89
  IF ~~ THEN REPLY @128 GOTO 90
END

IF ~~ THEN BEGIN 89 // from: 88.0
  SAY @129
  IF ~~ THEN DO ~SetGlobal("CbCharlotteExplainsFallenRanger","LOCALS",11)
IncrementGlobal("CbCharlotteRegainsRangerhood","GLOBAL",1)
AddXPObject(Player1,150000)
AddXPObject(Player2,150000)
AddXPObject(Player3,150000)
AddXPObject(Player4,150000)
AddXPObject(Player5,150000)
AddXPObject(Player6,150000)
AddXPObject("CHARLOTT",200000)
SetGlobal("CbSelenceSaysSomethingHere","AR4220",1)~ 
JOURNAL @50114 EXIT
END

IF ~~ THEN BEGIN 90 // from: 88.1
  SAY @130
  IF ~~ THEN DO ~SetGlobal("CbCharlotteExplainsFallenRanger","LOCALS",11)
IncrementGlobal("CbCharlotteRegainsRangerhood","GLOBAL",1)
AddXPObject(Player1,50000)
AddXPObject(Player2,50000)
AddXPObject(Player3,50000)
AddXPObject(Player4,50000)
AddXPObject(Player5,50000)
AddXPObject(Player6,50000)
AddXPObject("CHARLOTT",100000)
SetGlobal("CbSelenceSaysSomethingHere","AR4220",1)~ 
JOURNAL @50114 EXIT
END

IF ~~ THEN BEGIN 91 // from: 22.1
  SAY @131
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 92 // from: 22.2
  SAY @132
  IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY @133
  IF ~~ THEN DO ~SetGlobal("CbCharlotteExplainsFallenRanger","LOCALS",11)
IncrementGlobal("CbCharlotteRegainsRangerhood","GLOBAL",1)
AddXPObject(Player1,50000)
AddXPObject(Player2,50000)
AddXPObject(Player3,50000)
AddXPObject(Player4,50000)
AddXPObject(Player5,50000)
AddXPObject(Player6,50000)
AddXPObject("CHARLOTT",100000)
SetGlobal("CbSelenceSaysSomethingHere","AR4220",1)~ 
JOURNAL @50114 EXIT
END

IF ~~ THEN BEGIN 94 // from: 95.1 29.1
  SAY @134
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 95 // from: 29.2
  SAY @135
  IF ~~ THEN REPLY @48 GOTO 30
  IF ~~ THEN REPLY @49 GOTO 94
END

IF ~~ THEN BEGIN 96 // from: 40.1
  SAY @136
  IF ~~ THEN DO ~IncrementGlobal("CbCharlotteRegainsRangerhood","GLOBAL",1)
SetGlobal("CbGetsAcrossRiver","LOCALS",2)
ActionOverride("CBCHARLN",JumpToPoint([353.147])
AddXPObject(Player1,10000)
AddXPObject(Player2,10000)
AddXPObject(Player3,10000)
AddXPObject(Player4,10000)
AddXPObject(Player5,10000)
AddXPObject(Player6,10000)
AddXPObject("CHARLOTT",30000)~ 
JOURNAL @50113 EXIT
END

IF ~~ THEN BEGIN 97 // from: 40.2
  SAY @137
  IF ~~ THEN DO ~IncrementGlobal("CbCharlotteRegainsRangerhood","GLOBAL",1)
SetGlobal("CbGetsAcrossRiver","LOCALS",2)
ActionOverride("CBCHARLN",JumpToPoint([353.147])
AddXPObject(Player1,10000)
AddXPObject(Player2,10000)
AddXPObject(Player3,10000)
AddXPObject(Player4,10000)
AddXPObject(Player5,10000)
AddXPObject(Player6,10000)
AddXPObject("CHARLOTT",30000)~ 
JOURNAL @50113 EXIT
END

IF ~~ THEN BEGIN 98 // from: 40.3
  SAY @138
  IF ~~ THEN DO ~IncrementGlobal("CbCharlotteRegainsRangerhood","GLOBAL",1)
SetGlobal("CbGetsAcrossRiver","LOCALS",2)
ActionOverride("CBCHARLN",JumpToPoint([353.147])
AddXPObject(Player1,10000)
AddXPObject(Player2,10000)
AddXPObject(Player3,10000)
AddXPObject(Player4,10000)
AddXPObject(Player5,10000)
AddXPObject(Player6,10000)
AddXPObject("CHARLOTT",30000)~ 
JOURNAL @50113 EXIT
END

IF ~~ THEN BEGIN 99 // from: 63.0
  SAY @139
  IF ~~ THEN DO ~SetGlobal("CbCharlotteAndTheSpy4","LOCALS",8)~ EXIT
END

IF ~~ THEN BEGIN 100 // from: NALIAJ:324.0
  SAY @140
  IF ~~ THEN EXTERN ~NALIAJ~ SOS160
END

IF ~~ THEN BEGIN 101 // from: CERNDJ:145.0
  SAY @141
  IF ~~ THEN GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY @142
  IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.0
  SAY @143
  IF ~~ THEN EXTERN ~CERNDJ~ SOS74
END

IF ~~ THEN BEGIN 104 // from: CERNDJ:146.0
  SAY @144
  IF ~~ THEN EXTERN ~CERNDJ~ SOS75
END

IF ~~ THEN BEGIN 105 // from: NALIAJ:328.0
  SAY @145
  IF ~~ THEN GOTO 106
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY @146
  IF ~~ THEN GOTO 107
END

IF ~~ THEN BEGIN 107 // from: 106.0
  SAY @147
  IF ~~ THEN EXTERN ~NALIAJ~ SOS158
END

IF ~~ THEN BEGIN 108 // from: NALIAJ:329.0
  SAY @148
  IF ~~ THEN EXTERN ~NALIAJ~ SOS159
END

IF ~~ THEN BEGIN 109 // from: NALIAJ:331.0
  SAY @149
  IF ~~ THEN EXTERN ~NALIAJ~ SOS165
END

IF ~~ THEN BEGIN 110 // from: NALIAJ:333.0
  SAY @150
  IF ~IsValidForPartyDialog("jaheira")~ THEN GOTO 111
  IF ~!IsValidForPartyDialog("jaheira")~ THEN DO ~SetGlobal("CbCharlotteAndNaliaGirlTalk","GLOBAL",5)~ GOTO 112
END

IF ~~ THEN BEGIN 111 // from: 110.0
  SAY @151
  IF ~~ THEN EXTERN ~JAHEIRAJ~ SOS141
END

IF ~~ THEN BEGIN 112 // from: 110.1 NALIAJ:336.0
  SAY @152
  IF ~~ THEN EXTERN ~NALIAJ~ SOS167
END

IF ~~ THEN BEGIN 113 // from: JAHEIRAJ:537.0
  SAY @153
  IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 114 // from: 113.0
  SAY @154
  IF ~~ THEN EXTERN ~NALIAJ~ SOS169
END

IF ~~ THEN BEGIN 115 // from:
  SAY @154
  IF ~~ THEN EXTERN ~NALIAJ~ SOS169
END

IF ~~ THEN BEGIN 116 // from:
  SAY @155
  IF ~~ THEN EXTERN ~NALIAJ~ SOS171
END

IF ~~ THEN BEGIN 117 // from: NALIAJ:338.0
  SAY @156
  IF ~~ THEN GOTO 118
END

IF ~~ THEN BEGIN 118 // from: 119.0 117.0
  SAY @157
  IF ~~ THEN EXTERN ~NALIAJ~ SOS172
END

IF ~~ THEN BEGIN 119 // from: NALIAJ:338.1
  SAY @158
  IF ~~ THEN GOTO 118
END

IF ~~ THEN BEGIN 120 // from: NALIAJ:339.0 NALIAJ:335.1
  SAY @159
  IF ~~ THEN GOTO 121
END

IF ~~ THEN BEGIN 121 // from: 120.0
  SAY @160
  IF ~Gender(Protagonist,MALE)
!InParty("jaheira")~ THEN GOTO 122
  IF ~Gender(Protagonist,MALE)
InParty("jaheira")~ THEN GOTO 124
  IF ~!Gender(Protagonist,MALE)
!InParty("jaheira")~ THEN GOTO 125
  IF ~!Gender(Protagonist,MALE)
InParty("jaheira")~ THEN GOTO 127
END

IF ~~ THEN BEGIN 122 // from: 121.0
  SAY @161
  IF ~~ THEN GOTO 123
END

IF ~~ THEN BEGIN 123 // from: 124.0 122.0
  SAY @162
  IF ~~ THEN DO ~SetGlobal("CbCharlotteAndNaliaGirlTalk","GLOBAL",12)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBNALIAC")~ EXIT
END

IF ~~ THEN BEGIN 124 // from: 121.1
  SAY @163
  IF ~~ THEN GOTO 123
END

IF ~~ THEN BEGIN 125 // from: 121.2
  SAY @164
  IF ~~ THEN GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 127.0 125.0
  SAY @165
  IF ~~ THEN DO ~SetGlobal("CbCharlotteAndNaliaGirlTalk","GLOBAL",12)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBNALIAC")~ EXIT
END

IF ~~ THEN BEGIN 127 // from: 121.3
  SAY @166
  IF ~~ THEN GOTO 126
END

IF ~Global("CbCharlotteAndNaliaGirlTalk","GLOBAL",12)~ THEN BEGIN 128 // from:
  SAY @167
  IF ~~ THEN EXTERN ~NALIAJ~ SOS173
END

IF ~Global("CbCharlotteAndNaliaGirlTalk","GLOBAL",14)
GlobalTimerExpired("CbCharlotteAndNaliaThirdBanter","GLOBAL")~ THEN BEGIN 129
  SAY @168
  IF ~~ THEN EXTERN ~NALIAJ~ SOS174
END

IF ~~ THEN BEGIN 130 // from: NALIAJ:341.0
  SAY @169
  IF ~~ THEN EXTERN ~NALIAJ~ SOS175
END

IF ~~ THEN BEGIN 131 // from:
  SAY @170
  IF ~~ THEN EXTERN ~NALIAJ~ SOS176
END

IF ~~ THEN BEGIN 132 // from: NALIAJ:349.0 NALIAJ:348.0 NALIAJ:347.0 NALIAJ:345.0 NALIAJ:342.0
  SAY @171
  IF ~~ THEN EXTERN ~NALIAJ~ SOS183
END

IF ~~ THEN BEGIN 133 // from: NALIAJ:350.0
  SAY @172
  IF ~~ THEN GOTO 134
END

IF ~~ THEN BEGIN 134 // from: 133.0
  SAY @173
  IF ~~ THEN EXTERN ~NALIAJ~ SOS184
END

IF ~~ THEN BEGIN 135 // from: NALIAJ:351.0
  SAY @174
  IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 135.0
  SAY @175
  IF ~~ THEN EXTERN ~NALIAJ~ SOS185
END

IF ~~ THEN BEGIN 137 // from: NALIAJ:352.0
  SAY @176
  IF ~~ THEN GOTO 138
END

IF ~~ THEN BEGIN 138 // from: 137.0
  SAY @177
  IF ~~ THEN EXTERN ~NALIAJ~ SOS186
END

IF ~~ THEN BEGIN 139 // from: NALIAJ:353.0
  SAY @178
  IF ~IsValidForPartyDialog("jaheira")~ THEN EXTERN ~JAHEIRAJ~ SOS151
  IF ~!IsValidForPartyDialog("jaheira")~ THEN EXTERN ~NALIAJ~ SOS187
END

IF ~~ THEN BEGIN 140 // from: NALIAJ:364.0 NALIAJ:363.0 NALIAJ:362.0 NALIAJ:361.0 NALIAJ:360.0 NALIAJ:359.0 NALIAJ:358.0 NALIAJ:357.0 NALIAJ:356.0 NALIAJ:355.0
  SAY @179
  IF ~~ THEN DO ~SetGlobal("CbCharlotteAndNaliaGirlTalk","GLOBAL",32)
SetGlobalTimer("CbCharlotteAndNaliaFourthBanter","GLOBAL",TWO_DAYS)
AddexperienceParty(20000)
AddXPObject("NALIA",10000)
AddXPObject("CHARLOTT",10000)~ EXIT
END

IF ~Global("CbCharlotteAndNaliaGirlTalk","GLOBAL",32)
GlobalTimerExpired("CbCharlotteAndNaliaFourthBanter","GLOBAL")~ THEN BEGIN 141
  SAY @180
  IF ~~ THEN EXTERN ~NALIAJ~ SOS198
END

IF ~~ THEN BEGIN 142 // from: NALIAJ:366.0
  SAY @181
  IF ~~ THEN EXTERN ~NALIAJ~ SOS200
END

IF ~~ THEN BEGIN 143 // from: NALIAJ:368.0
  SAY @182
  IF ~~ THEN DO ~SetGlobal("CbCharlotteAndNaliaGirlTalk","GLOBAL",37)
SetGlobal("CbNaliaAndCharlotteFriends4Eva","GLOBAL",1)
AddexperienceParty(30000)
AddXPObject("NALIA",20000)
AddXPObject("CHARLOTT",20000)~ EXIT
END
