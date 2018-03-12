BEGIN ~CBLDBUCK~

IF ~!Global("CbBuckoAskedForHelp","LOCALS",1)
!Dead("CBBUCKMO")
!Global("CbBuckoGaveReward","LOCALS",1)
!Global("CbBuckoGaveReward","LOCALS",2)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 9
END

IF ~!Dead("CBBUCKMO")
Global("CbBuckoAskedForHelp","LOCALS",1)~ THEN BEGIN 4
  SAY @1
  IF ~~ THEN GOTO 17
END

IF ~Dead("CBBUCKMO")
!Global("CbBuckoGaveReward","LOCALS",1)~ THEN BEGIN 5
  SAY @2
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @3
  IF ~~ THEN GOTO 20
END

IF ~Global("CbBuckoGaveReward","LOCALS",1)
!Global("CbBetraChanged","GLOBAL",1)~ THEN BEGIN 7
  SAY @4
  IF ~Global("CbBetraCanChangeNow","GLOBAL",0)~ THEN GOTO 21
  IF ~Global("CbBetraCanChangeNow","GLOBAL",1)~ THEN GOTO 24
END

IF ~Global("CbBetraChanged","GLOBAL",1)~ THEN BEGIN 8
  SAY @5
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 9 // from: 0.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 10
  IF ~~ THEN REPLY @8 GOTO 11
  IF ~~ THEN REPLY @9 GOTO 15
END

IF ~~ THEN BEGIN 10 // from: 16.0 15.1 14.0 9.0
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 14
  IF ~~ THEN REPLY @14 GOTO 16
END

IF ~~ THEN BEGIN 13 // from: 10.0
  SAY @15
  IF ~~ THEN DO ~SetGlobal("CbBuckoAskedForHelp","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.0
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @18 GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 16.1 14.1 9.2
  SAY @19
  IF ~~ THEN REPLY @20 EXIT
  IF ~~ THEN REPLY @17 GOTO 10
END

IF ~~ THEN BEGIN 16 // from: 11.1
  SAY @21
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @18 GOTO 15
  IF ~~ THEN REPLY @22 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 4.0
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 18
  IF ~~ THEN REPLY @25 GOTO 19
  IF ~~ THEN REPLY @26 GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @27
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.2 17.1
  SAY @28
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 6.0
  SAY @29
  IF ~~ THEN DO ~GivePartyGold(16000)
AddXPObject(Player1,10000)
AddXPObject(Player2,10000)
AddXPObject(Player3,10000)
AddXPObject(Player4,10000)
AddXPObject(Player5,10000)
AddXPObject(Player6,10000)
SetGlobal("CbBuckoGaveReward","LOCALS",1)~ JOURNAL @50203 EXIT
END

IF ~~ THEN BEGIN 21 // from: 7.0
  SAY @30
  IF ~~ THEN DO ~SetGlobal("CbBetraCanChangeNow","GLOBAL",1)
ReputationInc(1)~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 8.0
  SAY @31
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @32
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from: 7.1
  SAY @30
  IF ~~ THEN EXIT
END
