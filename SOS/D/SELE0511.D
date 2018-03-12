BEGIN ~SELE0511~

IF ~Global("CbSelenceJobOneDone","LOCALS",1)~ THEN BEGIN 0
  SAY @0
  IF ~Global("CbSelenceCanStartTheStore","LOCALS",1)~ THEN REPLY @1 GOTO 1
  IF ~AreaCheck("AR0511")
GlobalLT("CbPartyGotMartItem","LOCALS",1)~ THEN GOTO 2
  IF ~AreaCheck("AR0511")
GlobalGT("CbPartyGotMartItem","LOCALS",0)
Global("CbSelenceWentThroughList","LOCALS",0)~ THEN GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN DO ~StartStore("CBSLENCE",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @3
  IF ~Global("CbSelenceCanStartTheStore","LOCALS",1)~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6
  IF ~~ THEN DO ~StartStore("CBSLENCE",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 23.0 21.0 0.2
  SAY @8
  IF ~Global("CbPartyGotMartItem","LOCALS",1)~ THEN REPLY @9 GOTO 6
  IF ~Global("CbPartyGotMartItem","LOCALS",2)~ THEN REPLY @10 GOTO 8
  IF ~Global("CbPartyGotMartItem","LOCALS",3)~ THEN REPLY @11 GOTO 9
  IF ~Global("CbPartyGotMartItem","LOCALS",4)~ THEN REPLY @12 GOTO 10
  IF ~Global("CbPartyGotMartItem","LOCALS",5)~ THEN REPLY @13 GOTO 11
  IF ~Global("CbPartyGotMartItem","LOCALS",6)~ THEN REPLY @14 GOTO 12
  IF ~Global("CbPartyGotMartItem","LOCALS",7)~ THEN REPLY @15 GOTO 13
  IF ~Global("CbPartyGotMartItem","LOCALS",8)~ THEN REPLY @16 GOTO 14
  IF ~Global("CbPartyGotMartItem","LOCALS",9)~ THEN REPLY @17 GOTO 15
  IF ~Global("CbPartyGotMartItem","LOCALS",10)~ THEN REPLY @18 GOTO 16
  IF ~RandomNum(2,1)~ THEN REPLY @19 GOTO 17
  IF ~RandomNum(2,2)~ THEN REPLY @19 GOTO 22
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @20
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 118.0 110.0 98.0 94.0 88.0 82.0 73.0 59.0 53.0 43.0 36.0 29.0 16.0 15.0 14.0 13.0 12.0 11.0 10.0 9.0 8.0 6.0
  SAY @21
  IF ~True()~ THEN GOTO 124
  IF ~PartyHasItem("CBCL047")
Global("CbSelenceSeesAFlute","LOCALS",0)~ THEN GOTO 26         //DO ~IncrementGlobal("CbSelenceCheckedThis","LOCALS",1)~
  IF ~PartyHasItem("CBCL033")                                  //each line had it
Global("CbSelenceSeesASetOfChain","LOCALS",0)~ THEN GOTO 33
  IF ~PartyHasItem("CBCL031")
Global("CbSelenceSeesAWarAxe","LOCALS",0)~ THEN GOTO 40
  IF ~PartyHasItem("CBCL024")
Global("CbSelenceSeesAHelmet","LOCALS",0)~ THEN GOTO 55
  IF ~PartyHasItem("CBCL005")
Global("CbSelenceSeesASilverShield","LOCALS",0)~ THEN GOTO 68
  IF ~PartyHasItem("CBCL060")
Global("CbSelenceSeesABattleAxe","LOCALS",0)~ THEN GOTO 84
  IF ~PartyHasItem("CBCL009")
Global("CbSelenceSeesFlamingOil","LOCALS",0)~ THEN GOTO 93
  IF ~PartyHasItem("CBCL012")
Global("CbSelenceSeesASword","LOCALS",0)~ THEN GOTO 95
  IF ~PartyHasItem("CBCL029")
Global("CbSelenceSeesADagger","LOCALS",0)~ THEN GOTO 106
  IF ~PartyHasItem("CBCL042")
Global("CbSelenceSeesARing","LOCALS",0)~ THEN GOTO 114
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY @22
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY @23
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 10 // from: 5.3
  SAY @24
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 5.4
  SAY @25
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 5.5
  SAY @26
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 13 // from: 5.6
  SAY @27
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 5.7
  SAY @28
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 15 // from: 5.8
  SAY @29
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 16 // from: 5.9
  SAY @30
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 17 // from: 5.10
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 18
  IF ~~ THEN REPLY @33 GOTO 19
  IF ~~ THEN REPLY @34 GOTO 21
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @35
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY @36
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @37
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.2
  SAY @38
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 5.11
  SAY @39
  IF ~~ THEN REPLY @34 GOTO 23
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @40 GOTO 24
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @40 GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @38
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 24 // from: 22.1
  SAY @41
  IF ~~ THEN DO ~SetGlobal("CbDontLetSelenceJoin","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.2
  SAY @42
  IF ~~ THEN DO ~SetGlobal("CbDontLetSelenceJoin","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 7.0
  SAY @43
  IF ~PartyHasItemIdentified("CBCL047")~ THEN DO ~SetGlobal("CbSelenceSeesAFlute","LOCALS",1)~ GOTO 27
  IF ~!PartyHasItemIdentified("CBCL047")~ THEN DO ~SetGlobal("CbSelenceSeesAFlute","LOCALS",1)~ GOTO 31
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @44
  IF ~~ THEN REPLY @45 GOTO 28
  IF ~~ THEN REPLY @46 GOTO 30
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY @47
  IF ~~ THEN DO ~TakePartyItem("CBCL047")
GiveGoldForce(20000)~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 32.0 30.0 28.0
  SAY @48
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 30 // from: 31.1 27.1
  SAY @49
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 31 // from: 26.1
  SAY @50
  IF ~~ THEN REPLY @45 GOTO 32
  IF ~~ THEN REPLY @46 GOTO 30
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY @51
  IF ~~ THEN DO ~TakePartyItem("CBCL047")
GiveGoldForce(1000)~ GOTO 29
END

IF ~~ THEN BEGIN 33 // from: 7.1
  SAY @52
  IF ~PartyHasItemIdentified("CBCL033")~ THEN DO ~SetGlobal("CbSelenceSeesASetOfChain","LOCALS",1)~ GOTO 34
  IF ~!PartyHasItemIdentified("CBCL033")~ THEN DO ~SetGlobal("CbSelenceSeesASetOfChain","LOCALS",1)~ GOTO 38
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @53
  IF ~~ THEN REPLY @54 GOTO 35
  IF ~~ THEN REPLY @55 GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @56
  IF ~~ THEN DO ~TakePartyItem("CBCL033")
GiveGoldForce(12000)~ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 39.0 37.0 35.0
  SAY @57
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 37 // from: 38.1 34.1
  SAY @58
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 38 // from: 33.1
  SAY @59
  IF ~~ THEN REPLY @60 GOTO 39
  IF ~~ THEN REPLY @61 GOTO 37
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY @62
  IF ~~ THEN DO ~TakePartyItem("CBCL033")
GiveGoldForce(2000)~ GOTO 36
END

IF ~~ THEN BEGIN 40 // from: 7.2
  SAY @63
  IF ~PartyHasItemIdentified("CBCL031")~ THEN DO ~SetGlobal("CbSelenceSeesAWarAxe","LOCALS",1)~ GOTO 41
  IF ~!PartyHasItemIdentified("CBCL031")~ THEN DO ~SetGlobal("CbSelenceSeesAWarAxe","LOCALS",1)~ GOTO 51
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY @64
  IF ~~ THEN REPLY @65 GOTO 42
  IF ~~ THEN REPLY @66 GOTO 44
  IF ~~ THEN REPLY @67 GOTO 47
  IF ~~ THEN REPLY @68 GOTO 48
  IF ~~ THEN REPLY @69 GOTO 49
  IF ~~ THEN REPLY @70 GOTO 50
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY @71
  IF ~~ THEN DO ~GiveGoldForce(30000)
TakePartyItem("CBCL031")~ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 50.0 49.0 48.0 47.0 46.0 45.0 42.0
  SAY @72
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 44 // from: 41.1
  SAY @73
  IF ~~ THEN REPLY @45 GOTO 45
  IF ~~ THEN REPLY @74 GOTO 46
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY @75
  IF ~~ THEN DO ~GiveGoldForce(28000)
TakePartyItem("CBCL031")~ GOTO 43
END

IF ~~ THEN BEGIN 46 // from: 44.1
  SAY @76
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 47 // from: 41.2
  SAY @77
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 48 // from: 41.3
  SAY @78
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 49 // from: 41.4
  SAY @75
  IF ~~ THEN DO ~GiveGoldForce(25000)
TakePartyItem("CBCL031")~ GOTO 43
END

IF ~~ THEN BEGIN 50 // from: 41.5
  SAY @79
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 51 // from: 40.1
  SAY @80
  IF ~~ THEN REPLY @81 GOTO 52
  IF ~~ THEN REPLY @82 GOTO 54
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY @83
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 54.0 52.0
  SAY @84
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 54 // from: 51.1
  SAY @85
  IF ~~ THEN DO ~GiveGoldForce(1000)
TakePartyItem("CBCL031")~ GOTO 53
END

IF ~~ THEN BEGIN 55 // from: 7.3
  SAY @86
  IF ~PartyHasItemIdentified("CBCL024")~ THEN DO ~SetGlobal("CbSelenceSeesAHelmet","LOCALS",1)~ GOTO 56
  IF ~!PartyHasItemIdentified("CBCL024")~ THEN DO ~SetGlobal("CbSelenceSeesAHelmet","LOCALS",1)~ GOTO 65
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY @87
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY @88
  IF ~~ THEN REPLY @89 GOTO 58
  IF ~~ THEN REPLY @90 GOTO 60
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY @91
  IF ~~ THEN DO ~GiveGoldForce(6000)
TakePartyItem("CBCL024")~ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 67.0 66.0 64.0 63.0 62.1 58.0
  SAY @92
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 60 // from: 57.1
  SAY @93
  IF ~~ THEN REPLY @94 GOTO 61
  IF ~~ THEN REPLY @95 GOTO 64
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY @96
  IF ~~ THEN DO ~GiveGoldForce(6000)~ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY @97
  IF ~CheckStatGT(LastTalkedToBy,12,INT)~ THEN REPLY @98 GOTO 63
  IF ~~ THEN REPLY @99 DO ~TakePartyItem("CBCL024")~ GOTO 59
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY @100
  IF ~~ THEN DO ~GiveGoldForce(500)
TakePartyItem("CBCL024")~ GOTO 59
END

IF ~~ THEN BEGIN 64 // from: 60.1
  SAY @101
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 65 // from: 55.1
  SAY @102
  IF ~~ THEN REPLY @103 GOTO 66
  IF ~~ THEN REPLY @104 GOTO 67
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY @105
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 67 // from: 65.1
  SAY @106
  IF ~~ THEN DO ~GiveGoldForce(100)
TakePartyItem("CBCL024")~ GOTO 59
END

IF ~~ THEN BEGIN 68 // from: 7.4
  SAY @107
  IF ~PartyHasItemIdentified("CBCL005")~ THEN DO ~SetGlobal("CbSelenceSeesASilverShield","LOCALS",1)~ GOTO 69
  IF ~!PartyHasItemIdentified("CBCL005")~ THEN DO ~SetGlobal("CbSelenceSeesASilverShield","LOCALS",1)~ GOTO 78
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY @108
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY @109
  IF ~~ THEN REPLY @110 /* #80660 */ GOTO 71
  IF ~~ THEN REPLY @111 /* #80661 */ GOTO 76
  IF ~~ THEN REPLY @112 GOTO 77
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY @113
  IF ~~ THEN REPLY @104 GOTO 72
  IF ~~ THEN REPLY @114 GOTO 74
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY @115
  IF ~~ THEN DO ~GiveGoldForce(16000)
TakePartyItem("CBCL005")~ GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 77.0 76.0 75.0 74.0 72.0
  SAY @116
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 74 // from: 71.1
  SAY @117
  IF ~~ THEN REPLY @118 GOTO 73
  IF ~~ THEN REPLY @45 GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.1
  SAY @115
  IF ~~ THEN DO ~GiveGoldForce(18000)
TakePartyItem("CBCL005")~ GOTO 73
END

IF ~~ THEN BEGIN 76 // from: 70.1
  SAY @119
  IF ~~ THEN DO ~GiveGoldForce(12000)
TakePartyItem("CBCL005")~ GOTO 73
END

IF ~~ THEN BEGIN 77 // from: 70.2
  SAY @120
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 78 // from: 68.1
  SAY @121
  IF ~~ THEN REPLY @122 GOTO 79
  IF ~~ THEN REPLY @123 GOTO 83
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY @124
  IF ~~ THEN DO ~GiveGoldForce(1000)~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY @125
  IF ~~ THEN DO ~GiveGoldForce(1000)
GiveGoldForce(1000)~ GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY @126
  IF ~~ THEN DO ~GiveGoldForce(1000)
TakePartyItem("CBCL005")~ GOTO 82
END

IF ~~ THEN BEGIN 82 // from: 83.0 81.0
  SAY @127
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 83 // from: 78.1
  SAY @128
  IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 84 // from: 7.5
  SAY @129
  IF ~PartyHasItemIdentified("CBCL060")~ THEN DO ~SetGlobal("CbSelenceSeesABattleAxe","LOCALS",1)~ GOTO 85
  IF ~!PartyHasItemIdentified("CBCL060")~ THEN DO ~SetGlobal("CbSelenceSeesABattleAxe","LOCALS",1)~ GOTO 90
END

IF ~~ THEN BEGIN 85 // from: 84.0
  SAY @130
  IF ~~ THEN GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY @131
  IF ~~ THEN REPLY @132 GOTO 87
  IF ~~ THEN REPLY @133 GOTO 89
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY @134
  IF ~~ THEN DO ~GiveGoldForce(35000)
TakePartyItem("CBCL060")~ GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 92.0 91.0 89.0 87.0
  SAY @135
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 89 // from: 86.1
  SAY @136
  IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 90 // from: 84.1
  SAY @137
  IF ~~ THEN REPLY @138 GOTO 91
  IF ~~ THEN REPLY @139 GOTO 92
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY @140
  IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 92 // from: 90.1
  SAY @141
  IF ~~ THEN DO ~GiveGoldForce(200)
TakePartyItem("CBCL060")~ GOTO 88
END

IF ~~ THEN BEGIN 93 // from: 7.6
  SAY @142
  IF ~~ THEN GOTO 94
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY @143
  IF ~~ THEN DO ~SetGlobal("CbSelenceSeesFlamingOil","LOCALS",1)~ GOTO 7
END

IF ~~ THEN BEGIN 95 // from: 7.7
  SAY @144
  IF ~PartyHasItemIdentified("CBCL012")~ THEN DO ~SetGlobal("CbSelenceSeesASword","LOCALS",1)~ GOTO 96
  IF ~!PartyHasItemIdentified("CBCL012")~ THEN DO ~SetGlobal("CbSelenceSeesASword","LOCALS",1)~ GOTO 100
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY @145
  IF ~~ THEN REPLY @146 GOTO 97
  IF ~~ THEN REPLY @147 GOTO 99
END

IF ~~ THEN BEGIN 97 // from: 96.0
  SAY @148
  IF ~~ THEN DO ~GiveGoldForce(30000)
TakePartyItem("CBCL012")~ GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 105.0 104.0 103.0 101.0 99.0 97.0
  SAY @149
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 99 // from: 96.1
  SAY @150
  IF ~~ THEN GOTO 98
END

IF ~~ THEN BEGIN 100 // from: 95.1
  SAY @151
  IF ~~ THEN REPLY @152 GOTO 101
  IF ~~ THEN REPLY @153 GOTO 102
  IF ~~ THEN REPLY @103  GOTO 104
  IF ~~ THEN REPLY @154 GOTO 105
END

IF ~~ THEN BEGIN 101 // from: 102.0 100.0
  SAY @155
  IF ~~ THEN DO ~GiveGoldForce(7000)
TakePartyItem("CBCL012")~ GOTO 98
END

IF ~~ THEN BEGIN 102 // from: 100.1
  SAY @156
  IF ~~ THEN REPLY @45 GOTO 101
  IF ~~ THEN REPLY @157 GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.1
  SAY @158
  IF ~~ THEN DO ~GiveGoldForce(7500)
TakePartyItem("CBCL012")~ GOTO 98
END

IF ~~ THEN BEGIN 104 // from: 100.2
  SAY @159
  IF ~~ THEN GOTO 98
END

IF ~~ THEN BEGIN 105 // from: 100.3
  SAY @160
  IF ~~ THEN DO ~GiveGoldForce(5000)
TakePartyItem("CBCL012")~ GOTO 98
END

IF ~~ THEN BEGIN 106 // from: 7.8
  SAY @161
  IF ~PartyHasItemIdentified("CBCL029")~ THEN DO ~SetGlobal("CbSelenceSeesADagger","LOCALS",1)~ GOTO 107
  IF ~!PartyHasItemIdentified("CBCL029")~ THEN DO ~SetGlobal("CbSelenceSeesADagger","LOCALS",1)~ GOTO 112
END

IF ~~ THEN BEGIN 107 // from: 106.0
  SAY @162
  IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY @163
  IF ~~ THEN REPLY @164 GOTO 109
  IF ~~ THEN REPLY @165 GOTO 111
END

IF ~~ THEN BEGIN 109 // from: 108.0
  SAY @166
  IF ~~ THEN DO ~GiveGoldForce(10000)
TakePartyItem("CBCL029")~ GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 113.0 111.0 109.0
  SAY @167
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 111 // from: 112.1 108.1
  SAY @168
  IF ~~ THEN GOTO 110
END

IF ~~ THEN BEGIN 112 // from: 106.1
  SAY @169
  IF ~~ THEN REPLY @164 GOTO 113
  IF ~~ THEN REPLY @165 GOTO 111
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY @170
  IF ~~ THEN DO ~GiveGoldForce(10)
TakePartyItem("CBCL029")~ GOTO 110
END

IF ~~ THEN BEGIN 114 // from: 7.9
  SAY @171
  IF ~PartyHasItemIdentified("CBCL042")~ THEN DO ~SetGlobal("CbSelenceSeesARing","LOCALS",1)~ GOTO 115
  IF ~!PartyHasItemIdentified("CBCL042")~ THEN DO ~SetGlobal("CbSelenceSeesARing","LOCALS",1)~ GOTO 120
END

IF ~~ THEN BEGIN 115 // from: 114.0
  SAY @172
  IF ~~ THEN GOTO 116
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY @173
  IF ~~ THEN REPLY @174 GOTO 117
  IF ~~ THEN REPLY @175 GOTO 119
END

IF ~~ THEN BEGIN 117 // from: 116.0
  SAY @176
  IF ~~ THEN GOTO 118
END

IF ~~ THEN BEGIN 118 // from: 123.0 122.0 119.0 117.0
  SAY @177
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 119 // from: 116.1
  SAY @178
  IF ~~ THEN DO ~GiveGoldForce(40000)
TakePartyItem("CBCL042")~ GOTO 118
END

IF ~~ THEN BEGIN 120 // from: 114.1
  SAY @179
  IF ~~ THEN REPLY @180 GOTO 121
  IF ~~ THEN REPLY @181 GOTO 123
END

IF ~~ THEN BEGIN 121 // from: 120.0
  SAY @182
  IF ~~ THEN REPLY @183 GOTO 122
  IF ~~ THEN REPLY @184 GOTO 123
END

IF ~~ THEN BEGIN 122 // from: 121.0
  SAY @185
  IF ~~ THEN DO ~GiveGoldForce(20)
TakePartyItem("CBCL042")~ GOTO 118
END

IF ~~ THEN BEGIN 123 // from: 121.1 120.1
  SAY @186
  IF ~~ THEN GOTO 118
END

IF ~~ THEN BEGIN 124 // from: 7.10
  SAY @187
  IF ~~ THEN GOTO 125
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY @188
  IF ~~ THEN GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY @189
  IF ~~ THEN GOTO 127
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY @190
  IF ~Global("CbPartyGotMartItem","LOCALS",1)~ THEN DO ~AddXPObject(Player1,1000)
AddXPObject(Player2,1000)
AddXPObject(Player3,1000)
AddXPObject(Player4,1000)
AddXPObject(Player5,1000)
AddXPObject(Player6,1000)
SetGlobal("CbSelenceWentThroughList","LOCALS",1)
SetGlobal("CbRibaldsShopBrokenInto","GLOBAL",1)
EscapeAreaMove("AR0313",199,452,12)~ EXIT
  IF ~Global("CbPartyGotMartItem","LOCALS",2)~ THEN DO ~AddXPObject(Player1,2000)
AddXPObject(Player2,2000)
AddXPObject(Player3,2000)
AddXPObject(Player4,2000)
AddXPObject(Player5,2000)
AddXPObject(Player6,2000)
SetGlobal("CbSelenceWentThroughList","LOCALS",1)
SetGlobal("CbRibaldsShopBrokenInto","GLOBAL",1)
EscapeAreaMove("AR0313",199,452,12)~ EXIT
  IF ~Global("CbPartyGotMartItem","LOCALS",3)~ THEN DO ~AddXPObject(Player1,3000)
AddXPObject(Player2,3000)
AddXPObject(Player3,3000)
AddXPObject(Player4,3000)
AddXPObject(Player5,3000)
AddXPObject(Player6,3000)
SetGlobal("CbSelenceWentThroughList","LOCALS",1)
SetGlobal("CbRibaldsShopBrokenInto","GLOBAL",1)
EscapeAreaMove("AR0313",199,452,12)~ EXIT
  IF ~Global("CbPartyGotMartItem","LOCALS",4)~ THEN DO ~AddXPObject(Player1,4000)
AddXPObject(Player2,4000)
AddXPObject(Player3,4000)
AddXPObject(Player4,4000)
AddXPObject(Player5,4000)
AddXPObject(Player6,4000)
SetGlobal("CbSelenceWentThroughList","LOCALS",1)
SetGlobal("CbRibaldsShopBrokenInto","GLOBAL",1)
EscapeAreaMove("AR0313",199,452,12)~ EXIT
  IF ~Global("CbPartyGotMartItem","LOCALS",5)~ THEN DO ~AddXPObject(Player1,5000)
AddXPObject(Player2,5000)
AddXPObject(Player3,5000)
AddXPObject(Player4,5000)
AddXPObject(Player5,5000)
AddXPObject(Player6,5000)
SetGlobal("CbSelenceWentThroughList","LOCALS",1)
SetGlobal("CbRibaldsShopBrokenInto","GLOBAL",1)
EscapeAreaMove("AR0313",199,452,12)~ EXIT
  IF ~Global("CbPartyGotMartItem","LOCALS",6)~ THEN DO ~AddXPObject(Player1,6000)
AddXPObject(Player2,6000)
AddXPObject(Player3,6000)
AddXPObject(Player4,6000)
AddXPObject(Player5,6000)
AddXPObject(Player6,6000)
SetGlobal("CbSelenceWentThroughList","LOCALS",1)
SetGlobal("CbRibaldsShopBrokenInto","GLOBAL",1)
EscapeAreaMove("AR0313",199,452,12)~ EXIT
  IF ~Global("CbPartyGotMartItem","LOCALS",7)~ THEN DO ~AddXPObject(Player1,7000)
AddXPObject(Player2,7000)
AddXPObject(Player3,7000)
AddXPObject(Player4,7000)
AddXPObject(Player5,7000)
AddXPObject(Player6,7000)
SetGlobal("CbSelenceWentThroughList","LOCALS",1)
SetGlobal("CbRibaldsShopBrokenInto","GLOBAL",1)
EscapeAreaMove("AR0313",199,452,12)~ EXIT
  IF ~Global("CbPartyGotMartItem","LOCALS",8)~ THEN DO ~AddXPObject(Player1,8000)
AddXPObject(Player2,8000)
AddXPObject(Player3,8000)
AddXPObject(Player4,8000)
AddXPObject(Player5,8000)
AddXPObject(Player6,8000)
SetGlobal("CbSelenceWentThroughList","LOCALS",1)
SetGlobal("CbRibaldsShopBrokenInto","GLOBAL",1)
EscapeAreaMove("AR0313",199,452,12)~ EXIT
  IF ~Global("CbPartyGotMartItem","LOCALS",9)~ THEN DO ~AddXPObject(Player1,9000)
AddXPObject(Player2,9000)
AddXPObject(Player3,9000)
AddXPObject(Player4,9000)
AddXPObject(Player5,9000)
AddXPObject(Player6,9000)
SetGlobal("CbSelenceWentThroughList","LOCALS",1)
SetGlobal("CbRibaldsShopBrokenInto","GLOBAL",1)
EscapeAreaMove("AR0313",199,452,12)~ EXIT
  IF ~Global("CbPartyGotMartItem","LOCALS",10)~ THEN DO ~AddXPObject(Player1,10000)
AddXPObject(Player2,10000)
AddXPObject(Player3,10000)
AddXPObject(Player4,10000)
AddXPObject(Player5,10000)
AddXPObject(Player6,10000)
SetGlobal("CbSelenceWentThroughList","LOCALS",1)
SetGlobal("CbRibaldsShopBrokenInto","GLOBAL",1)
EscapeAreaMove("AR0313",199,452,12)~ EXIT
END
