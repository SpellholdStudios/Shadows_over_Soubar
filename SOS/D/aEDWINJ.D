APPEND EDWINJ

IF ~Global("CbOriginalPeopleInteract","AR4210",1)
AreaCheck("AR4210")
Global("CbEdwinInteracted_4210","AR4210",0)~ THEN BEGIN SOS76
  SAY @0
  IF ~~ THEN GOTO SOS77
END

IF ~~ THEN BEGIN SOS77
  SAY @1
  IF ~~ THEN REPLY @2 GOTO SOS78
  IF ~~ THEN REPLY @3 GOTO SOS79
END

IF ~~ THEN BEGIN SOS78
  SAY @4 /* #80324 */
  IF ~~ THEN GOTO SOS79
END

IF ~~ THEN BEGIN SOS79
  SAY @5
  IF ~~ THEN GOTO SOS80
END

IF ~~ THEN BEGIN SOS80
  SAY @6 
  IF ~~ THEN GOTO SOS81
END

IF ~~ THEN BEGIN SOS81
  SAY @7
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR4210",0)
SetGlobal("CbEdwinInteracted_4210","AR4210",1)~ EXIT
END

IF ~Global("CbOriginalPeopleInteract","AR1613",1)
AreaCheck("AR1613")
Global("CbEdwinInteracted_1613","AR1613",0)
~ THEN BEGIN SOS82
  SAY @8
  IF ~Dead("CBWILLMa")
OR(1)
Dead("CBWILLMs")
~ THEN GOTO SOS83
  IF ~!Dead("CBWILLMa")
!Dead("CBWILLMs")~ THEN GOTO SOS85
END

IF ~~ THEN BEGIN SOS83
  SAY @9
  IF ~~ THEN GOTO SOS84
END

IF ~~ THEN BEGIN SOS84
  SAY @10
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR1613",0)
SetGlobal("CbEdwinInteracted_1613","AR1613",1)~ EXIT
END

IF ~~ THEN BEGIN SOS85
  SAY @11
  IF ~~ THEN GOTO SOS86
END

IF ~~ THEN BEGIN SOS86
  SAY @12
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR1613",0)
SetGlobal("CbEdwinInteracted_1613","AR1613",1)~ EXIT
END

END
