BEGIN ~CBGAIUS1~

IF ~NumTimesTalkedTo(0)
!Global("CbPartyIsInSoubarMilitia","GLOBAL",1)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1 
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)
!Global("CbPlayerMetSirrus","AR4289",1)
!Global("CbPartyIsInSoubarMilitia","GLOBAL",1)~ THEN BEGIN 2
  SAY @2 
  IF ~~ THEN EXIT
END

IF ~Global("CbPlayerCanJoinSoubarMilita","GLOBAL",1)
!GlobalGT("CbPartyIsInSoubarMilitia","GLOBAL",1)~ THEN BEGIN 3
  SAY @3 
  IF ~~ THEN GOTO 22
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",1)~ THEN BEGIN 4
  SAY @4 
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @5 
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @6 
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @7 
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",2)~ THEN BEGIN 8
  SAY @8 
  IF ~~ THEN EXIT
END

IF ~GlobalGT("CbPartyIsInSoubarMilitia","GLOBAL",4)
GlobalLT("CbPartyIsInSoubarMilitia","GLOBAL",6)
!GlobalGT("CbPromotePartyLieutenant","GLOBAL",1)~ THEN BEGIN 9
  SAY @9 
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",6)
Global("CbPromotePartyLieutenant","GLOBAL",1)
IsGabber(Player1)~ THEN BEGIN 10
  SAY @10 
  IF ~~ THEN REPLY @11 GOTO 11
  IF ~~ THEN REPLY @12 GOTO 15
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @13 
  IF ~~ THEN REPLY @14 GOTO 12
  IF ~~ THEN REPLY @15 GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 13.0 11.0
  SAY @16 
  IF ~~ THEN DO ~SetGlobal("CbPromotePartyLieutenant","GLOBAL",2)
EraseJournalEntry(@50105)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBPROMO4")~ SOLVED_JOURNAL @5093 EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY @17 
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @19 GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY @20 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.1
  SAY @21 
  IF ~~ THEN EXIT
END

IF ~Global("CbPromotePartyLieutenant","GLOBAL",2)
Global("CbGaiusIsAngry","LOCALS",0)
IsGabber(Player1)~ THEN BEGIN 16 // from:
  SAY @22 
  IF ~~ THEN GOTO 24
END

IF ~Global("CbPartyHasKilledAllBandits","GLOBAL",3)
GlobalLT("CbPartyLeaderBecomesMayor","GLOBAL",3)~ THEN BEGIN 17
  SAY @23 
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyHasKilledAllBandits","GLOBAL",3)
Global("CbPartyLeaderBecomesMayor","GLOBAL",3)~ THEN BEGIN 18
  SAY @24 
  IF ~~ THEN REPLY @25 GOTO 19
  IF ~NumInPartyGT(1)~ THEN REPLY @26 GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @27 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY @28 
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @29 
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 3.0
  SAY @30 
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @31 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from: 16.0
  SAY @32 
  IF ~~ THEN EXIT
END
