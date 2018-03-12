BEGIN ~CBSOUSGT~

IF ~Global("CbMajorWantsStuffInBag","AR4286",2)
Global("CbGetUniforms","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 12.0 11.0 4.0 2.1
  SAY @11
  IF ~~ THEN DO ~ActionOverride(Player1,DestroyAllEquipment())
ActionOverride(Player2,DestroyAllEquipment())
ActionOverride(Player3,DestroyAllEquipment())
ActionOverride(Player4,DestroyAllEquipment())
ActionOverride(Player5,DestroyAllEquipment())
ActionOverride(Player6,DestroyAllEquipment())~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0 1.0
  SAY @12
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @13
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @14
  IF ~~ THEN DO ~ActionOverride(Player1,DestroyAllEquipment())
ActionOverride(Player2,DestroyAllEquipment())
ActionOverride(Player3,DestroyAllEquipment())
ActionOverride(Player4,DestroyAllEquipment())
ActionOverride(Player5,DestroyAllEquipment())
ActionOverride(Player6,DestroyAllEquipment())~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @15
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 10 // from: 4.1
  SAY @16
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @17
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @18 GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 5
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",1)
Global("CbPartyStartsRoadPatrol","LOCALS",0)~ THEN BEGIN 16
  SAY @21
  IF ~~ THEN DO ~SetGlobal("CbPartyStartsRoadPatrol","LOCALS",1)
EscapeAreaMove("AR4230",1725,270,14)~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.0
  SAY @22
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @23
  IF ~!Class(Player1,MONK)
!Class(Player2,MONK)
!Class(Player3,MONK)
!Class(Player4,MONK)
!Class(Player5,MONK)
!Class(Player6,MONK)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBMILITA")~ EXIT
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBFXMNK1")~ EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",1)
Global("CbPartyStartsRoadPatrol","LOCALS",1)~ THEN BEGIN 19
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @26
  IF ~~ THEN DO ~SetGlobal("CbPartyStartsRoadPatrol","LOCALS",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBRODPAT")~ EXIT
END

IF ~Global("CbPartyStartsRoadPatrol","LOCALS",3)
!See(NearestEnemyOf(Myself))~ THEN BEGIN 21
  SAY @27
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @28
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @29
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @30
  IF ~~ THEN REPLY @31 DO ~AddexperienceParty(10000)
SetGlobal("CbPartyStartsRoadPatrol","LOCALS",4)
ApplySpell(Myself,HEAL_NO_VISUAL)
MoveBetweenAreas("AR4286",[1153.523],15)~ EXIT
END

IF ~Global("CbPartyStartsRoadPatrol","LOCALS",5)
Global("CbRoadPatrolDone","AR4286",0)~ THEN BEGIN 25
  SAY @32
  IF ~~ THEN DO ~SetGlobal("CbRoadPatrolDone","AR4286",1)
MoveToObject("CBSOUMJR")~ EXIT
END

IF ~Global("CbFarmPatrolDuty","AR4286",1)
AreaCheck("AR4286")~ THEN BEGIN 26
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 27
  IF ~~ THEN REPLY @35 GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @36
  IF ~~ THEN DO ~SetGlobal("CbFarmPatrolDuty","AR4286",2)
SetGlobal("CbSargeTakesAllToFarms","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBFARMPT")~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY @37
  IF ~~ THEN EXIT
END

IF ~Global("CbFarmPatrolDuty","AR4232",3)
Global("CbSargeTakesAllToFarms","LOCALS",1)~ THEN BEGIN 29
  SAY @38
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY @39
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @40
  IF ~~ THEN DO ~SetGlobal("CbFarmPatrolDuty","AR4232",4)
SetGlobal("CbSargeTakesAllToFarms","LOCALS",2)~ EXIT
END

IF ~Global("CbPartyFoundCharlie","AR4232",1)
Global("CbFarmPatrolDuty","AR4232",4)
Global("CbSargeTakesAllToFarms","LOCALS",2)
AreaCheck("AR4232")~ THEN BEGIN 32
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 33
  IF ~~ THEN REPLY @43 GOTO 38
  IF ~~ THEN REPLY @44 GOTO 39
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY @45
  IF ~~ THEN REPLY @46 GOTO 34
  IF ~~ THEN REPLY @47 GOTO 36
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @50
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0 33.1
  SAY @51
  IF ~Global("CbCharlieFollows","AR4232",1)~ THEN REPLY @52 GOTO 37
  IF ~Global("CbCharlieFollows","AR4232",0)~ THEN REPLY @53 DO ~AddexperienceParty(20000)
SetGlobal("CbPartyFoundCharlie","AR4232",2)
SetGlobal("CbFarmPatrolDuty","AR4232",5)
SetGlobal("CbSargeTakesAllToFarms","LOCALS",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBLV232a")~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY @54
  IF ~~ THEN DO ~AddexperienceParty(20000)
SetGlobal("CbPartyFoundCharlie","AR4232",2)
SetGlobal("CbFarmPatrolDuty","AR4232",5)
SetGlobal("CbSargeTakesAllToFarms","LOCALS",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBLV232b")~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 32.1
  SAY @55
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 39 // from: 32.2
  SAY @56
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~Global("CbSargeTakesAllToFarms","LOCALS",3)
AreaCheck("AR4286")~ THEN BEGIN 40
  SAY @57
  IF ~~ THEN DO ~SetGlobal("CbFarmPatrolDuty","AR4286",3)
SetGlobal("CbSargeTakesAllToFarms","LOCALS",4)
SetGlobalTimer("CbSargePromotesParty","LOCALS",60)
MoveToObject("CBSOUMJR")~ EXIT
END

IF ~Global("CbFarmPatrolDuty","AR4286",3)
Global("CbSargeTakesAllToFarms","LOCALS",4)
GlobalTimerExpired("CbSargePromotesParty","LOCALS")
AreaCheck("AR4286")~ THEN BEGIN 41
  SAY @58
  IF ~~ THEN DO ~SetGlobal("CbFarmPatrolDuty","AR4286",4)~ EXIT
END

IF ~Global("CbFarmPatrolDuty","AR4286",4)
Global("CbBeetleBaileyPlaysHisFano","LOCALS",0)~ THEN BEGIN 42
  SAY @59
  IF ~~ THEN DO ~SetGlobal("CbBeetleBaileyPlaysHisFano","LOCALS",1)~ EXIT
END

IF ~GlobalGT("CbPartyIsInSoubarMilitia","GLOBAL",1)
GlobalLT("CbPartyIsInSoubarMilitia","GLOBAL",5)~ THEN BEGIN 43
  SAY @60
  IF ~GlobalGT("CbPartySquadDied","GLOBAL",3)~ THEN REPLY @61 GOTO 44
  IF ~~ THEN REPLY @62 EXIT
END

IF ~~ THEN BEGIN 44 // from: 53.3 52.3 45.3 43.0
  SAY @63
  IF ~~ THEN DO ~SetGlobal("CbPartySquadCreated","GLOBAL",1)~ EXIT
END

IF ~GlobalGT("CbPartyIsInSoubarMilitia","GLOBAL",4)
!Global("CbPartyIsInSoubarMilitia","GLOBAL",7)~ THEN BEGIN 45
  SAY @64
  IF ~~ THEN REPLY @65 EXIT
  IF ~Global("CbASpyWasJailed","GLOBAL",1)
~ THEN REPLY @66 GOTO 46
  IF ~Global("CbASpyWasJailed","GLOBAL",0)
!Global("CbPartyTrainedTriel","GLOBAL",2)~ THEN REPLY @66 GOTO 51
  IF ~GlobalGT("CbPartySquadDied","GLOBAL",3)~ THEN REPLY @61 GOTO 44
END

IF ~~ THEN BEGIN 46 // from: 53.1 52.1 45.1
  SAY @67
  IF ~!Global("CbPartyTrainedTriel","GLOBAL",2)~ THEN REPLY @68 GOTO 47
  IF ~~ THEN REPLY @69 GOTO 50
END

IF ~~ THEN BEGIN 47 // from: 51.0 46.0
  SAY @70
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY @71
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY @72
  IF ~~ THEN DO ~SetGlobal("CbSergeantOpensTrainingArea","GLOBAL",1)
SetGlobal("CbPartyTrainedTriel","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 46.1
  SAY @73
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from: 53.2 52.2 45.2
  SAY @74
  IF ~~ THEN REPLY @75 GOTO 47
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",7)
!Global("CbPartyLeaderBecomesMayor","GLOBAL",3)~ THEN BEGIN 52
  SAY @76
  IF ~~ THEN REPLY @65 EXIT
  IF ~Global("CbASpyWasJailed","GLOBAL",1)~ THEN REPLY @66 GOTO 46
  IF ~Global("CbASpyWasJailed","GLOBAL",0)
!Global("CbPartyTrainedTriel","GLOBAL",2)~ THEN REPLY @66 GOTO 51
  IF ~GlobalGT("CbPartySquadDied","GLOBAL",3)~ THEN REPLY @61 GOTO 44
END

IF ~Global("CbPartyLeaderBecomesMayor","GLOBAL",3)~ THEN BEGIN 53
  SAY @77
  IF ~~ THEN REPLY @65 EXIT
  IF ~~ THEN REPLY @66 GOTO 46
  IF ~~ THEN REPLY @66 GOTO 51
  IF ~GlobalGT("CbPartySquadDied","GLOBAL",3)~ THEN REPLY @61 GOTO 44
END
