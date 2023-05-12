BEGIN ~CBGAELAN~

IF ~Global("CbGetGaelanHere","AR0700",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("CbGetGaelanHere","AR0700",2)~ EXIT
END

IF ~Global("CbGetGaelanHere","AR0700",2)
Global("CbCantPayGaelanForSelence","LOCALS",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 5
  IF ~~ THEN REPLY @4 GOTO 17
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 17.0 2.0
  SAY @6
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @9
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @10
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @11
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 45
END

IF ~~ THEN BEGIN 8 // from: 7.0 4.0
  SAY @13
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 16
  IF ~~ THEN REPLY @12 GOTO 45
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @19 GOTO 13
  IF ~~ THEN REPLY @20 GOTO 14
  IF ~~ THEN REPLY @21 GOTO 45
END

IF ~~ THEN BEGIN 11 // from: 46.0 10.0
  SAY @22
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 15.0 13.0 11.0
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 18
  IF ~~ THEN REPLY @25 GOTO 29
  IF ~PartyGoldLT(10000)~ THEN REPLY @26 GOTO 39
  IF ~PartyGoldLT(100000)~ THEN REPLY @27 GOTO 39
  IF ~~ THEN REPLY @28 GOTO 44
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY @29
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 10.2
  SAY @30
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 16.0 14.0
  SAY @31
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 16 // from: 9.1
  SAY @32
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 17 // from: 1.2
  SAY @5
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 18 // from: 12.0
  SAY @33
  IF ~PartyGoldLT(10000)~ THEN REPLY @34 GOTO 39
  IF ~PartyGoldGT(9999)~ THEN REPLY @35 GOTO 19
  IF ~PartyGoldGT(9999)~ THEN REPLY @36 GOTO 23
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY @37
  IF ~PartyGoldGT(9999)~ THEN REPLY @38 GOTO 23
  IF ~~ THEN REPLY @39 GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY @40
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @41
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @42
  IF ~~ THEN DO ~SetGlobal("CbCantPayGaelanForSelence","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 52.1 49.0 19.0 18.2
  SAY @43
  IF ~~ THEN DO ~TakePartyGold(10000)~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @44
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @45
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @46
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @47
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY @48
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBATTACK")
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 12.1
  SAY @49
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY @50
  IF ~PartyGoldLT(100000)~ THEN REPLY @51 GOTO 39
  IF ~PartyGoldGT(99999)~ THEN REPLY @52 DO ~TakePartyGold(100000)~ GOTO 31
  IF ~~ THEN REPLY @53 GOTO 52
END

IF ~~ THEN BEGIN 31 // from: 52.2 49.1 30.1
  SAY @54
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY @45
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY @46
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @47
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @55
  IF ~~ THEN DO ~GiveItemCreate("CBSHCCKY",LastTalkedToBy(),1,0,0)~ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY @56
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY @57
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY @58
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 39 // from: 30.0 18.0 12.3 12.2
  SAY @59
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY @60
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY @61
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY @62
  IF ~~ THEN DO ~SetGlobal("CbCantPayGaelanForSelence","LOCALS",1)~ EXIT
END

IF ~Global("CbCantPayGaelanForSelence","LOCALS",1)~ THEN BEGIN 43
  SAY @63
  IF ~~ THEN REPLY @64 GOTO 46
  IF ~~ THEN REPLY @65 GOTO 47
  IF ~~ THEN REPLY @66 GOTO 54
END

IF ~~ THEN BEGIN 44 // from: 12.4
  SAY @67
  IF ~~ THEN DO ~SetGlobal("CbCantPayGaelanForSelence","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 10.3 9.2 7.1
  SAY @68
  IF ~~ THEN DO ~SetGlobal("CbCantPayGaelanForSelence","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 43.0
  SAY @69
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 47 // from: 43.1
  SAY @70
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY @71
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY @72
  IF ~PartyGoldGT(9999)~ THEN REPLY @73 GOTO 23
  IF ~PartyGoldGT(99999)~ THEN REPLY @74 DO ~TakePartyGold(100000)~ GOTO 31
  IF ~~ THEN REPLY @75 GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.2
  SAY @76
  IF ~~ THEN DO ~SetGlobal("CbCantPayGaelanForSelence","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 38.0
  SAY @77
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBATTACK")
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 52 // from: 30.2
  SAY @78
  IF ~PartyGoldLT(10000)~ THEN REPLY @26 GOTO 53
  IF ~PartyGoldGT(9999)~ THEN REPLY @36 GOTO 23
  IF ~PartyGoldGT(99999)~ THEN REPLY @79 DO ~TakePartyGold(100000)~ GOTO 31
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY @59
  IF ~~ THEN DO ~SetGlobal("CbCantPayGaelanForSelence","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 54 // from: 43.2
  SAY @80
  IF ~~ THEN EXIT
END
