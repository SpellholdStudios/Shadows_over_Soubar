APPEND CERNDJ

IF ~Global("CbOriginalPeopleInteract","AR4210",1)
AreaCheck("AR4210")
Global("CbCerndInteracted_4210","AR4210",0)~ THEN BEGIN SOS68
  SAY @0
  IF ~~ THEN REPLY @1 GOTO SOS69
  IF ~~ THEN REPLY @2 GOTO SOS71
END

IF ~~ THEN BEGIN SOS69
  SAY @3
  IF ~~ THEN GOTO SOS70
END

IF ~~ THEN BEGIN SOS70
  SAY @4
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR4210",0)
SetGlobal("CbCerndInteracted_4210","AR4210",1)~ EXIT
END

IF ~~ THEN BEGIN SOS71
  SAY @5
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR4210",0)
SetGlobal("CbCerndInteracted_4210","AR4210",1)~ EXIT
END

IF ~Global("CbOriginalPeopleInteract","AR4220",1)
AreaCheck("AR4220")
Global("CbCerndInteracted_4220","AR4220",0)~ THEN BEGIN SOS72
  SAY @6
  IF ~~ THEN GOTO SOS73
END

IF ~~ THEN BEGIN SOS73
  SAY @7
  IF ~~ THEN EXTERN ~CHARLOTJ~ 101
END

IF ~~ THEN BEGIN SOS74
  SAY @8
  IF ~~ THEN EXTERN ~CHARLOTJ~ 104
END

IF ~~ THEN BEGIN SOS75
  SAY @9
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR4220",0)
SetGlobal("CbCerndInteracted_4220","AR4220",1)~ EXIT
END

END
