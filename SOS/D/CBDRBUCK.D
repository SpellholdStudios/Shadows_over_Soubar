BEGIN ~CBDRBUCK~

IF ~Dead("CBBUCKMO")
Global("CbBetraMoved","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~Global("CbBetraChanged","GLOBAL",0)~ THEN REPLY @4 GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @5
  IF ~~ THEN DO ~SetGlobal("CbBetraMoved","GLOBAL",1)
EscapeArea()~ EXIT
END

IF ~Global("CbBetraCanChangeNow","GLOBAL",1)
Global("CbBetraChanged","GLOBAL",0)~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @7
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @8
  IF ~~ THEN DO ~DestroySelf()
CreateCreature("CBDRWERE",[-1.-1],0)
SetGlobal("CbBetraChanged","GLOBAL",1)~ EXIT
END

IF ~Global("CbBetraMoved","GLOBAL",1)~ THEN BEGIN 7
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.1
  SAY @10
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @11
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("CbBetraCanChangeNow","GLOBAL",1)
SetGlobal("CbBetraChanged","GLOBAL",1)
DestroySelf()
CreateCreature("CBDRWERE",[-1.-1],0)~ EXIT
END
