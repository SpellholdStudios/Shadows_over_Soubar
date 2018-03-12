BEGIN ~CBLOLTH1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @3
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @4
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @5
  IF ~~ THEN DO ~SetGlobal("CbLolthIntroducesHerself","LOCALS",2)
SetGlobal("CbWizardsCanStart","AR4211",1)
ChangeEnemyAlly(Myself,ENEMY)~ EXIT
END

IF ~Global("CbLolthChanging","AR4211",1)~ THEN BEGIN 17
  SAY @6
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @7
  IF ~~ THEN DO ~ClearAllActions()
ApplySpell(Myself,WIZARD_SHADOW_DOOR)
Wait(2)
JumpToPoint([2997.2060])
CreateCreature("CBLOLTH2",[2997.2060],12)
SetGlobal("CbLolthChanging","AR4211",2)
DestroySelf()~ EXIT
END
