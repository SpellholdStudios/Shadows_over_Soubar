BEGIN ~CB351GD1~

IF ~PartyHasItem("CBMILT01")
OR(1)
PartyHasItem("CBMILT11")
Global("CbThisGuysDialogFudged","LOCALS",0)
!Global("CbTrainingGuardsBedtime","LOCALS",1)
!Global("CbSergeantOpensTrainingArea","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("CbThisGuysDialogFudged","LOCALS",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 6.0 0.0
  SAY @1
  IF ~HasItemEquiped("CBMILT11",LastTalkedToBy())~ THEN GOTO 2
  IF ~!HasItemEquiped("CBMILT11",LastTalkedToBy())~ THEN GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2
  IF ~~ THEN DO ~TakePartyItemAll("CBMILT01")
DestroyItem("CBMILT01")
DestroyItem("CBMILT01")
DestroyItem("CBMILT01")
DestroyItem("CBMILT01")
DestroyItem("CBMILT01")
DestroyItem("CBMILT01")
TakePartyItemAll("CBMILT02")
DestroyItem("CBMILT02")
DestroyItem("CBMILT02")
DestroyItem("CBMILT02")
DestroyItem("CBMILT02")
DestroyItem("CBMILT02")
DestroyItem("CBMILT02")
TakePartyItemAll("CBMILT03")
DestroyItem("CBMILT03")
DestroyItem("CBMILT03")
DestroyItem("CBMILT03")
DestroyItem("CBMILT03")
DestroyItem("CBMILT03")
DestroyItem("CBMILT03")
TakePartyItemAll("CBMILT04")
DestroyItem("CBMILT04")
DestroyItem("CBMILT04")
DestroyItem("CBMILT04")
DestroyItem("CBMILT04")
DestroyItem("CBMILT04")
DestroyItem("CBMILT04")
TakePartyItemAll("CBMILT11")
DestroyItem("CBMILT11")
DestroyItem("CBMILT11")
DestroyItem("CBMILT11")
DestroyItem("CBMILT11")
DestroyItem("CBMILT11")
DestroyItem("CBMILT11")
TakePartyItemAll("CBMILT12")
DestroyItem("CBMILT12")
DestroyItem("CBMILT12")
DestroyItem("CBMILT12")
DestroyItem("CBMILT12")
DestroyItem("CBMILT12")
DestroyItem("CBMILT12")
TakePartyItemAll("CBMILT13")
DestroyItem("CBMILT13")
DestroyItem("CBMILT13")
DestroyItem("CBMILT13")
DestroyItem("CBMILT13")
DestroyItem("CBMILT13")
DestroyItem("CBMILT13")
TakePartyItemAll("CBMILT14")
DestroyItem("CBMILT14")
DestroyItem("CBMILT14")
DestroyItem("CBMILT14")
DestroyItem("CBMILT14")
DestroyItem("CBMILT14")
DestroyItem("CBMILT14")
TakePartyItemAll("CBMILT21")
DestroyItem("CBMILT21")
DestroyItem("CBMILT21")
DestroyItem("CBMILT21")
DestroyItem("CBMILT21")
DestroyItem("CBMILT21")
DestroyItem("CBMILT21")
TakePartyItemAll("CBMILT22")
DestroyItem("CBMILT22")
DestroyItem("CBMILT22")
DestroyItem("CBMILT22")
DestroyItem("CBMILT22")
DestroyItem("CBMILT22")
DestroyItem("CBMILT22")~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @3
  IF ~~ THEN DO ~StartStore("CB351GD1",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~Global("CbPartyTrainedTriel","GLOBAL",1)~ THEN REPLY @6 GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @7
  IF ~~ THEN DO ~StartStore("CB351GD1",LastTalkedToBy())~ EXIT
END

IF ~Global("CbITrainPCs","LOCALS",0)
!Global("CbTrainingGuardsBedtime","LOCALS",1)
!Global("CbStopSecondTrainingOption","LOCALS",2)
!Global("CbSergeantOpensTrainingArea","GLOBAL",1)~ THEN BEGIN 7
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 8
  IF ~Global("CbPartyTrainedTriel","GLOBAL",1)
!Global("CbStopInitialTrainingOption","LOCALS",1)~ THEN REPLY @8 GOTO 9
  IF ~Global("CbStopInitialTrainingOption","LOCALS",1)
!Global("CbStopSecondTrainingOption","LOCALS",1)~ THEN REPLY @9 GOTO 19
  IF ~Global("CbStopSecondTrainingOption","LOCALS",1)
!Global("CbPartyTrainedTriel","GLOBAL",2)~ THEN REPLY @10 GOTO 24
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @11 /* #76522 */
  IF ~~ THEN DO ~StartStore("CB351GD1",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 4.1
  SAY @12
  IF ~Global("CbTrielThrust","AR4351",0)~ THEN REPLY @13 GOTO 10
  IF ~Global("CbTrielSlash","AR4351",0)~ THEN REPLY @14 GOTO 11
  IF ~Global("CbTrielOverhand","AR4351",0)~ THEN REPLY @15 GOTO 12
  IF ~Global("CbTrielRanged","AR4351",0)~ THEN REPLY @16 GOTO 17
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @17
  IF ~~ THEN DO ~SetGlobal("CbTrielThrust","AR4351",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @18
  IF ~~ THEN DO ~SetGlobal("CbTrielSlash","AR4351",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY @19
  IF ~~ THEN DO ~SetGlobal("CbTrielOverhand","AR4351",1)~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.3
  SAY @20
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @21
  IF ~~ THEN DO ~SetGlobal("CbTrielRanged","AR4351",1)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 7.2
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @24
  IF ~Global("CbTrielForm4","AR4351",0)~ THEN REPLY @25 GOTO 21
  IF ~Global("CbTrielForm6","AR4351",0)~ THEN REPLY @26 GOTO 22
  IF ~Global("CbTrielForm9","AR4351",0)~ THEN REPLY @27 GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @28
  IF ~~ THEN DO ~SetGlobal("CbTrielForm4","AR4351",1)~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY @29
  IF ~~ THEN DO ~SetGlobal("CbTrielForm6","AR4351",1)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.2
  SAY @30
  IF ~~ THEN DO ~SetGlobal("CbTrielForm9","AR4351",1)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 7.3
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 26
  IF ~~ THEN REPLY @35 GOTO 27
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @36
  IF ~~ THEN DO ~SetGlobal("CbITrainPCs","LOCALS",1)
SetGlobal("CbStopSecondTrainingOption","LOCALS",2)
SetGlobal("CbPartyTrainedTriel","GLOBAL",2)
SetGlobal("CbTrielPatrolTown","AR4351",1)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY @36
  IF ~~ THEN DO ~SetGlobal("CbITrainPCs","LOCALS",1)
SetGlobal("CbStopSecondTrainingOption","LOCALS",2)
SetGlobal("CbPartyTrainedTriel","GLOBAL",2)
SetGlobal("CbTrielStandGuard","AR4351",1)~ EXIT
END

IF ~Global("CbTrainingGuardsBedtime","LOCALS",1)~ THEN BEGIN 28
  SAY @37
  IF ~~ THEN DO ~FadeToColor([40.0],0)
Wait(5)
Deactivate(Myself)
ActionOverride("CB351GD2",Deactivate("CB351GD2"))
ActionOverride("CB351GD3",Deactivate("CB351GD3"))
FadeFromColor([40.0],0)~ EXIT
END

IF ~GlobalGT("CbPartyIsInSoubarMilitia","GLOBAL",5)
!Global("CbTrainingGuardsBedtime","LOCALS",1)
!Global("CbSergeantOpensTrainingArea","GLOBAL",1)~ THEN BEGIN 29
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 30
  IF ~~ THEN REPLY @40 GOTO 31
  IF ~~ THEN REPLY @41 GOTO 126
END

IF ~~ THEN BEGIN 30 // from: 127.0 29.0
  SAY @42
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31 // from: 128.1 127.1 29.1
  SAY @43
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY @44
  IF ~~ THEN REPLY @45 GOTO 33
  IF ~~ THEN REPLY @46 GOTO 124
  IF ~~ THEN REPLY @47 GOTO 125
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 34
  IF ~~ THEN REPLY @50 GOTO 40
  IF ~~ THEN REPLY @51 GOTO 46
  IF ~~ THEN REPLY @52 GOTO 52
  IF ~~ THEN REPLY @53 GOTO 58
  IF ~~ THEN REPLY @54 GOTO 64
  IF ~~ THEN REPLY @55 GOTO 70
  IF ~~ THEN REPLY @56 GOTO 76
  IF ~~ THEN REPLY @57 GOTO 82
  IF ~~ THEN REPLY @58 GOTO 88
  IF ~~ THEN REPLY @59 GOTO 94
  IF ~~ THEN REPLY @60 GOTO 100
  IF ~~ THEN REPLY @61 GOTO 106
  IF ~~ THEN REPLY @62 GOTO 112
  IF ~~ THEN REPLY @63 GOTO 118
  IF ~~ THEN REPLY @64 GOTO 144
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @65
  IF ~CheckStatLT(LastTalkedToBy(Myself),1,PROFICIENCYAXE)~ THEN REPLY @66 GOTO 35
  IF ~CheckStatLT(LastTalkedToBy(Myself),2,PROFICIENCYAXE)~ THEN REPLY @67 GOTO 36
  IF ~CheckStatLT(LastTalkedToBy(Myself),3,PROFICIENCYAXE)~ THEN REPLY @68 GOTO 37
  IF ~CheckStatLT(LastTalkedToBy(Myself),4,PROFICIENCYAXE)~ THEN REPLY @69 GOTO 38
  IF ~~ THEN REPLY @70 GOTO 39
  IF ~~ THEN REPLY @64 GOTO 129
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @71
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNAXE1")~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY @71
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNAXE2")~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 34.2
  SAY @71
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNAXE3")~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 34.3
  SAY @71
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNAXE4")~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 34.4
  SAY @71
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNAXE5")~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 33.1
  SAY @72
  IF ~CheckStatLT(LastTalkedToBy(Myself),1,PROFICIENCYBASTARDSWORD)~ THEN REPLY @73 GOTO 41
  IF ~CheckStatLT(LastTalkedToBy(Myself),2,PROFICIENCYBASTARDSWORD)~ THEN REPLY @74  GOTO 42
  IF ~CheckStatLT(LastTalkedToBy(Myself),3,PROFICIENCYBASTARDSWORD)~ THEN REPLY @75 GOTO 43
  IF ~CheckStatLT(LastTalkedToBy(Myself),4,PROFICIENCYBASTARDSWORD)~ THEN REPLY @76 GOTO 44
  IF ~~ THEN REPLY @77 GOTO 45
  IF ~~ THEN REPLY @64 GOTO 130
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY @78
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNBSD1")~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 40.1
  SAY @79
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNBSD2")~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 40.2
  SAY @80
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNBSD3")~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 40.3
  SAY @81
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNBSD4")~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 40.4
  SAY @82
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNBSD5")~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 33.2
  SAY @83
  IF ~~ THEN REPLY @84 GOTO 47
  IF ~~ THEN REPLY @85 GOTO 48
  IF ~~ THEN REPLY @86 GOTO 49
  IF ~~ THEN REPLY @87 GOTO 50
  IF ~~ THEN REPLY @88 GOTO 51
  IF ~~ THEN REPLY @64 GOTO 131
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY @89
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNCLB1")~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 46.1
  SAY @90
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNCLB2")~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.2
  SAY @91
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNCLB3")~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 46.3
  SAY @92
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNCLB4")~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 46.4
  SAY @93
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNCLB5")~ EXIT
END

IF ~~ THEN BEGIN 52 // from: 33.3
  SAY @94
  IF ~CheckStatLT(LastTalkedToBy(Myself),1,PROFICIENCYDAGGER)~ THEN REPLY @95 GOTO 53
  IF ~CheckStatLT(LastTalkedToBy(Myself),2,PROFICIENCYDAGGER)~ THEN REPLY @96 GOTO 54
  IF ~CheckStatLT(LastTalkedToBy(Myself),3,PROFICIENCYDAGGER)~ THEN REPLY @97 GOTO 55
  IF ~CheckStatLT(LastTalkedToBy(Myself),4,PROFICIENCYDAGGER)~ THEN REPLY @98 GOTO 56
  IF ~~ THEN REPLY @99 GOTO 57
  IF ~~ THEN REPLY @64 GOTO 132
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY @100
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNDGR1")~ EXIT
END

IF ~~ THEN BEGIN 54 // from: 52.1
  SAY @101
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNDGR2")~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 52.2
  SAY @102
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNDGR3")~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 52.3
  SAY @103
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNDGR4")~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 52.4
  SAY @104
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNDGR5")~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 33.4
  SAY @105
  IF ~CheckStatLT(LastTalkedToBy(Myself),1,PROFICIENCYFLAILMORNINGSTAR)~ THEN REPLY @106 GOTO 59
  IF ~CheckStatLT(LastTalkedToBy(Myself),2,PROFICIENCYFLAILMORNINGSTAR)~ THEN REPLY @107 GOTO 60
  IF ~CheckStatLT(LastTalkedToBy(Myself),3,PROFICIENCYFLAILMORNINGSTAR)~ THEN REPLY @108 GOTO 61
  IF ~CheckStatLT(LastTalkedToBy(Myself),4,PROFICIENCYFLAILMORNINGSTAR)~ THEN REPLY @109 GOTO 62
  IF ~~ THEN REPLY @110 GOTO 63
  IF ~~ THEN REPLY @64 GOTO 133
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY @111
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNMST1")~ EXIT
END

IF ~~ THEN BEGIN 60 // from: 58.1
  SAY @111
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNMST2")~ EXIT
END

IF ~~ THEN BEGIN 61 // from: 58.2
  SAY @111
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNMST3")~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 58.3
  SAY @111
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNMST4")~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 58.4
  SAY @111
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNMST5")~ EXIT
END

IF ~~ THEN BEGIN 64 // from: 33.5
  SAY @112
  IF ~CheckStatLT(LastTalkedToBy(Myself),1,PROFICIENCYHALBERD)~ THEN REPLY @113 GOTO 65
  IF ~CheckStatLT(LastTalkedToBy(Myself),2,PROFICIENCYHALBERD)~ THEN REPLY @114 GOTO 66
  IF ~CheckStatLT(LastTalkedToBy(Myself),3,PROFICIENCYHALBERD)~ THEN REPLY @115 GOTO 67
  IF ~CheckStatLT(LastTalkedToBy(Myself),4,PROFICIENCYHALBERD)~ THEN REPLY @116 GOTO 68
  IF ~~ THEN REPLY @117 GOTO 69
  IF ~~ THEN REPLY @64 GOTO 134
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY @118
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNHAL1")~ EXIT
END

IF ~~ THEN BEGIN 66 // from: 64.1
  SAY @119
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNHAL2")~ EXIT
END

IF ~~ THEN BEGIN 67 // from: 64.2
  SAY @119
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNHAL3")~ EXIT
END

IF ~~ THEN BEGIN 68 // from: 64.3
  SAY @119
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNHAL4")~ EXIT
END

IF ~~ THEN BEGIN 69 // from: 64.4
  SAY @120
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNHAL5")~ EXIT
END

IF ~~ THEN BEGIN 70 // from: 33.6
  SAY @121
  IF ~CheckStatLT(LastTalkedToBy(Myself),1,PROFICIENCYKATANA)
~ THEN REPLY @122 GOTO 71
  IF ~CheckStatLT(LastTalkedToBy(Myself),2,PROFICIENCYKATANA)
~ THEN REPLY @123 GOTO 72
  IF ~CheckStatLT(LastTalkedToBy(Myself),3,PROFICIENCYKATANA)
~ THEN REPLY @124 GOTO 73
  IF ~CheckStatLT(LastTalkedToBy(Myself),4,PROFICIENCYKATANA)
~ THEN REPLY @125 GOTO 74
  IF ~~ THEN REPLY @126 GOTO 75
  IF ~~ THEN REPLY @64 GOTO 135
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY @127
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNKAT1")~ EXIT
END

IF ~~ THEN BEGIN 72 // from: 70.1
  SAY @127
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNKAT2")~ EXIT
END

IF ~~ THEN BEGIN 73 // from: 70.2
  SAY @127
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNKAT3")~ EXIT
END

IF ~~ THEN BEGIN 74 // from: 70.3
  SAY @127
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNKAT4")~ EXIT
END

IF ~~ THEN BEGIN 75 // from: 70.4
  SAY @127
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNKAT5")~ EXIT
END

IF ~~ THEN BEGIN 76 // from: 33.7
  SAY @128
  IF ~CheckStatLT(LastTalkedToBy(Myself),1,PROFICIENCYLONGSWORD)~ THEN REPLY @129 GOTO 77
  IF ~CheckStatLT(LastTalkedToBy(Myself),2,PROFICIENCYLONGSWORD)~ THEN REPLY @130 GOTO 78
  IF ~CheckStatLT(LastTalkedToBy(Myself),2,PROFICIENCYLONGSWORD)~ THEN REPLY @131 GOTO 79
  IF ~CheckStatLT(LastTalkedToBy(Myself),3,PROFICIENCYLONGSWORD)~ THEN REPLY @132 GOTO 80
  IF ~~ THEN REPLY @133 GOTO 81
  IF ~~ THEN REPLY @64 GOTO 136
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY @134
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNLSD1")~ EXIT
END

IF ~~ THEN BEGIN 78 // from: 76.1
  SAY @134
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNLSD2")~ EXIT
END

IF ~~ THEN BEGIN 79 // from: 76.2
  SAY @134
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNLSD3")~ EXIT
END

IF ~~ THEN BEGIN 80 // from: 76.3
  SAY @134
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNLSD4")~ EXIT
END

IF ~~ THEN BEGIN 81 // from: 76.4
  SAY @134
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNLSD5")~ EXIT
END

IF ~~ THEN BEGIN 82 // from: 33.8
  SAY @135
  IF ~CheckStatLT(LastTalkedToBy(Myself),1,PROFICIENCYMACE)~ THEN REPLY @84 GOTO 83
  IF ~CheckStatLT(LastTalkedToBy(Myself),2,PROFICIENCYMACE)
~ THEN REPLY @136 GOTO 84
  IF ~CheckStatLT(LastTalkedToBy(Myself),3,PROFICIENCYMACE)
~ THEN REPLY @137 GOTO 85
  IF ~CheckStatLT(LastTalkedToBy(Myself),4,PROFICIENCYMACE)
~ THEN REPLY @138 GOTO 86
  IF ~~ THEN REPLY @139 GOTO 87
  IF ~~ THEN REPLY @64 GOTO 137
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY @140
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNMCE1")~ EXIT
END

IF ~~ THEN BEGIN 84 // from: 82.1
  SAY @140
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNMCE2")~ EXIT
END

IF ~~ THEN BEGIN 85 // from: 82.2
  SAY @140
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNMCE3")~ EXIT
END

IF ~~ THEN BEGIN 86 // from: 82.3
  SAY @140
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNMCE4")~ EXIT
END

IF ~~ THEN BEGIN 87 // from: 82.4
  SAY @140
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNMCE5")~ EXIT
END

IF ~~ THEN BEGIN 88 // from: 33.9
  SAY @141
  IF ~CheckStatLT(LastTalkedToBy(Myself),1,PROFICIENCYQUARTERSTAFF)~ THEN REPLY @142 GOTO 89
  IF ~CheckStatLT(LastTalkedToBy(Myself),2,PROFICIENCYQUARTERSTAFF)~ THEN REPLY @143 GOTO 90
  IF ~CheckStatLT(LastTalkedToBy(Myself),3,PROFICIENCYQUARTERSTAFF)~ THEN REPLY @144 GOTO 91
  IF ~CheckStatLT(LastTalkedToBy(Myself),4,PROFICIENCYQUARTERSTAFF)~ THEN REPLY @145 GOTO 92
  IF ~~ THEN REPLY @146 GOTO 93
  IF ~~ THEN REPLY @64 GOTO 138
END

IF ~~ THEN BEGIN 89 // from: 88.0
  SAY @147
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNQSF1")~ EXIT
END

IF ~~ THEN BEGIN 90 // from: 88.1
  SAY @147
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNQSF2")~ EXIT
END

IF ~~ THEN BEGIN 91 // from: 88.2
  SAY @147
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNQSF3")~ EXIT
END

IF ~~ THEN BEGIN 92 // from: 88.3
  SAY @147
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNQSF4")~ EXIT
END

IF ~~ THEN BEGIN 93 // from: 88.4
  SAY @147
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNQSF5")~ EXIT
END

IF ~~ THEN BEGIN 94 // from: 33.10
  SAY @148
  IF ~CheckStatLT(LastTalkedToBy(Myself),1,PROFICIENCYSCIMITARWAKISASHININJATO)~ THEN REPLY @149 GOTO 95
  IF ~CheckStatLT(LastTalkedToBy(Myself),2,PROFICIENCYSCIMITARWAKISASHININJATO)~ THEN REPLY @150 GOTO 96
  IF ~CheckStatLT(LastTalkedToBy(Myself),3,PROFICIENCYSCIMITARWAKISASHININJATO)~ THEN REPLY @151 GOTO 97
  IF ~CheckStatLT(LastTalkedToBy(Myself),4,PROFICIENCYSCIMITARWAKISASHININJATO)~ THEN REPLY @152 GOTO 98
  IF ~~ THEN REPLY @153 /* #76686 */ GOTO 99
  IF ~~ THEN REPLY @64 /* #76632 */ GOTO 139
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY @154
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSCM1")~ EXIT
END

IF ~~ THEN BEGIN 96 // from: 94.1
  SAY @154
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSCM2")~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 94.2
  SAY @154
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSCM3")~ EXIT
END

IF ~~ THEN BEGIN 98 // from: 94.3
  SAY @154
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSCM4")~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 94.4
  SAY @154
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSCM5")~ EXIT
END

IF ~~ THEN BEGIN 100 // from: 33.11
  SAY @155
  IF ~CheckStatLT(LastTalkedToBy(Myself),1,PROFICIENCYSHORTSWORD)
~ THEN REPLY @156 GOTO 101
  IF ~CheckStatLT(LastTalkedToBy(Myself),2,PROFICIENCYSHORTSWORD)
~ THEN REPLY @157 GOTO 102
  IF ~CheckStatLT(LastTalkedToBy(Myself),3,PROFICIENCYSHORTSWORD)
~ THEN REPLY @158 GOTO 103
  IF ~CheckStatLT(LastTalkedToBy(Myself),4,PROFICIENCYSHORTSWORD)
~ THEN REPLY @159 GOTO 104
  IF ~~ THEN REPLY @160 GOTO 105
  IF ~~ THEN REPLY @64 GOTO 140
END

IF ~~ THEN BEGIN 101 // from: 100.0
  SAY @161
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSSD1")~ EXIT
END

IF ~~ THEN BEGIN 102 // from: 100.1
  SAY @161
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSSD2")~ EXIT
END

IF ~~ THEN BEGIN 103 // from: 100.2
  SAY @161
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSSD3")~ EXIT
END

IF ~~ THEN BEGIN 104 // from: 100.3
  SAY @161
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSSD4")~ EXIT
END

IF ~~ THEN BEGIN 105 // from: 100.4
  SAY @161
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSSD5")~ EXIT
END

IF ~~ THEN BEGIN 106 // from: 33.12
  SAY @162
  IF ~CheckStatLT(LastTalkedToBy(Myself),1,PROFICIENCYSPEAR)~ THEN REPLY @163 GOTO 107
  IF ~CheckStatLT(LastTalkedToBy(Myself),2,PROFICIENCYSPEAR)~ THEN REPLY @164 GOTO 108
  IF ~CheckStatLT(LastTalkedToBy(Myself),3,PROFICIENCYSPEAR)~ THEN REPLY @165  GOTO 109
  IF ~CheckStatLT(LastTalkedToBy(Myself),4,PROFICIENCYSPEAR)~ THEN REPLY @166 GOTO 110
  IF ~~ THEN REPLY @167 GOTO 111
  IF ~~ THEN REPLY @64 GOTO 141
END

IF ~~ THEN BEGIN 107 // from: 106.0
  SAY @168
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSPR1")~ EXIT
END

IF ~~ THEN BEGIN 108 // from: 106.1
  SAY @168
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSPR2")~ EXIT
END

IF ~~ THEN BEGIN 109 // from: 106.2
  SAY @168
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSPR3")~ EXIT
END

IF ~~ THEN BEGIN 110 // from: 106.3
  SAY @168
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSPR4")~ EXIT
END

IF ~~ THEN BEGIN 111 // from: 106.4
  SAY @168
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSPR5")~ EXIT
END

IF ~~ THEN BEGIN 112 // from: 33.13
  SAY @169
  IF ~CheckStatLT(LastTalkedToBy(Myself),1,PROFICIENCYTWOHANDEDSWORD)~ THEN REPLY @170 GOTO 113
  IF ~CheckStatLT(LastTalkedToBy(Myself),2,PROFICIENCYTWOHANDEDSWORD)~ THEN REPLY @171 GOTO 114
  IF ~CheckStatLT(LastTalkedToBy(Myself),3,PROFICIENCYTWOHANDEDSWORD)~ THEN REPLY @172 GOTO 115
  IF ~CheckStatLT(LastTalkedToBy(Myself),4,PROFICIENCYTWOHANDEDSWORD)~ THEN REPLY @173 GOTO 116
  IF ~~ THEN REPLY @174 GOTO 117
  IF ~~ THEN REPLY @64 GOTO 142
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY @175
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTN2HS1")~ EXIT
END

IF ~~ THEN BEGIN 114 // from: 112.1
  SAY @175
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTN2HS2")~ EXIT
END

IF ~~ THEN BEGIN 115 // from: 112.2
  SAY @175
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTN2HS3")~ EXIT
END

IF ~~ THEN BEGIN 116 // from: 112.3
  SAY @175
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTN2HS4")~ EXIT
END

IF ~~ THEN BEGIN 117 // from: 112.4
  SAY @175
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTN2HS5")~ EXIT
END

IF ~~ THEN BEGIN 118 // from: 33.14
  SAY @176
  IF ~CheckStatLT(LastTalkedToBy(Myself),2,PROFICIENCYWARHAMMER)~ THEN REPLY @177 GOTO 119
  IF ~CheckStatLT(LastTalkedToBy(Myself),4,PROFICIENCYWARHAMMER)~ THEN REPLY @178 GOTO 120
  IF ~CheckStatLT(LastTalkedToBy(Myself),5,PROFICIENCYWARHAMMER)~ THEN REPLY @179 GOTO 121
  IF ~CheckStatGT(LastTalkedToBy(Myself),6,PROFICIENCYWARHAMMER)~ THEN REPLY @180  GOTO 122
  IF ~CheckStatGT(LastTalkedToBy(Myself),6,PROFICIENCYWARHAMMER)~ THEN REPLY @181 GOTO 123
  IF ~~ THEN REPLY @64 GOTO 143
END

IF ~~ THEN BEGIN 119 // from: 118.0
  SAY @182
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNWHR2")~ EXIT
END

IF ~~ THEN BEGIN 120 // from: 118.1
  SAY @183
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNWHR4")~ EXIT
END

IF ~~ THEN BEGIN 121 // from: 118.2
  SAY @184
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNWHR5")~ EXIT
END

IF ~~ THEN BEGIN 122 // from: 118.3
  SAY @185
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNWHR4")~ EXIT
END

IF ~~ THEN BEGIN 123 // from: 118.4
  SAY @185
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNWHR5")~ EXIT
END

IF ~~ THEN BEGIN 124 // from: 32.1
  SAY @186
  IF ~~ THEN REPLY @187 GOTO 145
END

IF ~~ THEN BEGIN 125 // from: 32.2
  SAY @188
  IF ~~ THEN REPLY @189 GOTO 146
END

IF ~~ THEN BEGIN 126 // from: 128.0 127.2 29.2
  SAY @190
  IF ~~ THEN DO ~StartStore("CB351GD1",LastTalkedToBy())~ EXIT
END

IF ~Global("CbPartyTrainedTriel","GLOBAL",2)
!Global("CbSergeantOpensTrainingArea","GLOBAL",1)~ THEN BEGIN 127
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 30
  IF ~~ THEN REPLY @40 GOTO 31
  IF ~~ THEN REPLY @41 GOTO 126
END

IF ~!Global("CbTrainingGuardsBedtime","LOCALS",1)
Global("CbSergeantOpensTrainingArea","GLOBAL",1)~ THEN BEGIN 128
  SAY @191
  IF ~~ THEN REPLY @192 GOTO 126
  IF ~~ THEN REPLY @193 GOTO 31
  IF ~~ THEN REPLY @194 EXIT
END

IF ~~ THEN BEGIN 129 // from: 34.5
  SAY @195
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 130 // from: 40.5
  SAY @195
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 131 // from: 46.5
  SAY @195
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 132 // from: 52.5
  SAY @195
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 133 // from: 58.5
  SAY @195
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 134 // from: 64.5
  SAY @195
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 135 // from: 70.5
  SAY @195
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 136 // from: 76.5
  SAY @195
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 137 // from: 82.5
  SAY @195
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 138 // from: 88.5
  SAY @195
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 139 // from: 94.5
  SAY @195
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 140 // from: 100.5
  SAY @195
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 141 // from: 106.5
  SAY @195
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 142 // from: 112.5
  SAY @195
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 143 // from: 118.5
  SAY @195
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 144 // from: 33.15
  SAY @195
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 145 // from: 124.0
  SAY @7
  IF ~~ THEN DO ~SetGlobal("Cb351GuardInstructs","AR4351",1)~ EXIT
END

IF ~~ THEN BEGIN 146 // from: 125.0
  SAY @7
  IF ~~ THEN DO ~SetGlobal("Cb351GuardInstructs","AR4351",1)~ EXIT
END
