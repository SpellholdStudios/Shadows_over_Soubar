BEGIN ~CBFIXPRE~

IF ~Global("CbStopPrelate","GLOBAL",1)
ReputationGT(LastTalkedToBy(),9)
!Global("PaladinOrder","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 EXIT
  IF ~Global("CbPrelateReadMissive","LOCALS",0)
PartyHasItem("CBPREMSS")~ THEN REPLY @2 GOTO 1
  IF ~Global("CbPrelateReadMissive","LOCALS",1)
!PartyHasItem("CBPREMSS")~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN DO ~TakePartyItem("CBPREMSS")~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN DO ~SetGlobal("CbPrelateReadMissive","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @6
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @9
  IF ~~ THEN DO ~IncrementGlobal("CbDeliveringMissives","GLOBAL",1)
SetGlobal("CbPrelateReadMissive","LOCALS",2)
SetGlobal("CbStopPrelate","GLOBAL",2)~ EXIT
END

IF ~Global("CbStopPrelate","GLOBAL",1)
ReputationLT(LastTalkedToBy(),10)
!Global("PaladinOrder","GLOBAL",1)~ THEN BEGIN 6
  SAY @10
  IF ~PartyHasItem("CBPREMSS")~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @13
  IF ~~ THEN REPLY @14 DO ~TakePartyItem("CBPREMSS")
IncrementGlobal("CbDeliveringMissives","GLOBAL",1)
SetGlobal("CbPrelateReadMissive","LOCALS",2)
SetGlobal("CbStopPrelate","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @15
  IF ~~ THEN EXIT
END

IF ~Global("CbStopPrelate","GLOBAL",1)
Global("PaladinOrder","GLOBAL",1)~ THEN BEGIN 9
  SAY @16
  IF ~Global("CbPrelateReadMissive","LOCALS",0)
PartyHasItem("CBPREMSS")~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~Global("CbPrelateReadMissive","LOCALS",1)
!PartyHasItem("CBPREMSS")~ THEN REPLY @19 GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @20
  IF ~~ THEN DO ~TakePartyItem("CBPREMSS")~ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @21
  IF ~~ THEN DO ~SetGlobal("CbPrelateReadMissive","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY @22
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.2
  SAY @23
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @24
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @25
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @26
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @27
  IF ~~ THEN DO ~IncrementGlobal("CbDeliveringMissives","GLOBAL",1)
SetGlobal("CbPrelateReadMissive","LOCALS",2)
SetGlobal("CbStopPrelate","GLOBAL",2)~ EXIT
END
