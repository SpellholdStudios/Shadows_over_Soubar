APPEND ANOMENJ


IF ~Global("CbOriginalPeopleInteract","AR4202",1)
Global("CbAnomenInteracted_4202","AR4202",0)~ THEN BEGIN SOS11
  SAY @0
  IF ~~ THEN GOTO SOS12
END

IF ~~ THEN BEGIN SOS12
  SAY @1
  IF ~~ THEN REPLY @2 GOTO SOS13
  IF ~~ THEN REPLY @3 GOTO SOS14
END

IF ~~ THEN BEGIN SOS13
  SAY @4
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR4202",0)
SetGlobal("CbAnomenInteracted_4202","AR4202",1)~ EXIT
END

IF ~~ THEN BEGIN SOS14
  SAY @5
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR4202",0)
SetGlobal("CbAnomenInteracted_4202","AR4202",1)~ EXIT
END

IF ~Global("CbOriginalPeopleInteract","AR4330",1)
AreaCheck("AR4330")
Global("CbAnomenInteracted_4330","AR4330",0)~ THEN BEGIN SOS15
  SAY @6 
  IF ~~ THEN REPLY @7 GOTO SOS16
  IF ~Gender(Player1,MALE)~ THEN REPLY @8 GOTO SOS17
  IF ~!Gender(Player1,MALE)~ THEN GOTO SOS18
END

IF ~~ THEN BEGIN SOS16
  SAY @9
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR4330",0)
SetGlobal("CbAnomenInteracted_4330","AR4330",1)~ EXIT
END

IF ~~ THEN BEGIN SOS17
  SAY @10
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR4330",0)
SetGlobal("CbAnomenInteracted_4330","AR4330",1)~ EXIT
END

IF ~~ THEN BEGIN SOS18
  SAY @11
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR4330",0)
SetGlobal("CbAnomenInteracted_4330","AR4330",1)~ EXIT
END

END
