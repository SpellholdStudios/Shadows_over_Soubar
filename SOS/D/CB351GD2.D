BEGIN ~CB351GD2~

IF ~Global("CbTrainThrust","LOCALS",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("CbTrainThrust","LOCALS",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CB351THT")~ EXIT
END

IF ~Global("CbTrainSlash","LOCALS",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("CbTrainSlash","LOCALS",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CB351SLS")~ EXIT
END

IF ~Global("CbTrainOverhand","LOCALS",1)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~SetGlobal("CbTrainOverhand","LOCALS",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CB351OVH")~ EXIT
END

IF ~Global("CbTrainRanged","LOCALS",1)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @4
  IF ~~ THEN DO ~SetGlobal("CbTrainRanged","LOCALS",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CB351RNG")~ EXIT
END

IF ~Global("CbTrainForm4","LOCALS",1)~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN DO ~SetGlobal("CbTrainForm4","LOCALS",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CB351FM4")~ EXIT
END

IF ~Global("CbTrainForm6","LOCALS",1)~ THEN BEGIN 6
  SAY @6
  IF ~~ THEN DO ~SetGlobal("CbTrainForm6","LOCALS",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CB351FM6")~ EXIT
END

IF ~Global("CbTrainForm9","LOCALS",1)~ THEN BEGIN 7
  SAY @7
  IF ~~ THEN DO ~SetGlobal("CbTrainForm9","LOCALS",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CB351FM9")~ EXIT
END

IF ~Global("CbTrainForm4","AR4351",3)~ THEN BEGIN 8
  SAY @8
  IF ~~ THEN DO ~SetGlobal("CbTrainForm4","AR4351",4)~ EXIT
END

IF ~Global("CbTrainForm6","AR4351",3)~ THEN BEGIN 9
  SAY @9
  IF ~~ THEN DO ~SetGlobal("CbTrainForm6","AR4351",4)~ EXIT
END

IF ~Global("CbTrainForm9","AR4351",3)~ THEN BEGIN 10
  SAY @10
  IF ~~ THEN DO ~SetGlobal("CbTrainForm9","AR4351",4)~ EXIT
END

IF ~Global("CbTrielPatrolTown","LOCALS",1)
!Global("CbTrielPatrolTown","AR4351",2)~ THEN BEGIN 11
  SAY @11
  IF ~~ THEN DO ~SetGlobal("CbTrielPatrolTown","AR4351",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CB351PAT")~ EXIT
END

IF ~Global("CbTrielStandGuard","LOCALS",1)~ THEN BEGIN 12
  SAY @12
  IF ~~ THEN DO ~SetGlobal("CbTrielStandGuard","LOCALS",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CB351GRD")~ EXIT
END

IF ~False()~ THEN BEGIN 13
  SAY @13
  IF ~~ THEN REPLY @14 EXIT
END
