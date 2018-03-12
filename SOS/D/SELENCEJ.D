BEGIN ~SELENCEJ~

IF ~Global("CbSelenceInteractsStronghold","LOCALS",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 2.0 0.0
  SAY @3
  IF ~~ THEN REPLY @4 DO ~SetGlobal("CbSelenceInteractsStronghold","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 1
END

IF ~Global("CbSelenceInteractsStronghold","LOCALS",3)~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @8
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @9
  IF ~~ THEN DO ~SetGlobal("CbSelenceInteractsStronghold","LOCALS",4)
SetGlobal("CbSelenceOpensGraveyard","AR0800",1)
TriggerActivation("CbFenceOperation",TRUE)~ EXIT
END

IF ~Global("CbSelenceInteractsStronghold","LOCALS",5)~ THEN BEGIN 6
  SAY @10
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @11
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("CbSelenceInteractsStronghold","LOCALS",6)~ EXIT
END

IF ~Global("CbSelenceInteractsStronghold","LOCALS",7)~ THEN BEGIN 9
  SAY @13
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @14
  IF ~~ THEN DO ~SetGlobal("CbSelenceInteractsStronghold","LOCALS",8)~ EXIT
END

IF ~Global("CbSelenceInteractsStronghold","LOCALS",9)~ THEN BEGIN 11
  SAY @15
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @19 GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @20
  IF ~~ THEN DO ~SetGlobal("CbSelenceInteractsStronghold","LOCALS",10)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY @21
  IF ~~ THEN DO ~SetGlobal("CbSelenceInteractsStronghold","LOCALS",10)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.2
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~~ THEN REPLY @24 GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @25
  IF ~~ THEN DO ~SetGlobal("CbSelenceInteractsStronghold","LOCALS",10)~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY @26
  IF ~~ THEN DO ~SetGlobal("CbSelenceInteractsStronghold","LOCALS",10)~ EXIT
END

IF ~Global("CbSelenceInteractsStronghold","LOCALS",10)
Global("SPRITE_IS_DEADCBLOLTH3","GLOBAL",1)
!Global("CbSelenceCantSayThisTwice","LOCALS",1)~ THEN BEGIN 18
  SAY @27
  IF ~~ THEN DO ~SetGlobal("CbSelenceCantSayThisTwice","LOCALS",1)~ EXIT
END

IF ~Global("CbSelenceInteractsStronghold","LOCALS",10)
Global("SPRITE_IS_DEADCBDRAGDP","GLOBAL",1)
!Global("CbSelenceCantSayThisOneAgain","LOCALS",1)~ THEN BEGIN 19
  SAY @28
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @29
  IF ~~ THEN DO ~SetGlobal("CbSelenceCantSayThisOneAgain","LOCALS",1)~ EXIT
END

IF ~Global("CbSelenceInteractsStronghold","LOCALS",15)
!GlobalGT("CbSelenceGetsSmuggling","GLOBAL",1)~ THEN BEGIN 21
  SAY @30
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 23
  IF ~~ THEN REPLY @33 DO ~SetGlobal("CbSelenceSetsSmuggling","GLOBAL",1)~ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0 22.1
  SAY @36
  IF ~~ THEN DO ~SetGlobal("CbSelenceGetsSmuggling","GLOBAL",1)
SetGlobal("CbSelenceGetsSmuggling","GLOBAL",2)
SetGlobalTimer("CbSelenceReturns","GLOBAL",2100)
SetGlobal("CbSelenceInteractsStronghold","LOCALS",16)
SetDialog("SELENCEP")
LeaveParty()
EscapeAreaMove("AR4210",3081,2140,12)
Deactivate(Myself)
SetGlobal("CbSelenceGetsSmuggling","GLOBAL",3)~ EXIT
END

IF ~Global("CbSelenceSmuggles","GLOBAL",1)
Global("CbSelenceReportsIncome01","LOCALS",0)~ THEN BEGIN 25
  SAY @37
  IF ~~ THEN DO ~SetGlobal("CbSelenceReportsIncome01","LOCALS",1)~ EXIT
END

IF ~Global("CbSelenceSmuggles","GLOBAL",3)
Global("CbSelenceReportsIncome02","LOCALS",0)~ THEN BEGIN 26
  SAY @38
  IF ~~ THEN DO ~SetGlobal("CbSelenceReportsIncome02","LOCALS",1)~ EXIT
END

IF ~Global("CbSelenceSmuggles","GLOBAL",5)
Global("CbSelenceReportsIncome03","LOCALS",0)~ THEN BEGIN 27
  SAY @39
  IF ~~ THEN DO ~SetGlobal("CbSelenceReportsIncome03","LOCALS",1)~ EXIT
END

IF ~Global("CbSelenceSmuggles","GLOBAL",7)
Global("CbSelenceReportsIncome04","LOCALS",0)~ THEN BEGIN 28
  SAY @40
  IF ~~ THEN DO ~SetGlobal("CbSelenceReportsIncome04","LOCALS",1)~ EXIT
END

IF ~Global("CbSelenceSmuggles","GLOBAL",9)
Global("CbSelenceReportsIncome05","LOCALS",0)~ THEN BEGIN 29
  SAY @41
  IF ~~ THEN DO ~SetGlobal("CbSelenceReportsIncome05","LOCALS",1)~ EXIT
END

IF ~Global("CbSelenceSmuggles","GLOBAL",11)
Global("CbSelenceReportsIncome06","LOCALS",0)~ THEN BEGIN 30
  SAY @42
  IF ~~ THEN DO ~SetGlobal("CbSelenceReportsIncome06","LOCALS",1)~ EXIT
END

IF ~Global("CbSelenceSmuggles","GLOBAL",13)
Global("CbSelenceReportsIncome07","LOCALS",0)~ THEN BEGIN 31
  SAY @38
  IF ~~ THEN DO ~SetGlobal("CbSelenceReportsIncome07","LOCALS",1)~ EXIT
END

IF ~Global("CbSelenceSmuggles","GLOBAL",15)
Global("CbSelenceReportsIncome08","LOCALS",0)~ THEN BEGIN 32
  SAY @43
  IF ~~ THEN DO ~SetGlobal("CbSelenceReportsIncome08","LOCALS",1)~ EXIT
END

IF ~Global("CbSelenceSmuggles","GLOBAL",17)
Global("CbSelenceReportsIncome09","LOCALS",0)~ THEN BEGIN 33
  SAY @44
  IF ~~ THEN DO ~SetGlobal("CbSelenceReportsIncome09","LOCALS",1)~ EXIT
END
