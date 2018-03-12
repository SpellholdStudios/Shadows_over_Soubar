APPEND MAZZYJ

IF ~Global("CbMazzyInteract","AR4211",1)
Global("CbOriginalPeopleInteract","AR4211",0)
Global("CbViconiaInteract","AR4211",1)
AreaCheck("AR4211")
Global("CbMazzyInteracted_4211","AR4211",0)~ THEN BEGIN SOS272
  SAY @0
  IF ~~ THEN REPLY @1 GOTO SOS273
  IF ~~ THEN REPLY @2 GOTO SOS274
  IF ~~ THEN REPLY @3 GOTO SOS273
END

IF ~~ THEN BEGIN SOS273
  SAY @4
  IF ~~ THEN DO ~SetGlobal("CbMazzyInteract","AR4211",2)
SetGlobal("CbMazzyInteracted_4211","AR4211",1)~ EXIT
END

IF ~~ THEN BEGIN SOS274
  SAY @5
  IF ~~ THEN DO ~SetGlobal("CbMazzyInteract","AR4211",2)
SetGlobal("CbMazzyInteracted_4211","AR4211",1)~ EXIT
END

IF ~Global("CbMazzyInteract","AR4211",1)
Global("CbOriginalPeopleInteract","AR4211",0)
Global("CbViconiaInteract","AR4211",0)
AreaCheck("AR4211")
Global("CbMazzyInteracted_4211","AR4211",0)~ THEN BEGIN SOS275
  SAY @6
  IF ~~ THEN REPLY @7 GOTO SOS276
  IF ~~ THEN REPLY @8 GOTO SOS277
END

IF ~~ THEN BEGIN SOS276
  SAY @9
  IF ~~ THEN DO ~SetGlobal("CbMazzyInteract","AR4211",2)
SetGlobal("CbMazzyInteracted_4211","AR4211",1)~ EXIT
END

IF ~~ THEN BEGIN SOS277
  SAY @10
  IF ~~ THEN REPLY @11 GOTO SOS278
  IF ~~ THEN REPLY @12 GOTO SOS279
END

IF ~~ THEN BEGIN SOS278
  SAY @13 
  IF ~~ THEN DO ~SetGlobal("CbMazzyInteract","AR4211",2)
SetGlobal("CbMazzyInteracted_4211","AR4211",1)~ EXIT
END

IF ~~ THEN BEGIN SOS279
  SAY @14
  IF ~~ THEN DO ~SetGlobal("CbMazzyInteract","AR4211",2)
SetGlobal("CbMazzyInteracted_4211","AR4211",1)~ EXIT
END

IF ~Global("CbMazzyInteractMayor","GLOBAL",1)
~ THEN BEGIN SOS280
  SAY @15
  IF ~~ THEN DO ~SetGlobal("CbMazzyInteractMayor","GLOBAL",2)~ EXIT
END

IF ~Global("CbCharlotteAndNaliaGirlTalk","GLOBAL",9)
Global("CbAerieJoinsTalk","LOCALS",0)~ THEN BEGIN SOS281
  SAY @16
  IF ~~ THEN GOTO SOS282
END

IF ~~ THEN BEGIN SOS282
  SAY @17
  IF ~~ THEN EXIT
END

END
