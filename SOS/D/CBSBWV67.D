BEGIN ~CBSBWV67~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~Global("CbJillAnnKrossStoreCanOpen","AR4267",1)~ THEN GOTO 1
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN EXIT
END
