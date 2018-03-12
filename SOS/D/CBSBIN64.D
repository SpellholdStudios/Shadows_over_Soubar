BEGIN ~CBSBIN64~

IF ~GlobalLT("CbPartyIsInSoubarMilitia","GLOBAL",5)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 3.0 1.0
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 12.2 2.0
  SAY @6
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 12.0 2.1
  SAY @7
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @8
  IF ~~ THEN DO ~StartStore("CBSBIN64",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 12.1 2.2
  SAY @9
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @10
  IF ~~ THEN DO ~StartStore("CBSBIN64",LastTalkedToBy())~ EXIT
END

IF ~GlobalGT("CbPartyIsInSoubarMilitia","GLOBAL",4)
!Global("CbPartyLeaderBecomesMayor","GLOBAL",3)~ THEN BEGIN 8
  SAY @11
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @14 GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @15
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @16
  IF ~~ THEN DO ~StartStore("CBSBIN64",LastTalkedToBy())~ EXIT
END

IF ~Global("CbPartyLeaderBecomesMayor","GLOBAL",3)~ THEN BEGIN 12
  SAY @17
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
END
