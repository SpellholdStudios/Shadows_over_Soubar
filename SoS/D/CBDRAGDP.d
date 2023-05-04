BEGIN ~CBDRAGDP~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 DO ~SetGlobal("CbDeepDragonChangedToEnemy","AR4212",1)
ChangeEnemyAlly(Myself,ENEMY)~ EXIT
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6
  IF ~~ THEN REPLY @3 DO ~SetGlobal("CbDeepDragonChangedToEnemy","AR4212",1)
ChangeEnemyAlly(Myself,ENEMY)~ EXIT
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1 1.2
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 7.1 4.0
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @11
  IF ~~ THEN DO ~SetGlobal("CbDeepDragonChangedToEnemy","AR4212",1)
ChangeEnemyAlly(Myself,ENEMY)~ EXIT
END

IF ~True()~ THEN BEGIN 7
  SAY @12
  IF ~~ THEN REPLY @3 DO ~SetGlobal("CbDeepDragonChangedToEnemy","AR4212",1)
ChangeEnemyAlly(Myself,ENEMY)~ EXIT
  IF ~~ THEN REPLY @8 GOTO 5
END
