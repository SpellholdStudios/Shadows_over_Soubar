APPEND MINSCJ

IF ~Global("CbOriginalPeopleInteract","AR4210",1)
AreaCheck("AR4210")
Global("CbMinscInteracted_4210","AR4210",0)~ THEN BEGIN SOS283
  SAY @0
  IF ~~ THEN GOTO SOS284
END

IF ~~ THEN BEGIN SOS284
  SAY @1
  IF ~~ THEN GOTO SOS285
END

IF ~~ THEN BEGIN SOS285
  SAY @2
  IF ~~ THEN REPLY @3 GOTO SOS286
  IF ~~ THEN REPLY @4 GOTO SOS287
END

IF ~~ THEN BEGIN SOS286
  SAY @5
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR4210",0)
SetGlobal("CbMinscInteracted_4210","AR4210",1)~ EXIT
END

IF ~~ THEN BEGIN SOS287
  SAY @6
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR4210",0)
SetGlobal("CbMinscInteracted_4210","AR4210",1)~ EXIT
END

IF ~Global("CbOriginalPeopleInteract","AR1100",1)
AreaCheck("AR1100")
~ THEN BEGIN SOS288
  SAY @7
  IF ~~ THEN REPLY @8 GOTO SOS289
  IF ~~ THEN REPLY @9 GOTO SOS290
END

IF ~~ THEN BEGIN SOS289
  SAY @10
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR1100",0)
SetGlobal("CbMinscInteract_1100","AR1100",1)~ EXIT
END

IF ~~ THEN BEGIN SOS290
  SAY @11
  IF ~~ THEN GOTO SOS291
END

IF ~~ THEN BEGIN SOS291
  SAY @12
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR1100",0)
SetGlobal("CbMinscInteract_1100","AR1100",1)~ EXIT
END

END
