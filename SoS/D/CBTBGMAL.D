BEGIN ~CBTBGMAL~

IF ~Global("CbPartyNeverSpokeWithMe","LOCALS",0)
!Global("CbGaelionandMalApology","AR4212",2)
!Global("CbTBGHelpsParty","AR4212",6)
!Global("CbTBGThanksPartyForKilling","LOCALS",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("CbPartyNeverSpokeWithMe","LOCALS",1)
SetGlobal("CbGaelionTranslatesHello","AR4212",1)
IncrementGlobal("CbPartySpokeWithTBG","AR4212",1)~ EXIT
END

IF ~Global("CbGaelionandMalApology","AR4212",2)
!Global("CbTBGHelpsParty","AR4212",6)
!Global("CbTBGThanksPartyForKilling","LOCALS",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("CbGaelionandMalApology","AR4212",3)~ EXIT
END

IF ~Global("CbTBGHelpsParty","AR4212",6)
!Global("CbTBGThanksPartyForKilling","LOCALS",1)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~SetGlobal("CbTBGHelpsParty","AR4212",7)
ChangeAnimationNoEffect("CBTBGML1")~ EXIT
END

IF ~Global("SPRITE_IS_DEADCBDRAGDP","GLOBAL",1)
Global("CbTBGThanksPartyForKilling","LOCALS",1)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~ChangeEnemyAlly(Myself,NEUTRAL)
SetGlobal("CbIChangedToControlled","LOCALS",0)
EscapeAreaMove("AR0021",500,500,0)~ EXIT
END
