BEGIN ~CHARLOT0~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 EXIT
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @7
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 11.0 2.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 4
  IF ~~ THEN REPLY @10 GOTO 10
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @17
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @20
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 10 // from: 3.1
  SAY @21
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.1
  SAY @22
  IF ~~ THEN GOTO 3
END

IF ~NumTimesTalkedToGT(0)
!PartyHasItem("CB4220PS")~ THEN BEGIN 12
  SAY @23
  IF ~Global("CbPartySawNarulfWorking","AR4220",1)~ THEN REPLY @24 GOTO 13
  IF ~Global("CbPartySawNarulfWorking","AR4220",0)~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @26 EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @27
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @28
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @29
  IF ~~ THEN DO ~SetGlobal("CbPartyAndCharlotteDiscussNarulf","AR4220",1)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.1
  SAY @30
  IF ~~ THEN REPLY @31 EXIT
  IF ~~ THEN REPLY @32 EXIT
END

IF ~PartyHasItem("CB4220PS")
Global("CbNarulfStoppedPoisoningRiver","AR4220",0)
Global("CbCharlotteAttacksNarulf","AR4220",0)~ THEN BEGIN 17
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 19
  IF ~~ THEN REPLY @37 GOTO 21
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @40
  IF ~~ THEN DO ~SetGlobal("CbGetNarulfToStop","AR4220",1)~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.1
  SAY @41
  IF ~~ THEN DO ~SetGlobal("CbCharlotteAttacksNarulf","LOCALS",1)~ EXIT
END

IF ~Global("CbNarulfStoppedPoisoningRiver","AR4220",1)
!Dead("CBNARULF")
Global("CbCharlotteAttacksNarulf","AR4220",0)~ THEN BEGIN 22
  SAY @42
  IF ~~ THEN REPLY @43 DO ~AddXPObject(Player1,45000)
AddXPObject(Player2,45000)
AddXPObject(Player3,45000)
AddXPObject(Player4,45000)
AddXPObject(Player5,45000)
AddXPObject(Player6,45000)
AddJournalEntry(@50115,QUEST_DONE)~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @44
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @45
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @46
  IF ~ReputationGT(LastTalkedToBy(),9)~ THEN REPLY @47 GOTO 26
  IF ~ReputationLT(LastTalkedToBy(),10)~ THEN REPLY @48 DO ~SetGlobal("CbNarulfStoppedPoisoningRiver","AR4220",2)
SetGlobal("CbCharlotteReputationWasTooLow","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @49
  IF ~~ THEN DO ~SetGlobal("CbNarulfStoppedPoisoningRiver","AR4220",2)
SetGlobal("Charlotte","GLOBAL",1)
JoinParty()~ EXIT
END

IF ~Dead("CBNARULF")
Global("CbNarulfStoppedPoisoningRiver","AR4220",1)
Global("CbCharlotteAttacksNarulf","AR4220",0)~ THEN BEGIN 27
  SAY @42
  IF ~~ THEN REPLY @50 GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY @51
  IF ~~ THEN REPLY @52 GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY @53
  IF ~~ THEN REPLY @54 GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY @55
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~Dead("CBNARULF")
Global("CbNarulfStoppedPoisoningRiver","AR4220",0)
Global("CbCharlotteAttacksNarulf","AR4220",0)~ THEN BEGIN 31
  SAY @56
  IF ~~ THEN REPLY @57 GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY @58
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~Global("CbNarulfStoppedPoisoningRiver","AR4220",2)
Global("CbCharlotteReputationWasTooLow","LOCALS",1)
ReputationGT(LastTalkedToBy(),9)
Global("CbCharlotteAttacksNarulf","AR4220",0)~ THEN BEGIN 33
  SAY @59
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @60
  IF ~~ THEN REPLY @61 GOTO 35
  IF ~~ THEN REPLY @62 GOTO 36
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @63
  IF ~~ THEN DO ~SetGlobal("CbCharlotteReputationWasTooLow","LOCALS",2)
SetGlobal("Charlotte","GLOBAL",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY @64
  IF ~~ THEN EXIT
END

IF ~Global("CbNarulfStoppedPoisoningRiver","AR4220",2)
Global("CbCharlotteReputationWasTooLow","LOCALS",1)
ReputationLT(LastTalkedToBy(),10)
Global("CbCharlotteAttacksNarulf","AR4220",0)~ THEN BEGIN 37
  SAY @65
  IF ~~ THEN EXIT
END

IF ~Global("CbCharlotteAttacksNarulf","AR4220",2)
Dead("CBNARULF")~ THEN BEGIN 38
  SAY @66
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY @46
  IF ~ReputationGT(LastTalkedToBy(),14)~ THEN REPLY @47 GOTO 40
  IF ~ReputationLT(LastTalkedToBy(),15)~ THEN REPLY @48 DO ~SetGlobal("CbNarulfStoppedPoisoningRiver","AR4220",2)
SetGlobal("CbCharlotteRepTooLowSheFought","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY @49
  IF ~~ THEN DO ~SetGlobal("CbNarulfStoppedPoisoningRiver","AR4220",2)
SetGlobal("Charlotte","GLOBAL",1)
JoinParty()~ EXIT
END

IF ~Global("CbNarulfStoppedPoisoningRiver","AR4220",2)
Global("CbCharlotteRepTooLowSheFought","LOCALS",1)
ReputationGT(LastTalkedToBy(),14)~ THEN BEGIN 41
  SAY @59
  IF ~~ THEN GOTO 43
END

IF ~Global("CbNarulfStoppedPoisoningRiver","AR4220",2)
Global("CbCharlotteRepTooLowSheFought","LOCALS",1)
ReputationLT(LastTalkedToBy(),15)~ THEN BEGIN 42
  SAY @65
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.0
  SAY @60
  IF ~~ THEN REPLY @61 GOTO 44
  IF ~~ THEN REPLY @62 GOTO 45
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY @63
  IF ~~ THEN DO ~SetGlobal("CbCharlotteReputationWasTooLow","LOCALS",2)
SetGlobal("Charlotte","GLOBAL",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.1
  SAY @64
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 46 // from: 9.0
  SAY @67
  IF ~~ THEN EXIT
END
