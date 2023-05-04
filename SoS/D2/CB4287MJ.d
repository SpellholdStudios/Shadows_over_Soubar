BEGIN ~CB4287MJ~

IF ~Global("CbPartyInvestigatesLeads","GLOBAL",5)
Global("CbSpyIs_Winthrop","GLOBAL",2)
GlobalLT("CbPartyHuntsSpy","GLOBAL",2)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 15.0 14.0 13.0 1.0
  SAY @2
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @3
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @4
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @5
  IF ~~ THEN DO ~GiveItemCreate("CBLOCKER",LastTalkedToBy(),1,0,0)~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @6
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @7
  IF ~~ THEN DO ~SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",5)
SetGlobal("CbPartyHuntsSpy","GLOBAL",2)
EraseJournalEntry(@50100)
EraseJournalEntry(@50101)
EraseJournalEntry(@50103)
MoveToObject("Tran5013")
EscapeArea()~ 
UNSOLVED_JOURNAL @50105 EXIT
END

IF ~Global("CbPartyInvestigatesLeads","GLOBAL",5)
Global("CbSpyIs_Fighter","GLOBAL",2)
GlobalLT("CbPartyHuntsSpy","GLOBAL",2)~ THEN BEGIN 8
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @10 GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @11
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @12
  IF ~~ THEN GOTO 15
END

IF ~Global("CbPartyInvestigatesLeads","GLOBAL",5)
Global("CbSpyIs_Ranger","GLOBAL",2)
GlobalLT("CbPartyHuntsSpy","GLOBAL",2)~ THEN BEGIN 11
  SAY @13
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @14
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @15
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 9.0
  SAY @16
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 10.0
  SAY @17
  IF ~~ THEN GOTO 2
END
