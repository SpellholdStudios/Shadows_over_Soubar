BEGIN ~CBSOBGR1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("CbRecruiting","GLOBAL",2)~ EXIT
END

IF ~Global("CbCloseToNarwhal","LOCALS",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @5
  IF ~~ THEN DO ~GiveItemCreate("CBMANCLE",Player1,1,0,0)
GiveItemCreate("CBMANCLE",Player1,1,0,0)
GiveItemCreate("CBMANCLE",Player1,1,0,0)
GiveItemCreate("CBMANCLE",Player1,1,0,0)
GiveItemCreate("CBMANCLE",Player1,1,0,0)
GiveItemCreate("CBMANCLE",Player1,1,0,0)
GiveItemCreate("CBMANCLE",Player1,1,0,0)
GiveItemCreate("CBMANCLE",Player1,1,0,0)
GiveItemCreate("CBMANCLE",Player1,1,0,0)
GiveItemCreate("CBMANCLE",Player1,1,0,0)~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @6
  IF ~~ THEN DO ~SetGlobal("CbCloseToNarwhal","AR4230",2)
SetGlobal("CbCloseToNarwhal","LOCALS",2)~ EXIT
END

IF ~AreaCheck("AR4264")
GlobalGT("CbBarBrawl","AR4264",0)
Global("CbToldToArrest","LOCALS",2)~ THEN BEGIN 5
  SAY @7
  IF ~~ THEN REPLY @8 EXIT
  IF ~Global("CbRecruiting","GLOBAL",3)
AreaCheck("AR4264")~ THEN REPLY @9 GOTO 9
END

IF ~AreaCheck("AR4264")
Global("CbBarBrawl","AR4264",0)
Global("CbToldToStandby","LOCALS",1)~ THEN BEGIN 7
  SAY @10
  IF ~~ THEN EXIT
END

IF ~AreaCheck("AR4264")
Global("CbBarBrawl","AR4264",1)
Global("CbToldToArrest","LOCALS",1)~ THEN BEGIN 8
  SAY @11
  IF ~~ THEN DO ~SetGlobal("CbToldToArrest","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY @12
  IF ~~ THEN DO ~SetGlobal("CbThisSoldierMovedIntoNarwhal","LOCALS",1)
MoveBetweenAreas("AR4230",[1730.2870],10)~ EXIT
END
