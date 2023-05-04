BEGIN ~CBSOUMJ3~

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",5)~ THEN BEGIN 0
  SAY @0
  IF ~Global("CbOrderCompanyOfGuard","GLOBAL",0)
Global("CbRiverOfOrchids","GLOBAL",0)~ THEN GOTO 1
  IF ~Global("CbOrderCompanyOfGuard","GLOBAL",2)
Global("CbRiverOfOrchids","GLOBAL",2)
GlobalGT("CbCompTo_N_W","GLOBAL",0)
OR(2)
GlobalGT("CbCompTo_N","GLOBAL",0)
GlobalGT("CbCompTo_N_E","GLOBAL",0)~ THEN REPLY @1 GOTO 4
  IF ~GlobalGT("CbDeliveringMissives","GLOBAL",2)
!Global("CbPartyIsInSoubarMilitia","GLOBAL",6)~ THEN REPLY @2 GOTO 8
  IF ~!Global("CbOrderCompanyOfGuard","GLOBAL",0)
!Global("CbSoubarIsAttacked","GLOBAL",2)~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1
  SAY @7
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @8
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @9
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @10
  IF ~~ THEN DO ~SetGlobal("CbOrderCompanyOfGuard","GLOBAL",3)
SetGlobal("CbDeliveringMissives","GLOBAL",1)
SetGlobal("CbStopPrelate","GLOBAL",1)
SetGlobal("CbStopLogan","GLOBAL",1)
GiveItemCreate("CBLOGMSS",LastTalkedToBy(),1,0,0)
GiveItemCreate("CBPREMSS",LastTalkedToBy(),1,0,0)
EraseJournalEntry(@50110)~
UNSOLVED_JOURNAL @50111 EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2
  SAY @11
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",6)
SetGlobal("CbSoubarIsAttacked","GLOBAL",1)
AddexperienceParty(60000)
EraseJournalEntry(@50111)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 19.1
  SAY @13
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @14
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @15
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @16
  IF ~Global("CbMayorTheSpyEscaped","GLOBAL",0)~ THEN GOTO 14
  IF ~Global("CbMayorTheSpyEscaped","GLOBAL",1)~ THEN GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @17
  IF ~~ THEN DO ~SetGlobal("CbPromotePartyLieutenant","GLOBAL",1)
SetGlobal("CbSoubarIsAttacked","GLOBAL",3)~ 
SOLVED_JOURNAL @50128 EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @18
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @19
  IF ~~ THEN DO ~SetGlobal("CbPromotePartyLieutenant","GLOBAL",1)
SetGlobal("CbSoubarIsAttacked","GLOBAL",3)~ 
SOLVED_JOURNAL @50128 EXIT
END

IF ~~ THEN BEGIN 17 // from: 19.2
  SAY @20
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 19.3
  SAY @21
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",6)~ THEN BEGIN 19
  SAY @22
  IF ~~ THEN REPLY @23 /* #81360 */ EXIT
  IF ~Global("CbPromotePartyLieutenant","GLOBAL",0)
Global("CbSoubarIsAttacked","GLOBAL",2)~ THEN REPLY @24 GOTO 10
  IF ~Global("CbPromotePartyLieutenant","GLOBAL",1)
Global("CbMayorTheSpyEscaped","GLOBAL",0)~ THEN GOTO 17
  IF ~Global("CbPromotePartyLieutenant","GLOBAL",1)
Global("CbMayorTheSpyEscaped","GLOBAL",1)~ THEN GOTO 18
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",7)
Global("CbPromotePartyLieutenant","GLOBAL",2)
!Global("CbPartyHasKilledAllBandits","GLOBAL",3)
IsGabber(Player1)~ THEN BEGIN 20 // from:
  SAY @25
  IF ~Global("CbMajorExplainsHowToGetToLyrars","GLOBAL",0)~ THEN GOTO 21
  IF ~Global("CbMajorExplainsHowToGetToLyrars","GLOBAL",1)
!GlobalGT("CbPartyHasKilledAllBandits","GLOBAL",0)~ THEN GOTO 68
  IF ~GlobalGT("CbPartyHasKilledAllBandits","GLOBAL",0)~ THEN GOTO 69
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @26
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @27
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @28
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @29
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @30
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @31
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @32
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY @33
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY @34
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY @35
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @36
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY @37
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY @38
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @39
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @40
  IF ~~ THEN DO ~SetGlobal("CbPromotePartyLieutenant","GLOBAL",3)
SetGlobal("CbMajorExplainsHowToGetToLyrars","GLOBAL",1)~ 
UNSOLVED_JOURNAL @5094 EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",7)
Global("CbPromotePartyLieutenant","GLOBAL",2)
!Global("CbPartyHasKilledAllBandits","GLOBAL",3)
!IsGabber(Player1)~ THEN BEGIN 36 // from:
  SAY @41
  IF ~Global("CbMajorExplainsHowToGetToLyrars","GLOBAL",0)~ THEN GOTO 37
  IF ~Global("CbMajorExplainsHowToGetToLyrars","GLOBAL",1)
!GlobalGT("CbPartyHasKilledAllBandits","GLOBAL",0)~ THEN GOTO 71
  IF ~GlobalGT("CbPartyHasKilledAllBandits","GLOBAL",0)~ THEN GOTO 72
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY @26
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY @27
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY @42
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY @29
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY @30
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY @31
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY @32
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY @33
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY @43
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY @35
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY @36
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY @44
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY @38
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY @39
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY @45
  IF ~~ THEN DO ~SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",7)
SetGlobal("CbPromotePartyLieutenant","GLOBAL",3)
SetGlobal("CbMajorExplainsHowToGetToLyrars","GLOBAL",1)~ 
UNSOLVED_JOURNAL @5094 EXIT
END

IF ~Global("CbPartyHasKilledAllBandits","GLOBAL",3)
Global("CbPartyLeaderBecomesMayor","GLOBAL",0)~ THEN BEGIN 52
  SAY @46
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY @47
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY @48
  IF ~!Global("CbMayorTheSpyEscaped","GLOBAL",1)~ THEN GOTO 55
  IF ~Global("CbMayorTheSpyEscaped","GLOBAL",1)~ THEN GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY @49
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 56 // from: 54.1
  SAY @50
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY @51
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY @52
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY @53
  IF ~NumInParty(1)~ THEN REPLY @54 GOTO 60
  IF ~NumInPartyGT(1)~ THEN REPLY @55 GOTO 60
  IF ~~ THEN REPLY @56 GOTO 61
END

IF ~~ THEN BEGIN 60 // from: 64.1 59.1 59.0
  SAY @57
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBPROMO5")~ EXIT
END

IF ~~ THEN BEGIN 61 // from: 59.2
  SAY @58
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY @59
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY @60
  IF ~~ THEN DO ~SetGlobal("CbPartyLeaderBecomesMayor","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBPROMO6")~ EXIT
END

IF ~Global("CbPartyHasKilledAllBandits","GLOBAL",3)
Global("CbPartyLeaderBecomesMayor","GLOBAL",2)~ THEN BEGIN 64
  SAY @61
  IF ~~ THEN REPLY @62 GOTO 65
  IF ~~ THEN REPLY @63 GOTO 60
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY @64
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyLeaderBecomesMayor","GLOBAL",3)~ THEN BEGIN 66
  SAY @65
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 67 // from: 2.0
  SAY @66
  IF ~~ THEN DO ~SetGlobal("CbOrderCompanyOfGuard","GLOBAL",1)
SetGlobal("CbRiverOfOrchids","GLOBAL",1)~
UNSOLVED_JOURNAL @50110 EXIT
END

IF ~~ THEN BEGIN 68 // from: 20.1
  SAY @67
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 69 // from: 20.2
  SAY @68
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY @69
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 71 // from: 36.1
  SAY @70
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72 // from: 36.2
  SAY @71
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY @72
  IF ~~ THEN EXIT
END
