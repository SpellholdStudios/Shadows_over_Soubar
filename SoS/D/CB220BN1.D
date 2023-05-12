BEGIN ~CB220BN1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~Enemy()~ EXIT
END
