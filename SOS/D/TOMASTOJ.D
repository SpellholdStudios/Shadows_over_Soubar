BEGIN ~TOMASTOJ~

IF ~AreaCheck("AR0500")
!Global("CbTomasSpoke","LOCALS",1)
!Global("CbTomasWantsToGoBridge","GLOBAL",2)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN DO ~SetGlobal("CbTomasSpoke","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY @6
  IF ~~ THEN DO ~SetGlobal("CbTomasSpoke","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY @7
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @5
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @8
  IF ~~ THEN DO ~SetGlobal("CbTomasSpoke","LOCALS",1)~ EXIT
END

IF ~Global("CbTomasWantsToGoBridge","GLOBAL",2)
!AreaCheck("AR0500")
~ THEN BEGIN 7 // from:
  SAY @9
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @10
  IF ~~ THEN REPLY @11 DO ~SetGlobal("CbTomasWantsToGoBridge","GLOBAL",0)~ EXIT
  IF ~~ THEN REPLY @12 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @13
  IF ~~ THEN DO ~SetGlobal("CbTomasWantsToGoBridge","GLOBAL",3)~ EXIT
END

IF ~AreaCheck("AR0500")
Global("CbPiperGetsRidOfPipe","AR0500",1)~ THEN BEGIN 10
  SAY @14
  IF ~PartyHasItem("CBRRRPIP")~ THEN GOTO 11
  IF ~!PartyHasItem("CBRRRPIP")~ THEN GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @15
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 14.0 11.0
  SAY @16
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @17
  IF ~~ THEN DO ~SetGlobal("CbRatsRatsRatsConcluded","GLOBAL",1)
SetGlobal("CbRatsRatsRatsStart","AR0500",0)
AddExperienceParty(10000)
AddXPObject("TOMASTM",10000)~ JOURNAL @50205 EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY @18
  IF ~~ THEN GOTO 12
END
