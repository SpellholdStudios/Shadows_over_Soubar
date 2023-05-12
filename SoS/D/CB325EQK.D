BEGIN ~CB325EQK~

IF ~Global("CbBigEarthquake","AR4325",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2
  IF ~~ THEN GOTO 4
END

IF ~GlobalGT("CbBigEarthquake","AR4325",0)
RandomNum(2,1)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY @4
  IF ~~ THEN DO ~SetGlobal("CbBigEarthquake","AR4325",1)~ EXIT
END

IF ~GlobalGT("CbBigEarthquake","AR4325",0)
RandomNum(2,2)
NumInPartyGT(1)~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN EXIT
END

IF ~GlobalGT("CbBigEarthquake","AR4325",0)
RandomNum(2,2)
NumInParty(1)~ THEN BEGIN 6
  SAY @6
  IF ~~ THEN EXIT
END
