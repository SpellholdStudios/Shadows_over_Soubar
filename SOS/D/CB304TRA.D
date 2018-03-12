BEGIN ~CB304TRA~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~Global("CbPartyHasKilledAllBandits","GLOBAL",3)~ THEN REPLY @1 GOTO 1
  IF ~GlobalLT("CbPartyHasKilledAllBandits","GLOBAL",3)~ THEN REPLY @2 GOTO 2
  IF ~GlobalLT("CbPartyHasKilledAllBandits","GLOBAL",3)~ THEN REPLY @3 GOTO 7
  IF ~GlobalLT("CbPartyHasKilledAllBandits","GLOBAL",3)~ THEN REPLY @4 GOTO 8
  IF ~~ THEN REPLY @5 GOTO 10
  IF ~Global("CbPartyHasKilledAllBandits","GLOBAL",3)~ THEN REPLY @6 GOTO 11
  IF ~~ THEN REPLY @7 GOTO 13
  IF ~~ THEN REPLY @8 GOTO 16
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @9
  IF ~~ THEN DO ~AddexperienceParty(1000)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 3
  IF ~~ THEN REPLY @12 GOTO 5
  IF ~~ THEN REPLY @13 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @14
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @15
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY @17
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.2
  SAY @18
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.3
  SAY @19
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @20
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.4
  SAY @21
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 0.5
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @24
  IF ~~ THEN DO ~AddexperienceParty(2000)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 0.6
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @27 GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @28
  IF ~~ THEN DO ~ReputationInc(-2)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @29
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 0.7
  SAY @30
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @31
  IF ~~ THEN EXIT
END
