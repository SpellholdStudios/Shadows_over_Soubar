BEGIN ~CBISSON1~

IF ~InPartySlot(LastTalkedToBy,0)
!Global("CbCanSpawnFence","GLOBAL",1)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 16
  IF ~~ THEN REPLY @3 GOTO 17
END

IF ~~ THEN BEGIN 1 // from: 16.0 0.0
  SAY @4 
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5 
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6 
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7 
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @8 
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @9 
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @10 
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @11 
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @12
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @13 
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @14 
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @15 
  IF ~~ THEN REPLY @16 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @17 
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @18 
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @19 
  IF ~~ THEN REPLY @20 DO ~SetGlobal("CbCanSpawnFence","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBATTACK")~ JOURNAL @50204 EXIT
  IF ~~ THEN REPLY @21 DO ~SetGlobal("CbCanSpawnFence","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBATTACK")~ JOURNAL @50204  EXIT
  IF ~~ THEN REPLY @22 DO ~SetGlobal("CbCanSpawnFence","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBATTACK")~ JOURNAL @50204 EXIT
 END

IF ~~ THEN BEGIN 16 // from: 17.0 0.1
  SAY @23 
  IF ~~ THEN REPLY @24 GOTO 1
END

IF ~~ THEN BEGIN 17 // from: 0.2
  SAY @25 
  IF ~~ THEN REPLY @26 GOTO 16
END

IF ~!InPartySlot(LastTalkedToBy,0)
!Global("CbCanSpawnFence","GLOBAL",1)~ THEN BEGIN 18
  SAY @27 
  IF ~~ THEN EXIT
END

IF ~Global("CbCanSpawnFence","GLOBAL",1)
InPartySlot(LastTalkedToBy,0)~ THEN BEGIN 19
  SAY @28 
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @29 
  IF ~~ THEN GOTO 22
END

IF ~Global("CbCanSpawnFence","GLOBAL",1)
!InPartySlot(LastTalkedToBy,0)~ THEN BEGIN 21
  SAY @30 
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.0
  SAY @31 
  IF ~~ THEN DO ~Wait(10)
EscapeArea()~ EXIT
END
