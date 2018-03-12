APPEND HAERDAJ

IF ~Global("CbOriginalPeopleInteract","AR1613",1)
AreaCheck("AR1613")
Global("CbHaerdalisInteracted_1613","AR1613",0)~ THEN BEGIN SOS87
  SAY @0
  IF ~~ THEN GOTO SOS88
END

IF ~~ THEN BEGIN SOS88
  SAY @1
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR1613",0)
SetGlobal("CbHaerdalisInteracted_1613","AR1613",1)~ EXIT
END

IF ~Global("CbHaerInteractMayor","GLOBAL",1)~ THEN BEGIN SOS89
  SAY @2
  IF ~~ THEN GOTO SOS90
END

IF ~~ THEN BEGIN SOS90
  SAY @3
  IF ~~ THEN REPLY @4 GOTO SOS91
  IF ~~ THEN REPLY @5 GOTO SOS92
END

IF ~~ THEN BEGIN SOS91
  SAY @6
  IF ~~ THEN DO ~SetGlobal("CbHaerInteractMayor","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN SOS92
  SAY @7
  IF ~~ THEN DO ~SetGlobal("CbHaerInteractMayor","GLOBAL",2)~ EXIT
END

END