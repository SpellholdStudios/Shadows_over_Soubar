BEGIN ~CBSBIN72~

IF ~ReactionLT(LastTalkedToBy(),NEUTRAL_LOWER)
NumTimesTalkedTo(0)
!See("CHARLOTT")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 18
END

IF ~ReactionGT(LastTalkedToBy(),HOSTILE_UPPER)
NumTimesTalkedTo(0)
!See("CHARLOTT")~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN GOTO 20
END

IF ~NumTimesTalkedToGT(0)
GlobalLT("CbPartyLeaderBecomesMayor","GLOBAL",3)
!See("CHARLOTT")~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 6.0 2.0
  SAY @3
  IF ~~ THEN REPLY @4 DO ~StartStore("CBSBIN72",LastTalkedToBy())~ EXIT
  IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",0)~ THEN REPLY @5 GOTO 4
  IF ~GlobalGT("CbPartyIsInSoubarMilitia","GLOBAL",4)
GlobalLT("CbPartyIsInSoubarMilitia","GLOBAL",8)~ THEN REPLY @6 GOTO 8
  IF ~GlobalGT("CbPartyIsInSoubarMilitia","GLOBAL",7)
GlobalLT("CbPartyHasKilledAllBandits","GLOBAL",3)~ THEN REPLY @7 GOTO 10
  IF ~~ THEN REPLY @8 EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 5
  IF ~~ THEN REPLY @11 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 7.0 4.0
  SAY @12
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @13
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY @14
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY @15
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @16
  IF ~~ THEN REPLY @4 DO ~StartStore("CBSBIN72",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @8 EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.3
  SAY @17
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @18
  IF ~~ THEN REPLY @4 DO ~StartStore("CBSBIN72",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @8 EXIT
END

IF ~Global("CbPartyLeaderBecomesMayor","GLOBAL",3)
!See("CHARLOTT")~ THEN BEGIN 12
  SAY @19
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @25
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY @26
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @27
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 0.0
  SAY @28
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @29
  IF ~~ THEN REPLY @4 DO ~StartStore("CBSBIN72",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @8 EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.0
  SAY @30
  IF ~~ THEN REPLY @4 DO ~StartStore("CBSBIN72",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @8 EXIT
END

IF ~See("CHARLOTT")~ THEN BEGIN 21
  SAY @31
  IF ~~ THEN EXIT
END
