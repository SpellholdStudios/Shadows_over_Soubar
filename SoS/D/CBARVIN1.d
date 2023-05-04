BEGIN ~CBARVIN1~

IF ~NumTimesTalkedTo(0)
!Global("CbPartyIsInSoubarMilitia","GLOBAL",1)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN GOTO 9
END

IF ~Global("CbPlayerMetSirrus","AR4289",0)
!GlobalGT("CbPartyIsInSoubarMilitia","GLOBAL",1)~ THEN BEGIN 1
  SAY @1 
  IF ~~ THEN EXIT
END

IF ~Global("CbPlayerCanJoinSoubarMilita","GLOBAL",1)
!GlobalGT("CbPartyIsInSoubarMilitia","GLOBAL",1)~ THEN BEGIN 2
  SAY @2 
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",1)~ THEN BEGIN 3
  SAY @3 
  IF ~~ THEN GOTO 10
END

IF ~GlobalGT("CbPartyIsInSoubarMilitia","GLOBAL",2)
GlobalLT("CbPartyHasKilledAllBandits","GLOBAL",3)~ THEN BEGIN 4
  SAY @4 
  IF ~~ THEN GOTO 11
END

IF ~Global("CbPartyHasKilledAllBandits","GLOBAL",3)
GlobalLT("CbPartyLeaderBecomesMayor","GLOBAL",3)~ THEN BEGIN 5
  SAY @5 
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyHasKilledAllBandits","GLOBAL",3)
Global("CbPartyLeaderBecomesMayor","GLOBAL",3)~ THEN BEGIN 6
  SAY @6 
  IF ~NumInPartyGT(1)~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @9 
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @10 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.0
  SAY @11 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.0
  SAY @12 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.0
  SAY @13 
  IF ~~ THEN EXIT
END
