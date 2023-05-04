BEGIN ~CBWLSERV~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 20
END

IF ~Global("CbButlerAfraid","LOCALS",1)
Global("CbServantToldWilliamsLocation","GLOBAL",0)~ THEN BEGIN 15
  SAY @1
  IF ~~ THEN REPLY @2 DO ~ReputationInc(-1)~ GOTO 16
  IF ~~ THEN REPLY @3 GOTO 49
  IF ~~ THEN REPLY @4 DO ~ReputationInc(-2)~ GOTO 58
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @5
  IF ~~ THEN REPLY @6 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @7 GOTO 49
END

IF ~Global("CbButlerDidntTell","LOCALS",1)
Global("CbServantToldWilliamsLocation","GLOBAL",0)~ THEN BEGIN 18
  SAY @8
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 59
  IF ~~ THEN REPLY @11 GOTO 61
  IF ~~ THEN REPLY @12 GOTO 66
END

IF ~~ THEN BEGIN 20 // from: 0.0
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 21
  IF ~~ THEN REPLY @15 GOTO 30
  IF ~~ THEN REPLY @16 GOTO 34
  IF ~~ THEN REPLY @17 GOTO 42
  IF ~~ THEN REPLY @18 GOTO 43
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 22
  IF ~~ THEN REPLY @21 GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.1 21.0
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 23
  IF ~~ THEN REPLY @24 GOTO 26
  IF ~~ THEN REPLY @25 GOTO 27
  IF ~~ THEN REPLY @26 GOTO 28
  IF ~~ THEN REPLY @27 GOTO 29
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @28
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @29
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 36
  IF ~~ THEN REPLY @32 GOTO 40
END

IF ~~ THEN BEGIN 26 // from: 22.1
  SAY @33
  IF ~~ THEN DO ~SetGlobal("CbButlerDidntTell","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.2
  SAY @34
  IF ~~ THEN DO ~SetGlobal("CbButlerDidntTell","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 22.3
  SAY @35
  IF ~~ THEN DO ~SetGlobal("CbButlerDidntTell","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 22.4
  SAY @36
  IF ~~ THEN DO ~SetGlobal("CbButlerDidntTell","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 20.1
  SAY @37
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 32
  IF ~~ THEN REPLY @40 DO ~SetNumTimesTalkedTo(0)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY @41
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY @42
  IF ~~ THEN DO ~SetGlobal("CbButlerDidntTell","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 20.2
  SAY @37
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @43
  IF ~~ THEN REPLY @31 GOTO 36
  IF ~~ THEN REPLY @32 GOTO 40
END

IF ~~ THEN BEGIN 36 // from: 35.0 25.0
  SAY @44
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY @45
  IF ~~ THEN REPLY @46 GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY @47
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY @48
  IF ~~ THEN REPLY @49 DO ~SetGlobal("CbServantToldWilliamsLocation","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 35.1 25.1
  SAY @19
  IF ~~ THEN REPLY @50 GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY @51
  IF ~~ THEN REPLY @49 DO ~SetGlobal("CbServantToldWilliamsLocation","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 20.3
  SAY @52
  IF ~~ THEN DO ~SetGlobal("CbServantToldWilliamsLocation","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 20.4
  SAY @53
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY @54
  IF ~~ THEN REPLY @55 GOTO 45
  IF ~~ THEN REPLY @56 GOTO 46
  IF ~~ THEN REPLY @57 GOTO 47
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY @58
  IF ~~ THEN DO ~SetGlobal("CbButlerAfraid","LOCALS",1)
ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.1
  SAY @59
  IF ~~ THEN DO ~EscapeAreaDestroy(90)~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 44.2
  SAY @1
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY @60
  IF ~~ THEN REPLY @61 DO ~SetGlobal("CbButlerAfraid","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY @62 DO ~SetGlobal("CbButlerAfraid","LOCALS",1)
ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 58.0 16.1 15.1
  SAY @63
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY @64
  IF ~~ THEN REPLY @65 GOTO 51
  IF ~~ THEN REPLY @66 DO ~ReputationInc(-1)~ GOTO 53
  IF ~~ THEN REPLY @67 GOTO 55
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY @68
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY @69
  IF ~~ THEN DO ~SetGlobal("CbButlerAfraid","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 53 // from: 50.1
  SAY @70
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY @71
  IF ~~ THEN DO ~SetGlobal("CbServantToldWilliamsLocation","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 50.2
  SAY @72
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY @73
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY @71
  IF ~~ THEN DO ~SetGlobal("CbServantToldWilliamsLocation","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 15.2
  SAY @74
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 59 // from: 19.0
  SAY @75
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY @76
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 61 // from: 19.1
  SAY @77
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY @78
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY @79
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY @80
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY @81
  IF ~~ THEN DO ~SetGlobal("CbServantToldWilliamsLocation","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 66 // from: 19.2
  SAY @82
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY @83
  IF ~~ THEN DO ~SetGlobal("CbServantToldWilliamsLocation","GLOBAL",1)~ EXIT
END

IF ~Global("CbButlerAfraid","LOCALS",2)
Global("CbServantToldWilliamsLocation","GLOBAL",0)~ THEN BEGIN 68
  SAY @84
  IF ~~ THEN EXIT
END

IF ~Global("CbServantToldWilliamsLocation","GLOBAL",1)
!PartyHasItem("CBSHGOLD")~ THEN BEGIN 69
  SAY @85
  IF ~!PartyHasItem("CBWLKEY1")~ THEN REPLY @86 GOTO 73
  IF ~PartyHasItem("CBWLKEY1")~ THEN REPLY @87 GOTO 74
  IF ~PartyHasItem("CBWLKEY1")~ THEN REPLY @88 GOTO 74
  IF ~PartyHasItem("CBWLKEY1")~ THEN REPLY @89 GOTO 74
END

IF ~PartyHasItem("CBSHGOLD")~ THEN BEGIN 70
  SAY @90
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY @91
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY @92
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 73 // from: 69.0
  SAY @93
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 74 // from: 69.3 69.2 69.1
  SAY @94
  IF ~~ THEN EXIT
END
