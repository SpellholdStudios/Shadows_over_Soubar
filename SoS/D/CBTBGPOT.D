BEGIN ~CBTBGPOT~

IF ~Global("CbPartyNeverSpokeWithMe","LOCALS",0)
!Global("CbMercAsksPoAboutBabies","AR4212",2)
!Global("CbPoAskedForAle","AR4212",4)
!Global("CbTBGHelpsParty","AR4212",4)
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
  IF ~~ THEN DO ~SetGlobal("CbPartyNeverSpokeWithMe","LOCALS",1)
SetGlobal("CbPoAskedForAle","AR4212",1)
IncrementGlobal("CbPartySpokeWithTBG","AR4212",1)~ EXIT
END

IF ~Global("CbPoAskedForAle","AR4212",4)
!Global("CbMercAsksPoAboutBabies","AR4212",2)
!Global("CbTBGHelpsParty","AR4212",4)
!Global("CbTBGThanksPartyForKilling","LOCALS",1)~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN DO ~SetGlobal("CbPoAskedForAle","AR4212",5)~ EXIT
END

IF ~Global("CbMercAsksPoAboutBabies","AR4212",2)
!Global("CbPoAskedForAle","AR4212",4)
!Global("CbTBGHelpsParty","AR4212",4)
!Global("CbTBGThanksPartyForKilling","LOCALS",1)~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN DO ~SetGlobal("CbMercAsksPoAboutBabies","AR4212",3)~ EXIT
END

IF ~Global("CbTBGHelpsParty","AR4212",4)
!Global("CbTBGThanksPartyForKilling","LOCALS",1)~ THEN BEGIN 5
  SAY @7
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @8
  IF ~~ THEN DO ~SetGlobal("CbTBGHelpsParty","AR4212",5)
ChangeAnimationNoEffect("CBTBGPT1")~ EXIT
END

IF ~Global("SPRITE_IS_DEADCBDRAGDP","GLOBAL",1)
Global("CbTBGThanksPartyForKilling","LOCALS",1)~ THEN BEGIN 7
  SAY @9
  IF ~~ THEN DO ~ChangeEnemyAlly(Myself,NEUTRAL)
SetGlobal("CbIChangedToControlled","LOCALS",0)
EscapeAreaMove("AR0021",500,500,0)~ EXIT
END
