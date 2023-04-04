APPEND HPRELATE

IF WEIGHT #14 ~Global("PaladinOrder","GLOBAL",3)
OR(2)
Dead("c6bodhi")
!Global("Chapter","GLOBAL",%bg2_chapter_6%)
!Global("CbDeliveringMissives","GLOBAL",1)
!Global("CbDeliveringMissives","GLOBAL",2)
!Global("CbDeliveringMissives","GLOBAL",3)
~ THEN BEGIN SOS93
  SAY @0
  IF ~~ THEN GOTO 24
END

IF WEIGHT #15 ~Global("Chapter","GLOBAL",%bg2_chapter_6%)
!Dead("c6bodhi")
!InPartySlot(LastTalkedToBy,0)
!Global("CbDeliveringMissives","GLOBAL",1)
!Global("CbDeliveringMissives","GLOBAL",2)
!Global("CbDeliveringMissives","GLOBAL",3)
~ THEN BEGIN SOS94
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #16 ~Global("Chapter","GLOBAL",%bg2_chapter_6%)
InPartySlot(LastTalkedToBy,0)
Global("PaladinOrder","GLOBAL",1)
Global("OrderFightBodhi","GLOBAL",0)
!Dead("c6bodhi")
!Global("CbDeliveringMissives","GLOBAL",1)
!Global("CbDeliveringMissives","GLOBAL",2)
!Global("CbDeliveringMissives","GLOBAL",3)
~ THEN BEGIN SOS95
  SAY @2
  IF ~Global("WorkingForBodhi","GLOBAL",0)
~ THEN REPLY @3 GOTO 35
  IF ~Global("WorkingForBodhi","GLOBAL",1)
~ THEN REPLY @3 GOTO 36
  IF ~~ THEN REPLY @4 GOTO 37
END

IF WEIGHT #17 ~Global("Chapter","GLOBAL",%bg2_chapter_6%)
InPartySlot(LastTalkedToBy,0)
!Global("PaladinOrder","GLOBAL",1)
ReputationGT(LastTalkedToBy,9)
Global("OrderFightBodhi","GLOBAL",0)
!Dead("c6bodhi")
!Global("CbDeliveringMissives","GLOBAL",1)
!Global("CbDeliveringMissives","GLOBAL",2)
!Global("CbDeliveringMissives","GLOBAL",3)~ THEN BEGIN SOS96
  SAY @5
  IF ~Global("WorkingForBodhi","GLOBAL",0)~ THEN REPLY @6 GOTO 35
  IF ~Global("WorkingForBodhi","GLOBAL",1)~ THEN REPLY @6 GOTO 36
  IF ~~ THEN REPLY @4 GOTO 37
END

IF ~~ THEN BEGIN SOS97
  SAY @7
  IF ~~ THEN DO ~TakePartyItem("CBPREMSS")
~ GOTO SOS103
END

IF ~~ THEN BEGIN SOS98
  SAY @8
  IF ~~ THEN GOTO SOS99
END

IF ~~ THEN BEGIN SOS99
  SAY @9
  IF ~~ THEN REPLY @10 GOTO SOS100
END

IF ~~ THEN BEGIN SOS100
  SAY @11
  IF ~~ THEN DO ~IncrementGlobal("CbDeliveringMissives","GLOBAL",1)
SetGlobal("CbPrelateReadsMissive","LOCALS",2)~ EXIT
END

IF WEIGHT #18 ~Global("Chapter","GLOBAL",%bg2_chapter_6%)
InPartySlot(LastTalkedToBy,0)
!Global("PaladinOrder","GLOBAL",1)
ReputationLT(LastTalkedToBy,10)
Global("OrderFightBodhi","GLOBAL",0)
!Dead("c6bodhi")
!Global("CbDeliveringMissives","GLOBAL",1)
!Global("CbDeliveringMissives","GLOBAL",2)
!Global("CbDeliveringMissives","GLOBAL",3)~ THEN BEGIN SOS101
  SAY @12
  IF ~Global("WorkingForBodhi","GLOBAL",0)
CheckStatGT(Player1,14,CHR)~ THEN REPLY @13 GOTO 38
  IF ~Global("WorkingForBodhi","GLOBAL",1)
CheckStatGT(Player1,14,CHR)~ THEN REPLY @13 GOTO 39
  IF ~Global("WorkingForBodhi","GLOBAL",0)
CheckStatLT(Player1,15,CHR)~ THEN REPLY @14 GOTO 40
  IF ~Global("WorkingForBodhi","GLOBAL",1)
CheckStatLT(Player1,15,CHR)~ THEN REPLY @14 GOTO 43
  IF ~~ THEN REPLY @15 GOTO 41
  IF ~~ THEN REPLY @16 GOTO 42
END

IF WEIGHT #19 ~Global("Chapter","GLOBAL",%bg2_chapter_6%)
Global("OrderFightBodhi","GLOBAL",1)
!Dead("c6bodhi")
!Global("CbDeliveringMissives","GLOBAL",1)
!Global("CbDeliveringMissives","GLOBAL",2)
!Global("CbDeliveringMissives","GLOBAL",3)
~ THEN BEGIN SOS102
  SAY @17
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SOS103
  SAY @18
  IF ~~ THEN DO ~SetGlobal("CbPrelateReadsMissive","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN SOS104
  SAY @19
  IF ~~ THEN REPLY @20 DO ~TakePartyItem("CBPREMSS")
IncrementGlobal("CbDeliveringMissives","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN SOS105
  SAY @21
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SOS106
  SAY @22
  IF ~~ THEN DO ~TakePartyItem("CBPREMSS")
~ GOTO SOS104
END

IF ~~ THEN BEGIN SOS107
  SAY @23
  IF ~~ THEN DO ~SetGlobal("CbPrelateReadsMissive","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN SOS108
  SAY @24
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SOS109
  SAY @25
  IF ~~ THEN GOTO SOS110
END

IF ~~ THEN BEGIN SOS110
  SAY @26
  IF ~~ THEN GOTO SOS111
END

IF ~~ THEN BEGIN SOS111
  SAY @27
  IF ~~ THEN GOTO SOS112
END

IF ~~ THEN BEGIN SOS112
  SAY @28
  IF ~~ THEN GOTO SOS113
END

IF ~~ THEN BEGIN SOS113
  SAY @29
  IF ~~ THEN DO ~IncrementGlobal("CbDeliveringMissives","GLOBAL",1)
SetGlobal("CbPrelateReadsMissive","LOCALS",2)
~ EXIT
END

IF WEIGHT #20 ~Global("Chapter","GLOBAL",%bg2_chapter_6%)
Global("OrderFightBodhi","GLOBAL",2)
!Global("CbDeliveringMissives","GLOBAL",1)
!Global("CbDeliveringMissives","GLOBAL",2)
!Global("CbDeliveringMissives","GLOBAL",3)
~ THEN BEGIN SOS114
  SAY @30
  IF ~~ THEN EXIT
END

IF WEIGHT #21 ~GlobalGT("CbDeliveringMissives","GLOBAL",0)
!GlobalGT("CbDeliveringMissives","GLOBAL",3)
ReputationGT(LastTalkedToBy,9)
!Global("PaladinOrder","GLOBAL",1)
~ THEN BEGIN SOS115
  SAY @31
  IF ~~ THEN REPLY @32 EXIT
  IF ~Global("CbPrelateReadsMissive","LOCALS",0)
PartyHasItem("CBPREMSS")
~ THEN REPLY @33 GOTO SOS97
  IF ~Global("CbPrelateReadsMissive","LOCALS",1)
!PartyHasItem("CBPREMSS")
~ THEN REPLY @34 GOTO SOS98
END

IF WEIGHT #22 ~Global("Chapter","GLOBAL",%bg2_chapter_6%)
Global("OrderFightBodhi","GLOBAL",1)
Dead("c6bodhi")
!Global("CbDeliveringMissives","GLOBAL",1)
!Global("CbDeliveringMissives","GLOBAL",2)
!Global("CbDeliveringMissives","GLOBAL",3)
~ THEN BEGIN SOS116
  SAY @35
  IF ~~ THEN EXIT
END

IF WEIGHT #23 ~GlobalGT("CbDeliveringMissives","GLOBAL",0)
!GlobalGT("CbDeliveringMissives","GLOBAL",3)
ReputationLT(LastTalkedToBy,10)
!Global("PaladinOrder","GLOBAL",1)
~ THEN BEGIN SOS117
  SAY @36
  IF ~PartyHasItem("CBPREMSS")
~ THEN REPLY @37 GOTO SOS104
  IF ~~ THEN REPLY @38 GOTO SOS105
END

IF WEIGHT #24 ~GlobalGT("CbDeliveringMissives","GLOBAL",0)
!GlobalGT("CbDeliveringMissives","GLOBAL",3)
Global("PaladinOrder","GLOBAL",1)
~ THEN BEGIN SOS118
  SAY @39
  IF ~Global("CbPrelateReadsMissive","LOCALS",0)
PartyHasItem("CBPREMSS")
~ THEN REPLY @40 GOTO SOS106
  IF ~~ THEN REPLY @41 GOTO SOS105
  IF ~Global("CbPrelateReadsMissive","LOCALS",1)
!PartyHasItem("CBPREMSS")
~ THEN REPLY @42 GOTO SOS109
END

END
