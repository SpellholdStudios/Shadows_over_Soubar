BEGIN ~CBFIXLGN~

IF ~Global("CbStopLogan","GLOBAL",1)
GlobalLT("loganmantle","GLOBAL",2)
GlobalLT("feudplot","GLOBAL",2)
!Global("loganmad","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~Global("CbLoganReadingMissive","LOCALS",0)
PartyHasItem("CBLOGMSS")~ THEN REPLY @1 GOTO 1
  IF ~Global("CbLoganReadingMissive","LOCALS",1)
!PartyHasItem("CBLOGMSS")~ THEN REPLY @2 GOTO 8
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @7
  IF ~~ THEN DO ~SetGlobal("CbLoganReadingMissive","LOCALS",1)
TakePartyItem("CBLOGMSS")~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 4
  IF ~~ THEN REPLY @10 GOTO 5
  IF ~~ THEN REPLY @11 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("CbLoganReadingMissive","LOCALS",1)
TakePartyItem("CBLOGMSS")~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @13
  IF ~~ THEN DO ~SetGlobal("CbLoganReadingMissive","LOCALS",1)
TakePartyItem("CBLOGMSS")~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY @14
  IF ~~ THEN DO ~TakePartyItem("CBLOGMSS")~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @15
  IF ~~ THEN DO ~SetGlobal("CbLoganReadingMissive","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 14.4 0.1
  SAY @16
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @17
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @18
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @19
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @20
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @21
  IF ~~ THEN DO ~IncrementGlobal("CbDeliveringMissives","GLOBAL",1)
SetGlobal("CbLoganReadingMissive","LOCALS",2)
SetGlobal("CbStopLogan","GLOBAL",2)~ EXIT
END

IF ~Global("CbStopLogan","GLOBAL",1)
Global("loganmantle","GLOBAL",2)
Global("feudplot","GLOBAL",2)
!Global("loganmad","GLOBAL",1)~ THEN BEGIN 14
  SAY @22
  IF ~Global("CbLoganReadingMissive","LOCALS",0)
PartyHasItem("CBLOGMSS")~ THEN REPLY @23 GOTO 15
  IF ~Global("CbLoganReadingMissive","LOCALS",0)
PartyHasItem("CBLOGMSS")~ THEN REPLY @24 GOTO 21
  IF ~Global("CbLoganReadingMissive","LOCALS",0)
PartyHasItem("CBLOGMSS")~ THEN REPLY @25 GOTO 27
  IF ~~ THEN REPLY @26 GOTO 32
  IF ~Global("CbLoganReadingMissive","LOCALS",1)
!PartyHasItem("CBLOGMSS")~ THEN REPLY @2 GOTO 8
  IF ~Global("CbLoganReadingMissive","LOCALS",1)
!PartyHasItem("CBLOGMSS")~ THEN REPLY @27 GOTO 33
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 17
  IF ~~ THEN REPLY @32 GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @33
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @34
  IF ~~ THEN DO ~SetGlobal("CbLoganReadingMissive","LOCALS",1)
TakePartyItem("CBLOGMSS")~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.1
  SAY @35
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @36
  IF ~~ THEN DO ~SetGlobal("CbLoganReadingMissive","LOCALS",1)
TakePartyItem("CBLOGMSS")~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 14.1
  SAY @37
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 23
  IF ~~ THEN REPLY @40 GOTO 24
  IF ~~ THEN REPLY @41 GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @42
  IF ~~ THEN DO ~SetGlobal("CbLoganReadingMissive","LOCALS",1)
TakePartyItem("CBLOGMSS")~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.1
  SAY @43
  IF ~~ THEN DO ~SetGlobal("CbLoganReadingMissive","LOCALS",1)
TakePartyItem("CBLOGMSS")~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.2
  SAY @44
  IF ~~ THEN DO ~TakePartyItem("CBLOGMSS")~ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @45
  IF ~~ THEN DO ~SetGlobal("CbLoganReadingMissive","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 14.2
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 28
  IF ~~ THEN REPLY @40 GOTO 29
  IF ~~ THEN REPLY @48 GOTO 30
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY @49
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0 27.1
  SAY @50
  IF ~~ THEN DO ~SetGlobal("CbLoganReadingMissive","LOCALS",1)
TakePartyItem("CBLOGMSS")~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.2
  SAY @44
  IF ~~ THEN DO ~TakePartyItem("CBLOGMSS")~ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @45
  IF ~~ THEN DO ~SetGlobal("CbLoganReadingMissive","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 14.3
  SAY @51
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 33 // from: 14.5
  SAY @52
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @53
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @54
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY @55
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY @56
  IF ~~ THEN DO ~IncrementGlobal("CbDeliveringMissives","GLOBAL",1)
SetGlobal("CbLoganReadingMissive","LOCALS",2)
SetGlobal("CbStopLogan","GLOBAL",2)~ EXIT
END

IF ~Global("CbStopLogan","GLOBAL",1)
Global("loganmad","GLOBAL",1)~ THEN BEGIN 38
  SAY @57
  IF ~~ THEN REPLY @58 GOTO 39
  IF ~Global("CbLoganReadingMissive","LOCALS",0)
PartyHasItem("CBLOGMSS")~ THEN REPLY @59 GOTO 40
  IF ~~ THEN REPLY @60 EXIT
  IF ~Global("CbLoganReadingMissive","LOCALS",1)
!PartyHasItem("CBLOGMSS")~ THEN REPLY @61 GOTO 45
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY @62
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1
  SAY @63
  IF ~~ THEN REPLY @64 GOTO 41
  IF ~~ THEN REPLY @65 GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY @66
  IF ~~ THEN DO ~TakePartyItem("CBLOGMSS")~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY @67
  IF ~~ THEN DO ~SetGlobal("CbLoganReadingMissive","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 40.1
  SAY @68
  IF ~~ THEN DO ~TakePartyItem("CBLOGMSS")~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY @69
  IF ~~ THEN DO ~SetGlobal("CbLoganReadingMissive","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 38.3
  SAY @70
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY @71
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY @72
  IF ~~ THEN DO ~IncrementGlobal("CbDeliveringMissives","GLOBAL",1)
SetGlobal("CbLoganReadingMissive","LOCALS",2)
SetGlobal("CbStopLogan","GLOBAL",2)~ EXIT
END
