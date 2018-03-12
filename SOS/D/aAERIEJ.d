APPEND AERIEJ

IF ~Global("CbOriginalPeopleInteract","AR4210",1)
AreaCheck("AR4210")
Global("CbAerieInteracted_4210","AR4210",0)~ THEN BEGIN SOS1
  SAY @0
  IF ~~ THEN REPLY @1 GOTO SOS2
  IF ~~ THEN REPLY @2 GOTO SOS4
END

IF ~~ THEN BEGIN SOS2
  SAY @3
  IF ~~ THEN REPLY @4 GOTO SOS3
END

IF ~~ THEN BEGIN SOS3
  SAY @5
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR4210",0)
SetGlobal("CbAerieInteracted_4210","AR4210",1)~ EXIT
END

IF ~~ THEN BEGIN SOS4
  SAY @6
  IF ~~ THEN REPLY @7 GOTO SOS5
  IF ~~ THEN REPLY @8 GOTO SOS6
  IF ~~ THEN REPLY @9 GOTO SOS7
END

IF ~~ THEN BEGIN SOS5
  SAY @10
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR4210",0)
SetGlobal("CbAerieInteracted_4210","AR4210",1)~ EXIT
END

IF ~~ THEN BEGIN SOS6
  SAY @11 
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR4210",0)
SetGlobal("CbAerieInteracted_4210","AR4210",1)~ EXIT
END

IF ~~ THEN BEGIN SOS7
  SAY @12
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR4210",0)
SetGlobal("CbAerieInteracted_4210","AR4210",1)~ EXIT
END

IF ~Global("CbOriginalPeopleInteract","AR4220",1)
AreaCheck("AR4220")
Global("CbAerieInteracted_4220","AR4220",0)~ THEN BEGIN SOS8
  SAY @13
  IF ~~ THEN REPLY @14 DO ~ApplyDamage("AERIE",3,POISON)~ GOTO SOS9
  IF ~~ THEN REPLY @15 DO ~ApplyDamage("AERIE",3,POISON)
ApplyDamage(Player1,3,POISON)~ GOTO SOS9
END

IF ~~ THEN BEGIN SOS9
  SAY @16
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR4220",0)
SetGlobal("CbAerieInteracted_4220","AR4220",1)~ EXIT
END

IF ~Global("CbCharlotteAndNaliaGirlTalk","GLOBAL",9)
Global("CbAerieJoinsTalk","LOCALS",0)~ THEN BEGIN SOS10 
  SAY @17
  IF ~~ THEN DO ~SetGlobal("CbAerieJoinsTalk","LOCALS",1)
ActionOverride("CHARLOTT",StartDialogNoSet("AERIE"))~ EXIT
END

END
