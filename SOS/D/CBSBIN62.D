BEGIN ~CBSBIN62~

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~!Global("CbBerdesDirtyInn","AR4262",1)~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 9.0 8.0 7.0 0.0
  SAY @5
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6
  IF ~~ THEN DO ~SetGlobal("CbBerdesDirtyInn","AR4262",1)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 9.1 8.1 7.1 6.0 0.1
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 9.3 8.3 7.3 6.1 3.0 0.3
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @11
  IF ~~ THEN DO ~StartStore("CBSBIN62",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 9.2 8.2 7.2 0.2
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 3
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~GlobalGT("CbPartyIsInSoubarMilitia","GLOBAL",0)
GlobalLT("CbPartyIsInSoubarMilitia","GLOBAL",8)~ THEN BEGIN 7
  SAY @15
  IF ~!Global("CbBerdesDirtyInn","AR4262",1)~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @16 EXIT
END

IF ~Global("CbPartyHasKilledAllBandits","GLOBAL",3)
!Global("CbPartyLeaderBecomesMayor","GLOBAL",3)~ THEN BEGIN 8
  SAY @17
  IF ~!Global("CbBerdesDirtyInn","AR4262",1)~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @16 EXIT
END

IF ~Global("CbPartyLeaderBecomesMayor","GLOBAL",3)~ THEN BEGIN 9
  SAY @18
  IF ~!Global("CbBerdesDirtyInn","AR4262",1)~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @16 EXIT
END
