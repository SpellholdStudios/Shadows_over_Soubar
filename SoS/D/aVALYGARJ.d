APPEND VALYGARJ

IF ~Global("CbOriginalPeopleInteract","AR1613",1)
AreaCheck("AR1613")
Global("CbValygarInteracted_1613","AR1613",0)~ THEN BEGIN SOS292
  SAY @0
  IF ~~ THEN GOTO SOS293
END

IF ~~ THEN BEGIN SOS293
  SAY @1
  IF ~~ THEN GOTO SOS294
END

IF ~~ THEN BEGIN SOS294
  SAY @2
  IF ~~ THEN GOTO SOS295
END

IF ~~ THEN BEGIN SOS295
  SAY @3
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR1613",0)
SetGlobal("CbValygarInteracted_1613","AR1613",1)~ EXIT
END

END
