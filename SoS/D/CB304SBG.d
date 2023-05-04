BEGIN ~CB304SBG~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~Global("CbPartyHasKilledAllBandits","GLOBAL",3)~ THEN REPLY @1 GOTO 1
  IF ~GlobalLT("CbPartyHasKilledAllBandits","GLOBAL",3)~ THEN REPLY @2 GOTO 3
  IF ~GlobalLT("CbPartyHasKilledAllBandits","GLOBAL",3)~ THEN REPLY @3 GOTO 4
  IF ~GlobalLT("CbPartyHasKilledAllBandits","GLOBAL",3)~ THEN REPLY @4 GOTO 5
  IF ~~ THEN REPLY @5 GOTO 7
  IF ~Global("CbPartyHasKilledAllBandits","GLOBAL",3)~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @7 GOTO 10
  IF ~~ THEN REPLY @8 GOTO 13
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @11
  IF ~~ THEN DO ~AddexperienceParty(1000)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3
  SAY @14
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @15
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.4
  SAY @16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.5
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @19
  IF ~~ THEN DO ~AddexperienceParty(2000)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.6
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @24
  IF ~~ THEN DO ~ReputationInc(-2)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY @25
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 0.7
  SAY @26
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @27
  IF ~~ THEN EXIT
END
