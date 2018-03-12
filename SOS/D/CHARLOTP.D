BEGIN ~CHARLOTP~

IF ~GlobalGT("CbCharlotteRangerAgain","LOCALS",1)
!Global("CbNaliaAndCharlotteFriends4Eva","GLOBAL",1)
Global("KickedOut","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 5.0 0.0
  SAY @3
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 5.1 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @8
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END

IF ~GlobalLT("CbCharlotteRangerAgain","LOCALS",2)
!Global("CbNaliaAndCharlotteFriends4Eva","GLOBAL",1)
Global("KickedOut","LOCALS",0)~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~GlobalGT("CbCharlotteRangerAgain","LOCALS",1)
Global("KickedOut","LOCALS",1)~ THEN BEGIN 6
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~Gender(Player1,MALE)~ THEN REPLY @13 GOTO 9
  IF ~!Gender(Player1,MALE)~ THEN REPLY @13 GOTO 14
END

IF ~~ THEN BEGIN 7 // from: 15.0 6.0
  SAY @14
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 15.2 6.1
  SAY @15
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 15.1 6.2
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @19 GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @20
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @21
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY @22
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @23
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 15.3 6.3
  SAY @24
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~GlobalLT("CbCharlotteRangerAgain","LOCALS",2)
Global("KickedOut","LOCALS",1)~ THEN BEGIN 15
  SAY @25
  IF ~~ THEN REPLY @11  GOTO 7
  IF ~Gender(Player1,MALE)~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~!Gender(Player1,MALE)~ THEN REPLY @13 GOTO 14
END

IF ~Global("KickedOut","LOCALS",0)
Global("CbNaliaAndCharlotteFriends4Eva","GLOBAL",1)
InParty(Myself)
!InParty("NALIA")~ THEN BEGIN 16
  SAY @26
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeArea()~ EXIT
END

IF ~Global("KickedOut","LOCALS",0)
Global("CbNaliaAndCharlotteFriends4Eva","GLOBAL",1)
!InParty(Myself)
InParty("NALIA")~ THEN BEGIN 17
  SAY @27
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 19
  IF ~~ THEN REPLY @2 GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @3
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 21
  IF ~~ THEN REPLY @6 GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @7
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
ActionOverride("NALIA",LeaveParty())
ActionOverride("NALIA",EscapeArea())
LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY @8
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
ActionOverride("NALIA",LeaveParty())
LeaveParty()~ EXIT
END
