BEGIN ~CBTBGGAL~

IF ~Global("CbPartyNeverSpokeWithMe","LOCALS",0)
!Global("CbGaelionTranslatesHello","AR4212",2)
!Global("CbGaelionandMalApology","AR4212",4)
!Global("CbTBGHelpsParty","AR4212",8)
!Global("CbTBGThanksPartyForKilling","LOCALS",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @8
  IF ~~ THEN REPLY @9 DO ~SetGlobal("CbPartyNeverSpokeWithMe","LOCALS",1)
SetGlobal("CbGaelionandMalApology","AR4212",1)
IncrementGlobal("CbPartySpokeWithTBG","AR4212",1)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @10
  IF ~~ THEN REPLY @9 DO ~SetGlobal("CbPartyNeverSpokeWithMe","LOCALS",1)
SetGlobal("CbGaelionandMalApology","AR4212",1)
IncrementGlobal("CbPartySpokeWithTBG","AR4212",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY @11
  IF ~~ THEN DO ~SetGlobal("CbPartyNeverSpokeWithMe","LOCALS",1)
IncrementGlobal("CbPartySpokeWithTBG","AR4212",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY @12
  IF ~~ THEN REPLY @9 DO ~SetGlobal("CbPartyNeverSpokeWithMe","LOCALS",1)
SetGlobal("CbGaelionandMalApology","AR4212",1)
IncrementGlobal("CbPartySpokeWithTBG","AR4212",1)~ EXIT
END

IF ~Global("CbGaelionTranslatesHello","AR4212",2)
!Global("CbGaelionandMalApology","AR4212",4)
!Global("CbTBGHelpsParty","AR4212",8)
!Global("CbTBGThanksPartyForKilling","LOCALS",1)~ THEN BEGIN 7
  SAY @13
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @14
  IF ~~ THEN GOTO 16
END

IF ~Global("CbGaelionandMalApology","AR4212",4)
!Global("CbTBGHelpsParty","AR4212",8)
!Global("CbTBGThanksPartyForKilling","LOCALS",1)~ THEN BEGIN 9
  SAY @15
  IF ~~ THEN DO ~SetGlobal("CbGaelionandMalApology","AR4212",5)~ EXIT
END

IF ~Global("CbTBGHelpsParty","AR4212",8)
!Global("CbTBGThanksPartyForKilling","LOCALS",1)~ THEN BEGIN 10
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @18
  IF ~~ THEN DO ~SetGlobal("CbTBGHelpsParty","AR4212",9)
ChangeAnimationNoEffect("CBTBGGL1")~ EXIT
END

IF ~Global("SPRITE_IS_DEADCBDRAGDP","GLOBAL",1)
Global("CbTBGThanksPartyForKilling","LOCALS",1)~ THEN BEGIN 12
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @24
  IF ~~ THEN DO ~ChangeEnemyAlly(Myself,NEUTRAL)
SetGlobal("CbIChangedToControlled","LOCALS",0)
EscapeAreaMove("AR0021",500,500,0)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @25
  IF ~~ THEN DO ~ChangeEnemyAlly(Myself,NEUTRAL)
SetGlobal("CbIChangedToControlled","LOCALS",0)
EscapeAreaMove("AR0021",500,500,0)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.0
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @28
  IF ~~ THEN DO ~SetGlobal("CbGaelionTranslatesHello","AR4212",3)~ EXIT
END
