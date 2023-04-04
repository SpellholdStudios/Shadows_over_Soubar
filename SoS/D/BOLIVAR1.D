BEGIN ~BOLIVAR1~

IF ~Global("CbBolivarFightsPartyMember","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~TakePartyGold(2)~ GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~Global("CbBeatBolivar","LOCALS",2)~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 16
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 5
  IF ~GlobalLT("CbPartyHasKilledAllBandits","GLOBAL",3)~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @13 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @14
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @15
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY @16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.0
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 9
  IF ~~ THEN REPLY @9 GOTO 16
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 10
  IF ~NumInPartyGT(1)
!StateCheck(Player2,STATE_SLEEPING)
!StateCheck(Player2,STATE_DEAD)~ THEN REPLY @21 GOTO 11
  IF ~NumInPartyGT(2)
!StateCheck(Player3,STATE_SLEEPING)
!StateCheck(Player3,STATE_DEAD)~ THEN REPLY @22 GOTO 12
  IF ~NumInPartyGT(3)
!StateCheck(Player4,STATE_SLEEPING)
!StateCheck(Player4,STATE_DEAD)~ THEN REPLY @23 GOTO 13
  IF ~NumInPartyGT(4)
!StateCheck(Player5,STATE_SLEEPING)
!StateCheck(Player5,STATE_DEAD)~ THEN REPLY @24 GOTO 14
  IF ~NumInPartyGT(5)
!StateCheck(Player6,STATE_SLEEPING)
!StateCheck(Player6,STATE_DEAD)~ THEN REPLY @25 GOTO 15
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @26
  IF ~~ THEN DO ~SetGlobal("CbBolivarFightsPlayer1","LOCALS",1)
SetGlobal("CbBolivarFightsPartyMember","LOCALS",1)
ChangeAIScript("Bolivar2",OVERRIDE)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @26
  IF ~~ THEN DO ~SetGlobal("CbBolivarFightsPlayer2","LOCALS",1)
SetGlobal("CbBolivarFightsPartyMember","LOCALS",1)
ChangeAIScript("Bolivar2",OVERRIDE)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY @26
  IF ~~ THEN DO ~SetGlobal("CbBolivarFightsPlayer3","LOCALS",1)
SetGlobal("CbBolivarFightsPartyMember","LOCALS",1)
ChangeAIScript("Bolivar2",OVERRIDE)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY @26
  IF ~~ THEN DO ~SetGlobal("CbBolivarFightsPlayer4","LOCALS",1)
SetGlobal("CbBolivarFightsPartyMember","LOCALS",1)
ChangeAIScript("Bolivar2",OVERRIDE)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.4
  SAY @26
  IF ~~ THEN DO ~SetGlobal("CbBolivarFightsPlayer5","LOCALS",1)
SetGlobal("CbBolivarFightsPartyMember","LOCALS",1)
ChangeAIScript("Bolivar2",OVERRIDE)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.5
  SAY @26
  IF ~~ THEN DO ~SetGlobal("CbBolivarFightsPlayer6","LOCALS",1)
SetGlobal("CbBolivarFightsPartyMember","LOCALS",1)
ChangeAIScript("Bolivar2",OVERRIDE)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.1 3.1
  SAY @27
  IF ~~ THEN EXIT
END

IF ~Global("CbCheatedBolivar","LOCALS",1)~ THEN BEGIN 17
  SAY @28
  IF ~~ THEN DO ~ChangeAIScript("",OVERRIDE)  //was "Bolivar1"
Enemy()
~ EXIT
END

IF ~Global("CbBolivarWon","LOCALS",1)~ THEN BEGIN 18
  SAY @29
  IF ~~ THEN DO ~SetGlobal("CbBolivarFightsPartyMember","LOCALS",0)
ChangeAIScript("",OVERRIDE)~ EXIT             //was "Bolivar1"
END

IF ~Global("CbBeatBolivar","LOCALS",1)~ THEN BEGIN 19
  SAY @30
  IF ~~ THEN DO ~SetGlobal("CbBolivarFightsPartyMember","LOCALS",0)
SetGlobal("CbBeatBolivar","LOCALS",2)
ChangeAIScript("",OVERRIDE)~ EXIT            //was "Bolivar1"
END
