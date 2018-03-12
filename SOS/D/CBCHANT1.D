BEGIN ~CBCHANT1~ 2

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~OR(5)
Class(Player1,CLERIC)
Class(Player1,FIGHTER_CLERIC)
Class(Player1,CLERIC_MAGE)
Class(Player1,CLERIC_THIEF)
Class(Player1,FIGHTER_MAGE_CLERIC)
Alignment(Player1,MASK_GOOD)~ THEN REPLY @1 GOTO 21
  IF ~//OR(6)
!Class(Player1,CLERIC)
!Class(Player1,FIGHTER_CLERIC)
!Class(Player1,CLERIC_MAGE)
!Class(Player1,CLERIC_THIEF)
!Class(Player1,FIGHTER_MAGE_CLERIC)
!Alignment(Player1,MASK_GOOD)~ THEN REPLY @1 GOTO 18
  IF ~GlobalLT("CbPartyIsInSoubarMilitia","GLOBAL",7)~ THEN REPLY @2 GOTO 19
  IF ~~ THEN REPLY @3 DO ~StartStore("CBCHANT1",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @4 GOTO 42
END

IF ~~ THEN BEGIN 18 // from: 0.1
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: 0.2
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 0.0
  SAY @7
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @8
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @9
  IF ~~ THEN REPLY @10 DO ~SetGlobal("CbChaunteaClergy","LOCALS",1)~ GOTO 24
  IF ~~ THEN REPLY @11 DO ~SetGlobal("CbChaunteaMission","LOCALS",1)~ GOTO 25
  IF ~~ THEN REPLY @12 DO ~SetGlobal("CbChaunteaFollower","LOCALS",1)~ GOTO 27
  IF ~~ THEN REPLY @13 DO ~SetGlobal("CbChaunteaExtra","LOCALS",1)~ GOTO 29
  IF ~~ THEN REPLY @14 GOTO 32
END

IF ~~ THEN BEGIN 24 // from: 31.0 28.0 26.0 24.0 23.0
  SAY @15
  IF ~~ THEN REPLY @10 DO ~SetGlobal("CbChaunteaClergy","LOCALS",1)~ GOTO 24
  IF ~~ THEN REPLY @11 DO ~SetGlobal("CbChaunteaMission","LOCALS",1)~ GOTO 25
  IF ~~ THEN REPLY @12 DO ~SetGlobal("CbChaunteaFollower","LOCALS",1)~ GOTO 27
  IF ~~ THEN REPLY @13 DO ~SetGlobal("CbChaunteaExtra","LOCALS",1)~ GOTO 29
  IF ~~ THEN REPLY @14 GOTO 32
END

IF ~~ THEN BEGIN 25 // from: 31.1 28.1 26.1 24.1 23.1
  SAY @16
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @17
  IF ~~ THEN REPLY @10 DO ~SetGlobal("CbChaunteaClergy","LOCALS",1)~ GOTO 24
  IF ~~ THEN REPLY @11 DO ~SetGlobal("CbChaunteaMission","LOCALS",1)~ GOTO 25
  IF ~~ THEN REPLY @12 DO ~SetGlobal("CbChaunteaFollower","LOCALS",1)~ GOTO 27
  IF ~~ THEN REPLY @13 DO ~SetGlobal("CbChaunteaExtra","LOCALS",1)~ GOTO 29
  IF ~~ THEN REPLY @14 GOTO 32
END

IF ~~ THEN BEGIN 27 // from: 31.2 28.2 26.2 24.2 23.2
  SAY @18
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY @19
  IF ~~ THEN REPLY @10 DO ~SetGlobal("CbChaunteaClergy","LOCALS",1)~ GOTO 24
  IF ~~ THEN REPLY @11 DO ~SetGlobal("CbChaunteaMission","LOCALS",1)~ GOTO 25
  IF ~~ THEN REPLY @12 DO ~SetGlobal("CbChaunteaFollower","LOCALS",1)~ GOTO 27
  IF ~~ THEN REPLY @13 DO ~SetGlobal("CbChaunteaExtra","LOCALS",1)~ GOTO 29
  IF ~~ THEN REPLY @14 GOTO 32
END

IF ~~ THEN BEGIN 29 // from: 31.3 28.3 26.3 24.3 23.3
  SAY @20
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY @21
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @22
  IF ~~ THEN REPLY @10 DO ~SetGlobal("CbChaunteaClergy","LOCALS",1)~ GOTO 24
  IF ~~ THEN REPLY @11 DO ~SetGlobal("CbChaunteaMission","LOCALS",1)~ GOTO 25
  IF ~~ THEN REPLY @12 DO ~SetGlobal("CbChaunteaFollower","LOCALS",1)~ GOTO 27
  IF ~~ THEN REPLY @13 DO ~SetGlobal("CbChaunteaExtra","LOCALS",1)~ GOTO 29
  IF ~~ THEN REPLY @14 GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.4 28.4 26.4 24.4 23.4
  SAY @23
  IF ~Global("CbChaunteaExtra","LOCALS",1)
Global("CbChaunteaClergy","LOCALS",1)
Global("CbChaunteaFollower","LOCALS",1)
Global("CbChaunteaMission","LOCALS",1)~ THEN GOTO 33
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 34
  IF ~~ THEN REPLY @26 GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @27
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.1
  SAY @28
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 37
  IF ~~ THEN REPLY @31 GOTO 40
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 38
  IF ~~ THEN REPLY @31 EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY @34
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY @35
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.1
  SAY @36
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 41 // from: 32.1
  SAY @37
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from: 0.4
  SAY @38
  IF ~~ THEN EXIT
END
