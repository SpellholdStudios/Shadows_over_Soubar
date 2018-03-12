BEGIN ~CBSOUMJ1~

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",0)
Global("CbPlayerCanJoinSoubarMilita","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",0)
Global("CbPlayerCanJoinSoubarMilita","GLOBAL",1)
Global("CbMajorWantsStuffInBag","AR4286",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7
  IF ~~ THEN DO ~SetGlobal("CbMajorWantsStuffInBag","AR4286",1)
GiveItem("CBLOCKER",Player1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @8
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",0)
Global("CbPlayerCanJoinSoubarMilita","GLOBAL",1)
Global("CbMajorWantsStuffInBag","AR4286",1)~ THEN BEGIN 6
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 14
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 13
  IF ~~ THEN REPLY @15 GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 8.0 7.0
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @18
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 13.0 9.0
  SAY @19
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 12.0 10.0
  SAY @20
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 12 // from: 8.2 7.2
  SAY @21
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 7.1
  SAY @18
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY @22
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.0
  SAY @23
  IF ~~ THEN DO ~SetGlobal("CbMajorWantsStuffInBag","AR4286",2)
EraseJournalEntry(@50106)
TakePartyItem("CBLOCKER")
DestroyItem("CBLOCKER")
CreateCreatureOffScreen("CBSOUSGT",0)~
UNSOLVED_JOURNAL @50107 EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",0)
Global("CbMajorWantsStuffInBag","AR4286",3)~ THEN BEGIN 16
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @26
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @27
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @28
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @29
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @30
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @31
  IF ~~ THEN REPLY @32  DO ~SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",1)~
  UNSOLVED_JOURNAL @50108 EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",1)
Global("CbRoadPatrolDone","AR4286",0)~ THEN BEGIN 23
  SAY @33
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @34
  IF ~~ THEN REPLY @35 EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",1)
Global("CbRoadPatrolDone","AR4286",1)
Global("CbFarmPatrolDuty","AR4286",0)~ THEN BEGIN 25
  SAY @36
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @37
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @38
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY @39
  IF ~~ THEN DO ~GiveItemCreate("CBTRVBAG",LastTalkedToBy(),1,0,0)
EraseJournalEntry(@50108)
SetGlobal("CbRoadPatrolDone","AR4286",2)
SetGlobal("CbFarmPatrolDuty","AR4286",1)~ 
UNSOLVED_JOURNAL @50102 EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",1)
Global("CbFarmPatrolDuty","AR4286",4)~ THEN BEGIN 29
  SAY @40
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY @41
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY @44
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY @45
  IF ~~ THEN REPLY @46 GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @47
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @48
  IF ~!Class(Player1,MONK)
!Class(Player2,MONK)
!Class(Player3,MONK)
!Class(Player4,MONK)
!Class(Player5,MONK)
!Class(Player6,MONK)
~ THEN DO ~AddExperienceParty(30000)
EraseJournalEntry(@50107)
SetGlobal("CbFarmPatrolDuty","AR4286",5)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBPROMO1")~ 
SOLVED_JOURNAL @50103 EXIT
  IF ~~ THEN DO ~AddExperienceParty(30000)
EraseJournalEntry(@50107)
SetGlobal("CbFarmPatrolDuty","AR4286",5)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBFXMNKA")~
SOLVED_JOURNAL @50103 EXIT
END
