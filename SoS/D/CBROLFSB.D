BEGIN ~CBROLFSB~

IF ~Global("CbPartyHasKilledAllBandits","GLOBAL",2)
Global("CbRolfGoesToTheTower","LOCALS",0)
AreaCheck("AR4305")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN DO ~SetGlobal("CbRolfGoesToTheTower","LOCALS",1)~ EXIT
END
