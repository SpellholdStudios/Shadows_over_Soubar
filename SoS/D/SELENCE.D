BEGIN ~SELENCE~

IF ~GlobalLT("CBCanSpawnFence","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SpellNoDec(Myself,WIZARD_INVISIBILITY)
DisplayStringHead(Myself,19944)
SetGlobal("CbGetGaelanHere","AR0700",1)
SetGlobalTimer("CbSelenceWalksAround","LOCALS",300)~ EXIT
END

IF ~Global("CbCanSpawnFence","GLOBAL",1)
!Global("CbSelenceGaveFirstJob","LOCALS",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 21
  IF ~~ THEN REPLY @5 GOTO 25
  IF ~~ THEN REPLY @6 GOTO 31
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @9
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 35.0 30.0 24.0 4.0
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 14
  IF ~~ THEN REPLY @13 GOTO 17
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @14
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 39.0 20.0 16.0 6.0
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 9
  IF ~~ THEN REPLY @19 GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @20
  IF ~~ THEN REPLY @19 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 8.1
  SAY @21
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @24
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @25
  IF ~~ THEN DO ~SetGlobal("CbSelenceGaveFirstJob","LOCALS",1)
SetGlobal("CbSelenceTaskOne","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 5.1
  SAY @26
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @27
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @28
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 17 // from: 5.2
  SAY @29
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 19
  IF ~~ THEN REPLY @32 GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @33
  IF ~~ THEN DO ~ApplySpell(Myself,WIZARD_INVISIBILITY)
DisplayStringHead(Myself,19944)
SetGlobalTimer("CbSelenceWalksAround","LOCALS",400)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY @34
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 21 // from: 2.1
  SAY @35
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @36
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @37
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @38
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 25 // from: 2.2
  SAY @39
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @40
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @41
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY @42
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY @43
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY @44
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 31 // from: 2.3
  SAY @45
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY @46
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY @42
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @43
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @44
  IF ~~ THEN GOTO 5
END

IF ~Global("CbSelenceGaveFirstJob","LOCALS",1)
!Global("CbSelenceJobOneDone","LOCALS",1)~ THEN BEGIN 36
  SAY @47
  IF ~PartyHasItem("CBSHGOLD")~ THEN REPLY @48 GOTO 37
  IF ~~ THEN REPLY @49 GOTO 38
  IF ~~ THEN REPLY @50 GOTO 39
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY @51
  IF ~~ THEN DO ~TakePartyItem("CBSHGOLD")
SetGlobal("CbSelenceJobOneDone","LOCALS",1)
AddexperienceParty(12000)~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY @52
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 39 // from: 36.2
  SAY @53
  IF ~~ THEN GOTO 7
END

IF ~Global("CbSelenceJobOneDone","LOCALS",1)
!Global("CbSelenceCanStartTheStore","LOCALS",1)
!Global("CbSelenceCanGiveNextTask","LOCALS",1)~ THEN BEGIN 40
  SAY @54
  IF ~~ THEN REPLY @55 GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY @56
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY @57
  IF ~~ THEN REPLY @58 GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY @59
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY @60
  IF ~~ THEN REPLY @61 DO ~SetGlobal("CbSelenceCanGiveNextTask","LOCALS",1)
SetGlobal("CbSelenceCanStartTheStore","LOCALS",1)
StartStore("CBSLENCE",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @62 DO ~SetGlobal("CbSelenceCanStartTheStore","LOCALS",1)
SetGlobal("CbSelenceCanGiveNextTask","LOCALS",1)~ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.1
  SAY @63
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 64.1 45.0
  SAY @64
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY @65
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY @66
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY @67
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY @68
  IF ~~ THEN REPLY @69 GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY @70
  IF ~~ THEN REPLY @71 GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY @72
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY @73
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY @74
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY @75
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY @76
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY @77
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY @78
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY @79
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY @80
  IF ~~ THEN REPLY @81 GOTO 61
  IF ~~ THEN REPLY @82 GOTO 62
END

IF ~~ THEN BEGIN 61 // from: 63.0 60.0
  SAY @83
  IF ~~ THEN DO ~SetGlobal("CbSelenceActivatesLion","AR0700",1)
EscapeAreaMove("AR0511",172,809,13)~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.1
  SAY @84
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY @85
  IF ~~ THEN REPLY @81 GOTO 61
END

IF ~Global("CbSelenceJobOneDone","LOCALS",1)
Global("CbSelenceCanGiveNextTask","LOCALS",1)
Global("CbSelenceCanStartTheStore","LOCALS",1)
!AreaCheck("AR0313")~ THEN BEGIN 64
  SAY @86
  IF ~Global("CbSelenceCanStartTheStore","LOCALS",1)
!AreaCheck("AR0511")~ THEN REPLY @87 GOTO 65
  IF ~Global("CbSelenceCanGiveNextTask","LOCALS",1)
!AreaCheck("AR0511")~ THEN REPLY @88 GOTO 46
  IF ~AreaCheck("AR0511")
GlobalLT("CbPartyGotMartItem","LOCALS",1)~ THEN GOTO 66
  IF ~AreaCheck("AR0511")
GlobalGT("CbPartyGotMartItem","LOCALS",0)
!Global("CbSelenceWentThroughList","LOCALS",1)~ THEN GOTO 69
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY @89
  IF ~~ THEN DO ~StartStore("CBSLENCE",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 66 // from: 64.2
  SAY @90
  IF ~~ THEN REPLY @91 GOTO 67
  IF ~~ THEN REPLY @92 GOTO 68
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY @93
  IF ~~ THEN DO ~StartStore("CBSLENCE",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 68 // from: 66.1
  SAY @94
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 69 // from: 86.0 84.0 64.3
  SAY @95
  IF ~Global("CbPartyGotMartItem","LOCALS",1)~ THEN REPLY @96 GOTO 70
  IF ~Global("CbPartyGotMartItem","LOCALS",2)~ THEN REPLY @97 GOTO 71
  IF ~Global("CbPartyGotMartItem","LOCALS",3)~ THEN REPLY @98 GOTO 72
  IF ~Global("CbPartyGotMartItem","LOCALS",4)~ THEN REPLY @99 GOTO 73
  IF ~Global("CbPartyGotMartItem","LOCALS",5)~ THEN REPLY @100 GOTO 74
  IF ~Global("CbPartyGotMartItem","LOCALS",6)~ THEN REPLY @101 GOTO 75
  IF ~Global("CbPartyGotMartItem","LOCALS",7)~ THEN REPLY @102 GOTO 76
  IF ~Global("CbPartyGotMartItem","LOCALS",8)~ THEN REPLY @103 GOTO 77
  IF ~Global("CbPartyGotMartItem","LOCALS",9)~ THEN REPLY @104 GOTO 78
  IF ~Global("CbPartyGotMartItem","LOCALS",10)~ THEN REPLY @105 GOTO 79
  IF ~RandomNum(2,1)~ THEN REPLY @106 GOTO 80
  IF ~RandomNum(2,2)~ THEN REPLY @107 GOTO 85
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY @108
  IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 71 // from: 69.1
  SAY @109
  IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 72 // from: 69.2
  SAY @110
  IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 73 // from: 69.3
  SAY @111
  IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 74 // from: 69.4
  SAY @112
  IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 75 // from: 69.5
  SAY @113
  IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 76 // from: 69.6
  SAY @114
  IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 77 // from: 69.7
  SAY @115
  IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 78 // from: 69.8
  SAY @116
  IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 79 // from: 69.9
  SAY @117
  IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 80 // from: 69.10
  SAY @118
  IF ~~ THEN REPLY @119 GOTO 81
  IF ~~ THEN REPLY @120 GOTO 82
  IF ~~ THEN REPLY @121 GOTO 84
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY @122
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 82 // from: 80.1
  SAY @123
  IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY @124
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 84 // from: 80.2
  SAY @125
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 85 // from: 69.11
  SAY @126
  IF ~~ THEN REPLY @121 GOTO 86
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @127 GOTO 87
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @127 GOTO 88
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY @125
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 87 // from: 85.1
  SAY @128
  IF ~~ THEN DO ~SetGlobal("CbDontLetSelenceJoin","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 88 // from: 85.2
  SAY @129
  IF ~~ THEN DO ~SetGlobal("CbDontLetSelenceJoin","LOCALS",1)~ EXIT
END

IF ~AreaCheck("AR0313")
Global("CbSelenceWentThroughList","LOCALS",1)
!Global("CbSelenceGaveCopperKey","LOCALS",1)~ THEN BEGIN 89
  SAY @130
  IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY @131
  IF ~~ THEN DO ~GiveItemCreate("CBSHCCKY",LastTalkedToBy,0,0,0)~ GOTO 91
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY @132
  IF ~~ THEN GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY @133
  IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY @134
  IF ~~ THEN DO ~SetGlobal("CbSelenceGaveCopperKey","LOCALS",1)~ JOURNAL @50207 EXIT
END

IF ~AreaCheck("AR0313")
Global("CbSelenceGaveCopperKey","LOCALS",1)~ THEN BEGIN 94
  SAY @135
  IF ~Global("CbSelenceCanStartTheStore","LOCALS",1)~ THEN REPLY @136 GOTO 95
  IF ~!Global("CbSelenceDoesntHaveWorkYet","LOCALS",1)~ THEN REPLY @137 GOTO 96
  IF ~Global("CbSelenceDoesntHaveWorkYet","LOCALS",1)
!GlobalTimerExpired("CbSelenceNeedsWork","LOCALS")~ THEN REPLY @138 GOTO 97
  IF ~Global("CbSelenceDoesntHaveWorkYet","LOCALS",1)
GlobalTimerExpired("CbSelenceNeedsWork","LOCALS")
!Global("CbSelenceDidntJoinParty","LOCALS",1)
!Global("CbDontLetSelenceJoin","LOCALS",1)~ THEN REPLY @138 GOTO 98
  IF ~Global("CbSelenceDidntJoinParty","LOCALS",1)
!Global("CbDontLetSelenceJoin","LOCALS",1)~ THEN REPLY @139 GOTO 104
  IF ~~ THEN REPLY @140 GOTO 107
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY @141
  IF ~~ THEN DO ~StartStore("CBSLENCE",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 96 // from: 94.1
  SAY @142
  IF ~~ THEN DO ~SetGlobal("CbSelenceDoesntHaveWorkYet","LOCALS",1)
SetGlobalTimer("CbSelenceNeedsWork","LOCALS",THREE_DAYS)~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 94.2
  SAY @143
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 98 // from: 94.3
  SAY @144
  IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY @145
  IF ~~ THEN GOTO 100
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY @146
  IF ~~ THEN GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 100.0
  SAY @147
  IF ~~ THEN REPLY @148 GOTO 102
  IF ~~ THEN REPLY @149 GOTO 103
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY @150
  IF ~~ THEN DO ~DestroyItem("CBSHCCKY")
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 103 // from: 101.1
  SAY @151
  IF ~~ THEN DO ~SetGlobal("CbSelenceDidntJoinParty","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 104 // from: 94.4
  SAY @152
  IF ~~ THEN REPLY @153 GOTO 105
  IF ~~ THEN REPLY @154 GOTO 106
END

IF ~~ THEN BEGIN 105 // from: 104.0
  SAY @155
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 106 // from: 104.1
  SAY @156
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 107 // from: 94.5
  SAY @157
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 108 // from: 79.0 78.0 77.0 76.0 75.0 74.0 73.0 72.0 71.0 70.0
  SAY @158
  IF ~~ THEN EXIT
END
