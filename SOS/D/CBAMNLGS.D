BEGIN ~CBAMNLGS~

IF ~!Global("CbCaughtBandE","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN REPLY @2 DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CbInJail")~ GOTO 4
  IF ~~ THEN REPLY @3 DO ~ActionOverride("CBAMNG01",ChangeEnemyAlly(Myself,ENEMY))
ActionOverride("CBAMNG02",ChangeEnemyAlly(Myself,ENEMY))
ActionOverride("CBAMNG03",ChangeEnemyAlly(Myself,ENEMY))
ActionOverride("CBAMNG04",ChangeEnemyAlly(Myself,ENEMY))
ActionOverride("CBAMNG05",ChangeEnemyAlly(Myself,ENEMY))
ActionOverride("CBAMNLG1",ChangeEnemyAlly(Myself,ENEMY))
ActionOverride("CBAMNLG2",ChangeEnemyAlly(Myself,ENEMY))
ActionOverride("CBAMNLG3",ChangeEnemyAlly(Myself,ENEMY))
ActionOverride("CBAMNLG4",ChangeEnemyAlly(Myself,ENEMY))
ActionOverride("CBAMNLGS",ChangeEnemyAlly(Myself,ENEMY))
SetGlobal("CbCaughtBandE","GLOBAL",1)~ EXIT
END

IF ~Global("CbCaughtBandE","GLOBAL",1)~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN REPLY @3 GOTO 5
  IF ~~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @5
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CbInJail")~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY @5
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CbInJail")~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0
  SAY @6
  IF ~~ THEN DO ~ActionOverride("CBAMNG01",ChangeEnemyAlly(Myself,ENEMY))
ActionOverride("CBAMNG02",ChangeEnemyAlly(Myself,ENEMY))
ActionOverride("CBAMNG03",ChangeEnemyAlly(Myself,ENEMY))
ActionOverride("CBAMNG04",ChangeEnemyAlly(Myself,ENEMY))
ActionOverride("CBAMNG05",ChangeEnemyAlly(Myself,ENEMY))
ActionOverride("CBAMNLG1",ChangeEnemyAlly(Myself,ENEMY))
ActionOverride("CBAMNLG2",ChangeEnemyAlly(Myself,ENEMY))
ActionOverride("CBAMNLG3",ChangeEnemyAlly(Myself,ENEMY))
ActionOverride("CBAMNLG4",ChangeEnemyAlly(Myself,ENEMY))
ActionOverride("CBAMNLGS",ChangeEnemyAlly(Myself,ENEMY))~ EXIT
END
