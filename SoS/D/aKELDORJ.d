APPEND KELDORJ

IF ~Global("CbOriginalPeopleInteract","AR4202",0)
AreaCheck("AR4202")
Global("CbAnomenInteracted_4202","AR4202",1)
Global("CbKeldornInteraced_4202","AR4202",0)~ THEN BEGIN SOS222
  SAY @0
  IF ~~ THEN GOTO SOS223
END

IF ~~ THEN BEGIN SOS223
  SAY @1
  IF ~~ THEN GOTO SOS224
END

IF ~~ THEN BEGIN SOS224
  SAY @2
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR4202",0)
SetGlobal("CbKeldornInteraced_4202","AR4202",1)~ EXIT
END

IF ~Global("CbOriginalPeopleInteract","AR4202",0)
AreaCheck("AR4202")
Global("CbAnomenInteracted_4202","AR4202",0)
Global("CbKeldornInteraced_4202","AR4202",0)~ THEN BEGIN SOS225
  SAY @3
  IF ~~ THEN GOTO SOS226
END

IF ~~ THEN BEGIN SOS226
  SAY @4
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR4202",0)~ GOTO SOS227
END

IF ~~ THEN BEGIN SOS227
  SAY @2
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR4202",0)
SetGlobal("CbKeldornInteraced_4202","AR4202",1)~ EXIT
END

IF ~Global("CbBetraChanged","GLOBAL",1)
Global("CbOriginalPeopleInteract","AR4203",1)
AreaCheck("AR4203")
Global("CbKeldornInteracted_4203","AR4203",0)~ THEN BEGIN SOS228
  SAY @5
  IF ~~ THEN GOTO SOS229
END

IF ~~ THEN BEGIN SOS229
  SAY @6
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR4203",0)
SetGlobal("CbKeldornInteracted_4203","AR4203",1)~ EXIT
END

END
