BEGIN ~CBSBVILI~

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",0)
RandomNum(3,1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 11
  IF ~~ THEN REPLY @3 EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",0)
RandomNum(3,2)~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",0)
RandomNum(3,3)~ THEN BEGIN 3 // from:
  SAY @7
  IF ~~ THEN EXIT
END

IF ~GlobalGT("CbPartyIsInSoubarMilitia","GLOBAL",0)
GlobalLT("CbPartyHasKilledAllBandits","GLOBAL",3)~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @9
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyLeaderBecomesMayor","GLOBAL",3)~ THEN BEGIN 6
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.0
  SAY @13
  IF ~~ THEN REPLY @14 EXIT
  IF ~~ THEN REPLY @15 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @18
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 0.1
  SAY @19
  IF ~~ THEN DO ~ReputationInc(-1)~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)
Gender(Myself,FEMALE)~ THEN BEGIN 12
  SAY @20
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)
Gender(Myself,MALE)~ THEN BEGIN 13
  SAY @21
  IF ~~ THEN EXIT
END
