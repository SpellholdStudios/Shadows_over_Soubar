BEGIN ~CBNARULF~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 EXIT
  IF ~~ THEN REPLY @2 GOTO 26
  IF ~~ THEN REPLY @3 GOTO 27
  IF ~~ THEN REPLY @4 EXIT
END

IF ~Global("CbPartyAndCharlotteDiscussNarulf","AR4220",0)
Global("CbGetNarulfToStop","AR4220",0)~ THEN BEGIN 1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 2
  IF ~~ THEN REPLY @2 GOTO 26
  IF ~~ THEN REPLY @7 GOTO 28
END

IF ~~ THEN BEGIN 2 // from: 28.0 1.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 3
  IF ~~ THEN REPLY @10 GOTO 4
  IF ~~ THEN REPLY @11 GOTO 26
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("CbPartySawNarulfWorking","AR4220",1)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @13
  IF ~~ THEN DO ~SetGlobal("CbPartySawNarulfWorking","AR4220",1)~ EXIT
END

IF ~Global("CbPartyAndCharlotteDiscussNarulf","AR4220",1)
Global("CbGetNarulfToStop","AR4220",0)~ THEN BEGIN 5
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 6
  IF ~~ THEN REPLY @16 GOTO 33
  IF ~~ THEN REPLY @17 GOTO 35
END

IF ~~ THEN BEGIN 6 // from: 34.0 5.0
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 7
  IF ~~ THEN REPLY @20 GOTO 19
END

IF ~~ THEN BEGIN 7 // from: 35.0 20.0 6.0
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 11
  IF ~~ THEN REPLY @23 GOTO 16
END

IF ~Global("CbGetNarulfToStop","AR4220",1)~ THEN BEGIN 8
  SAY @24
  IF ~PartyHasItem("CB4220PS")~ THEN REPLY @25 GOTO 9
  IF ~~ THEN REPLY @26 GOTO 24
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @29
  IF ~~ THEN DO ~SetGlobal("CbPartyStoppedNarulf","AR4220",1)~ GOTO 21
END

IF ~~ THEN BEGIN 11 // from: 32.0 17.1 7.0
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 12
  IF ~~ THEN REPLY @32 GOTO 15
  IF ~~ THEN REPLY @33 GOTO 29
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @34
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @37
  IF ~~ THEN DO ~GiveItemCreate("CB4220PS",LastTalkedToBy(),3,0,0)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.1
  SAY @38
  IF ~~ THEN DO ~GiveItemCreate("CB4220PS",LastTalkedToBy(),3,0,0)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 32.1 7.1
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @41
  IF ~~ THEN REPLY @2 GOTO 18
  IF ~~ THEN REPLY @42 GOTO 11
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @43
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 35.1 6.1
  SAY @44
  IF ~~ THEN REPLY @45 GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 7
  IF ~~ THEN REPLY @48 EXIT
  IF ~~ THEN REPLY @49 GOTO 31
END

IF ~~ THEN BEGIN 21 // from: 10.0
  SAY @50
  IF ~~ THEN REPLY @51 GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @52
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @53
  IF ~~ THEN DO ~SetGlobal("CbNarulfStoppedPoisoningRiver","AR4220",1)
SetGlobal("CbNarulfGoesFindBoss","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 8.1
  SAY @54
  IF ~~ THEN REPLY @55 GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @56
  IF ~~ THEN DO ~SetGlobal("CbNarulfStoppedPoisoningRiver","AR4220",1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 34.1 2.2 1.1 0.1
  SAY @43
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 0.2
  SAY @57
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from: 1.2
  SAY @58
  IF ~~ THEN REPLY @6 GOTO 2
END

IF ~~ THEN BEGIN 29 // from: 11.2
  SAY @59
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY @60
  IF ~~ THEN DO ~GiveItemCreate("CB4220PS",LastTalkedToBy(),3,0,0)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 20.2
  SAY @61
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY @62
  IF ~~ THEN REPLY @47 GOTO 11
  IF ~~ THEN REPLY @63 GOTO 16
  IF ~~ THEN REPLY @48 EXIT
END

IF ~~ THEN BEGIN 33 // from: 5.1
  SAY @64
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @65
  IF ~~ THEN REPLY @66 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 26
  IF ~~ THEN REPLY @48 EXIT
END

IF ~~ THEN BEGIN 35 // from: 5.2
  SAY @67
  IF ~~ THEN REPLY @19 GOTO 7
  IF ~~ THEN REPLY @68 GOTO 19
END
