APPEND YOSHJ

IF ~Global("CbOriginalPeopleInteract","AR4330",1)
AreaCheck("AR4330")
Global("CbRopeBridgeMade","AR4330",0)
Global("CbYoshimoInteracted_4330","AR4330",0)~ THEN BEGIN SOS310
  SAY @0
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR4330",0)
SetGlobal("CbYoshimoInteracted_4330","AR4330",1)~ EXIT
END

IF ~Global("CbOriginalPeopleInteract","AR4330",1)
AreaCheck("AR4330")
GlobalGT("CbRopeBridgeMade","AR4330",0)
Global("CbYoshimoInteracted_4330","AR4330",0)~ THEN BEGIN SOS311
  SAY @1
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR4330",0)
SetGlobal("CbYoshimoInteracted_4330","AR4330",1)~ EXIT
END

IF ~Global("CbYoshimoInteractMayor","GLOBAL",1)~ THEN BEGIN SOS312
  SAY @2
  IF ~~ THEN REPLY @3 GOTO SOS313
END

IF ~~ THEN BEGIN SOS313
  SAY @4
  IF ~~ THEN DO ~SetGlobal("CbYoshimoInteractMayor","GLOBAL",2)~ EXIT
END

END