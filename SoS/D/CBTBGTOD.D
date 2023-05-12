BEGIN ~CBTBGTOD~

IF ~Global("CbPartyNeverSpokeWithMe","LOCALS",0)
!Global("CbPoAskedForAle","AR4212",6)
!Allegiance(Myself,CONTROLLED)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @3
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @4
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @5
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @6
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @7
  IF ~~ THEN DO ~SetGlobal("CbPartyNeverSpokeWithMe","LOCALS",1)
IncrementGlobal("CbPartySpokeWithTBG","AR4212",1)~ EXIT
END

IF ~Global("CbPoAskedForAle","AR4212",6)
!Allegiance(Myself,CONTROLLED)~ THEN BEGIN 8
  SAY @8
  IF ~~ THEN DO ~SetGlobal("CbPoAskedForAle","AR4212",7)~ EXIT
END

IF ~Global("CbPartySpokeWithTBG","AR4212",5)
!Allegiance(Myself,CONTROLLED)
!Global("CbTBGThanksPartyForKilling","AR4212",1)~ THEN BEGIN 9
  SAY @9
  IF ~Global("CbLolthOneDead","GLOBAL",1)
!Global("CbLolthTwoDead","GLOBAL",1)
!Global("SPRITE_IS_DEADCBLOLTH3","GLOBAL",1)
!Global("SPRITE_IS_DEADCBDRAGDP","GLOBAL",1)
~ THEN REPLY @10 GOTO 10
  IF ~Global("CbLolthOneDead","GLOBAL",1)
Global("CbLolthTwoDead","GLOBAL",1)
!Global("SPRITE_IS_DEADCBLOLTH3","GLOBAL",1)
!Global("SPRITE_IS_DEADCBDRAGDP","GLOBAL",1)~ THEN REPLY @11 GOTO 15
  IF ~Global("CbLolthOneDead","GLOBAL",1)
Global("CbLolthTwoDead","GLOBAL",1)
Global("SPRITE_IS_DEADCBLOLTH3","GLOBAL",1)
!Global("SPRITE_IS_DEADCBDRAGDP","GLOBAL",1)~ THEN REPLY @12 GOTO 19
  IF ~Global("CbLolthOneDead","GLOBAL",1)
Global("CbLolthTwoDead","GLOBAL",1)
Global("SPRITE_IS_DEADCBLOLTH3","GLOBAL",1)
Global("SPRITE_IS_DEADCBDRAGDP","GLOBAL",1)~ THEN REPLY @13 GOTO 20
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @14
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @15
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 18.0 17.0 12.0
  SAY @18
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @19
  IF ~~ THEN DO ~SetGlobal("CbTBGHelpsParty","AR4212",1)
ChangeAnimationNoEffect("CBTBGTD1")~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.1
  SAY @20
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 19.0 15.0
  SAY @21
  IF ~~ THEN REPLY @22 /* #78562 */ GOTO 17
  IF ~~ THEN REPLY @23 GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 13
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY @26
  IF ~~ THEN REPLY @25 GOTO 13
END

IF ~~ THEN BEGIN 19 // from: 9.2
  SAY @27
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 20 // from: 9.3
  SAY @28
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @29
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 23.0 21.0
  SAY @30
  IF ~~ THEN DO ~ChangeEnemyAlly(Myself,NEUTRAL)
SetGlobal("CbIChangedToControlled","LOCALS",0)
EscapeAreaMove("AR0021",500,500,0)~ EXIT
END

IF ~Global("CbTBGThanksPartyForKilling","LOCALS",1)
Global("SPRITE_IS_DEADCBDRAGDP","GLOBAL",1)~ THEN BEGIN 23
  SAY @31
  IF ~~ THEN GOTO 22
END
