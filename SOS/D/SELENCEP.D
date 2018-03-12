BEGIN ~SELENCEP~

IF ~Global("CbSelenceGetsSmuggling","GLOBAL",4)
!Global("CbSelenceGetsSmuggling","GLOBAL",1)
!Global("CbSelenceGetsSmuggling","GLOBAL",2)
AreaCheck("AR4210")~ THEN BEGIN 0
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
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @6
  IF ~~ THEN DO ~SetGlobal("CbSelenceGetsSmuggling","GLOBAL",5)
DestroyItem("CBSLENCE")
GiveItemCreate("CBSLENCE",Myself,1,0,0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @7
  IF ~~ THEN EXIT
END

IF ~Global("KickedOut","LOCALS",0)
!Global("CbSelenceGetsSmuggling","GLOBAL",1)
!Global("CbSelenceGetsSmuggling","GLOBAL",2)~ THEN BEGIN 6
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @11
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
SetGlobal("CbSelenceOpensGraveyard","AR0800",0)
EscapeAreaMove("AR4210",3081,2140,12)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @12
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~Global("KickedOut","LOCALS",0)
GlobalGT("CbSelenceGetsSmuggling","GLOBAL",4)~ THEN BEGIN 9
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @16
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @17
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
SetGlobal("CbSelenceOpensGraveyard","AR0800",0)
EscapeAreaMove("AR4210",3081,2140,12)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY @12
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~Global("KickedOut","LOCALS",1)
GlobalLT("CbSelenceIsPissed","LOCALS",3)~ THEN BEGIN 13
  SAY @18
  IF ~~ THEN DO ~IncrementGlobal("CbSelenceIsPissed","LOCALS",1)~ EXIT
END

IF ~Global("KickedOut","LOCALS",1)
Global("CbSelenceIsPissed","LOCALS",3)~ THEN BEGIN 14
  SAY @19
  IF ~~ THEN DO ~Enemy()~ EXIT
END
