BEGIN ~CBWILLMA~

IF ~Global("CbWilliamDoesntWantToTalk","LOCALS",0)
!Global("CbWilliamGaveKey","LOCALS",1)~ THEN BEGIN 0
  SAY @0
  IF ~Dead("pirmur01")~ THEN REPLY @1 GOTO 1
  IF ~!Dead("pirmur01")~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 5
  IF ~~ THEN REPLY @4 GOTO 7
  IF ~~ THEN REPLY @5 GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 10.0 0.0
  SAY @6
  IF ~~ THEN DO ~ChangeEnemyAlly(Myself,ENEMY)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 3
  IF ~~ THEN REPLY @9 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @10
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @11
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 5 // from: 0.2
  SAY @12
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 9.0 5.0
  SAY @13
  IF ~~ THEN DO ~SetGlobal("CbWilliamDoesntWantToTalk","LOCALS",1)~ GOTO 42
END

IF ~~ THEN BEGIN 7 // from: 0.3
  SAY @14
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 8 // from: 0.4
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @12
  IF ~~ THEN GOTO 6
END

IF ~Global("CbWilliamDoesntWantToTalk","LOCALS",1)
!Global("CbWilliamGaveKey","LOCALS",1)~ THEN BEGIN 11
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @19 GOTO 21
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 21.0 12.0
  SAY @22
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @29
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @30
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @31
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @32
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @33 GOTO 22
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @34 GOTO 35
  IF ~~ THEN REPLY @35 GOTO 37
END

IF ~~ THEN BEGIN 21 // from: 11.1
  SAY @36
  IF ~~ THEN REPLY @21 GOTO 13
END

IF ~~ THEN BEGIN 22 // from: 37.0 20.0
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 25
  IF ~~ THEN REPLY @43 GOTO 31
  IF ~~ THEN REPLY @44 GOTO 32
  IF ~~ THEN REPLY @45 GOTO 33
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 34.0 32.0 31.0 25.0
  SAY @48
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @49
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY @50
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY @51
  IF ~~ THEN DO ~GiveItem("CBWLKEY1",LastTalkedToBy)~ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY @52
  IF ~~ THEN DO ~EraseJournalEntry(@5090)
SetGlobal("CbWilliamGaveKey","LOCALS",1)~ 
SOLVED_JOURNAL @50201 EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.1
  SAY @53
  IF ~~ THEN REPLY @47 GOTO 26
END

IF ~~ THEN BEGIN 32 // from: 24.2
  SAY @54
  IF ~~ THEN REPLY @47 GOTO 26
END

IF ~~ THEN BEGIN 33 // from: 24.3
  SAY @55
  IF ~~ THEN REPLY @56 GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @57
  IF ~~ THEN REPLY @47 GOTO 26
END

IF ~~ THEN BEGIN 35 // from: 20.1
  SAY @58
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY @59
  IF ~~ THEN DO ~SetGlobal("CbWilliamDoesntWantToTalk","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 20.2
  SAY @60
  IF ~~ THEN REPLY @61 GOTO 22
END

IF ~Global("CbWilliamDoesntWantToTalk","LOCALS",2)
!Global("CbWilliamGaveKey","LOCALS",1)~ THEN BEGIN 38
  SAY @62
  IF ~~ THEN REPLY @63 
                   DO ~EraseJournalEntry(@5090)~ SOLVED_JOURNAL @50201 GOTO 45
  IF ~~ THEN REPLY @64 GOTO 46
END

IF ~~ THEN BEGIN 39 // from: 3.0
  SAY @65
  IF ~~ THEN DO ~SetGlobal("CbWilliamDoesntWantToTalk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 4.0
  SAY @66
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY @65
  IF ~~ THEN DO ~SetGlobal("CbWilliamDoesntWantToTalk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 6.0
  SAY @67
  IF ~~ THEN REPLY @68 GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY @14
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0 7.0
  SAY @65
  IF ~~ THEN DO ~SetGlobal("CbWilliamDoesntWantToTalk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 38.0
  SAY @69
  IF ~~ THEN REPLY @64 GOTO 46
  IF ~~ THEN REPLY @70 GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 45.0 38.1
  SAY @71
  IF ~~ THEN DO ~GiveItem("CBWLKEY1",LastTalkedToBy)
SetGlobal("CbWilliamGaveKey","LOCALS",1)
EraseJournalEntry(@5090)~
SOLVED_JOURNAL @50201 EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1
  SAY @72
  IF ~~ THEN DO ~EraseJournalEntry(@5090)
Enemy()~
SOLVED_JOURNAL @50201 EXIT
END

IF ~Global("CbWilliamGaveKey","LOCALS",1)~ THEN BEGIN 48
  SAY @73
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY @74
  IF ~~ THEN EXIT
END
