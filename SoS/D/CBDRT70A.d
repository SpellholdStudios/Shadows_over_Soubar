BEGIN ~CBDRT70A~

IF ~Global("CbPlayingDartsForGold","AR4270",0)
!Global("CbDartPlayerPlayed","AR4270",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 DO ~SetGlobal("CbPlayingDartsForGold","AR4270",1)~ GOTO 3
  IF ~~ THEN REPLY @6 DO ~SetGlobal("CbPlayingDartsForGold","AR4270",10)~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBDART70")~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @8
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBDART70")~ EXIT
END

IF ~Global("CbDartPlayerPlayed","AR4270",1)
GlobalGT("CbPlayingDartsForGold","AR4270",0)
RandomNum(2,1)~ THEN BEGIN 5
  SAY @9
  IF ~Global("CbPlayingDartsForGold","AR4270",1)~ THEN GOTO 6
  IF ~Global("CbPlayingDartsForGold","AR4270",10)~ THEN GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @10
  IF ~~ THEN DO ~GiveGoldForce(1)~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 9.1 9.0 8.0 6.0
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~~ THEN REPLY @13 GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY @14
  IF ~~ THEN DO ~GiveGoldForce(10)~ GOTO 7
END

IF ~Global("CbDartPlayerPlayed","AR4270",1)
GlobalGT("CbPlayingDartsForGold","AR4270",0)
RandomNum(2,2)~ THEN BEGIN 9 // from:
  SAY @15
  IF ~Global("CbPlayingDartsForGold","AR4270",1)~ THEN DO ~TakePartyGold(1)~ GOTO 7
  IF ~Global("CbPlayingDartsForGold","AR4270",10)~ THEN DO ~TakePartyGold(10)~ GOTO 7
END

IF ~~ THEN BEGIN 10 // from: 7.0
  SAY @16
  IF ~~ THEN DO ~SetGlobal("CbDartPlayerPlayed","AR4270",0)
SetGlobal("CbPlayingDartsForGold","AR4270",0)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.1
  SAY @17
  IF ~~ THEN REPLY @18 DO ~SetGlobal("CbPlayingDartsForGold","AR4270",10)~ GOTO 12
  IF ~~ THEN REPLY @19 DO ~SetGlobal("CbPlayingDartsForGold","AR4270",1)~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @20
  IF ~~ THEN DO ~SetGlobal("CbDartPlayerPlayed","AR4270",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBDART70")~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY @20
  IF ~~ THEN DO ~SetGlobal("CbDartPlayerPlayed","AR4270",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBDART70")~ EXIT
END
