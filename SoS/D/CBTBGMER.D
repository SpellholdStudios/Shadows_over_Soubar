BEGIN ~CBTBGMER~

IF ~Global("CbPartyHasSpokeWithMe","LOCALS",0)
!Global("CbPoAskedForAle","AR4212",2)
!Global("CbTBGHelpsParty","AR4212",2)
!Global("CbTBGThanksPartyForKilling","LOCALS",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @11
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("CbPartyHasSpokeWithMe","LOCALS",1)
SetGlobal("CbMercAsksPoAboutBabies","AR4212",1)
IncrementGlobal("CbPartySpokeWithTBG","AR4212",1)~ EXIT
END

IF ~Global("CbPoAskedForAle","AR4212",2)
!Global("CbTBGHelpsParty","AR4212",2)
!Global("CbTBGThanksPartyForKilling","LOCALS",1)~ THEN BEGIN 8
  SAY @13
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @14
  IF ~~ THEN DO ~SetGlobal("CbPoAskedForAle","AR4212",3)~ EXIT
END

IF ~Global("CbTBGHelpsParty","AR4212",2)
!Global("CbTBGThanksPartyForKilling","LOCALS",1)~ THEN BEGIN 10
  SAY @15
  IF ~~ THEN DO ~SetGlobal("CbTBGHelpsParty","AR4212",3)
ChangeAnimationNoEffect("CBTBGMR1")~ EXIT
END

IF ~Global("SPRITE_IS_DEADCBDRAGDP","GLOBAL",1)
Global("CbTBGThanksPartyForKilling","LOCALS",1)~ THEN BEGIN 11
  SAY @16
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @17
  IF ~~ THEN DO ~ChangeEnemyAlly(Myself,NEUTRAL)
SetGlobal("CbIChangedToControlled","LOCALS",0)
EscapeAreaMove("AR0021",500,500,0)~ EXIT
END
