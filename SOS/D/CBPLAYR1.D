BEGIN ~CBPLAYR1~

IF ~Global("CbPartyHasKilledAllBandits","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2
  IF ~Global("CbPartyHasKilledAllBandits","GLOBAL",0)~ THEN DO ~ActionOverride("CBROLFSB",Enemy())
SetGlobal("CbPartyHasKilledAllBandits","GLOBAL",1)~ EXIT
END

IF ~Global("CbPartyHasKilledAllBandits","GLOBAL",1)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~SetGlobal("CbPartyHasKilledAllBandits","GLOBAL",2)
SetDialog("")~ EXIT
END
