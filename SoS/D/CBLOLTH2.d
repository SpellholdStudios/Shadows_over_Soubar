BEGIN ~CBLOLTH2~

IF ~Global("CbLolthChanging","AR4211",4)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN DO ~ClearAllActions()
ApplySpell(Myself,WIZARD_SHADOW_DOOR)
Wait(2)
JumpToPoint([656.1079])
CreateCreature("CBLOLTH3",[671.1090],14)
SetGlobal("CbLolthChanging","AR4211",5)
DestroySelf()~ EXIT
END
