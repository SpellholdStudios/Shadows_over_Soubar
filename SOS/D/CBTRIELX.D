BEGIN ~CBTRIELX~

IF ~GlobalLT("CbBarBrawl","AR4264",1)
RandomNum(4,1)
AreaCheck("AR4264")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~GlobalLT("CbBarBrawl","AR4264",1)
RandomNum(4,2)
AreaCheck("AR4264")~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~GlobalLT("CbBarBrawl","AR4264",1)
RandomNum(4,3)
AreaCheck("AR4264")~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

IF ~GlobalLT("CbBarBrawl","AR4264",1)
RandomNum(4,4)
AreaCheck("AR4264")~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END

IF ~AreaCheck("AR4264")
!HasItemEquiped("CBMANCL2",Myself)
GlobalGT("CbBarBrawl","AR4264",0)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 DO ~Enemy()~ GOTO 21
  IF ~~ THEN REPLY @8 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @10
  IF ~~ THEN EXIT
END

IF ~AreaCheck("AR4264")
HasItemEquiped("CBMANCL2",Myself)
GlobalGT("CbBarBrawl","AR4264",0)
Global("CbTrielIsPrisoner","LOCALS",0)~ THEN BEGIN 7
  SAY @11
  IF ~~ THEN REPLY @12 DO ~SetGlobal("CbTrielIsPrisoner","LOCALS",1)~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @13 /* #78574 */
  IF ~Global("CbSentPrisoner","AR4264",0)~ THEN REPLY @14 DO ~SetGlobal("CbRecruiting","GLOBAL",3)
SetGlobal("CbSentPrisoner","AR4264",1)
AddexperienceParty(1000)
MoveBetweenAreas("AR4288",[650.840],10)~ EXIT
  IF ~Global("CbSentPrisoner","AR4264",1)~ THEN REPLY @15 DO ~SetGlobal("CbRecruiting","GLOBAL",3)
SetGlobal("CbSentPrisoner","AR4264",2)
AddexperienceParty(1000)
MoveBetweenAreas("AR4288",[417.676],10)~ EXIT
  IF ~Global("CbSentPrisoner","AR4264",2)~ THEN REPLY @16 DO ~SetGlobal("CbRecruiting","GLOBAL",3)
SetGlobal("CbSentPrisoner","AR4264",3)
AddexperienceParty(1000)
MoveBetweenAreas("AR4288",[674.495],13)~ EXIT
  IF ~Global("CbSentPrisoner","AR4264",3)~ THEN REPLY @17 DO ~SetGlobal("CbRecruiting","GLOBAL",3)
SetGlobal("CbSentPrisoner","AR4264",4)
AddexperienceParty(1000)
MoveBetweenAreas("AR4288",[797.420],13)~ EXIT
  IF ~Global("CbSentPrisoner","AR4264",4)~ THEN REPLY @18 DO ~SetGlobal("CbRecruiting","GLOBAL",3)
SetGlobal("CbSentPrisoner","AR4264",5)
AddexperienceParty(1000)
MoveBetweenAreas("AR4288",[1011.263],2)~ EXIT
  IF ~Global("CbSentPrisoner","AR4264",5)~ THEN REPLY @19 DO ~SetGlobal("CbRecruiting","GLOBAL",3)
SetGlobal("CbSentPrisoner","AR4264",6)
AddexperienceParty(1000)
MoveBetweenAreas("AR4288",[1122.347],2)~ EXIT
  IF ~Global("CbSentPrisoner","AR4264",6)~ THEN REPLY @20 DO ~SetGlobal("CbRecruiting","GLOBAL",3)
SetGlobal("CbSentPrisoner","AR4264",7)
AddexperienceParty(1000)
MoveBetweenAreas("AR4288",[1250.433],2)~ EXIT
  IF ~Global("CbSentPrisoner","AR4264",7)~ THEN REPLY @21 DO ~SetGlobal("CbRecruiting","GLOBAL",3)
SetGlobal("CbSentPrisoner","AR4264",8)
AddexperienceParty(1000)
MoveBetweenAreas("AR4288",[328.1063],5)~ EXIT
  IF ~Global("CbSentPrisoner","AR4264",8)~ THEN REPLY @22 DO ~SetGlobal("CbRecruiting","GLOBAL",3)
SetGlobal("CbSentPrisoner","AR4264",9)
AddexperienceParty(1000)
MoveBetweenAreas("AR4288",[442.997],5)~ EXIT
  IF ~Global("CbSentPrisoner","AR4264",9)~ THEN REPLY @23 DO ~SetGlobal("CbRecruiting","GLOBAL",3)
SetGlobal("CbSentPrisoner","AR4264",10)
AddexperienceParty(1000)
MoveBetweenAreas("AR4288",[187.841],13)~ EXIT
  IF ~GlobalGT("CbSentPrisoner","AR4264",9)~ THEN REPLY @24 DO ~SetGlobal("CbRecruiting","GLOBAL",3)
SetGlobal("CbSentPrisoner","AR4264",11)
AddexperienceParty(1000)
MoveBetweenAreas("AR4288",[650.840],10)~ EXIT
END

IF ~AreaCheck("AR4288")
Global("CbPartyTrainedTriel","GLOBAL",1)
!Global("CbTrielDidntJoin","LOCALS",1)~ THEN BEGIN 9
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 10
  IF ~~ THEN REPLY @27 GOTO 11
  IF ~~ THEN REPLY @28 GOTO 19
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @29
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @32
  IF ~RandomNum(2,1)~ THEN REPLY @33 GOTO 13
  IF ~RandomNum(2,2)~ THEN REPLY @33 GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 20.0 12.0
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @40
  IF ~Global("CbMovingGuys","AR4288",0)~ THEN DO ~DestroyItem("CBMANCL2")
AddexperienceParty(500)
SetGlobal("CbMovingGuys","AR4288",1)
EscapeAreaMove("AR4351",970,540,3)~ EXIT
  IF ~Global("CbMovingGuys","AR4288",1)~ THEN DO ~DestroyItem("CBMANCL2")
AddexperienceParty(500)
SetGlobal("CbMovingGuys","AR4288",2)
EscapeAreaMove("AR4351",970,590,3)~ EXIT
  IF ~Global("CbMovingGuys","AR4288",2)~ THEN DO ~DestroyItem("CBMANCL2")
AddexperienceParty(500)
SetGlobal("CbMovingGuys","AR4288",3)
EscapeAreaMove("AR4351",970,640,3)~ EXIT
  IF ~Global("CbMovingGuys","AR4288",3)~ THEN DO ~DestroyItem("CBMANCL2")
AddexperienceParty(500)
SetGlobal("CbMovingGuys","AR4288",4)
EscapeAreaMove("AR4351",970,690,3)~ EXIT
  IF ~Global("CbMovingGuys","AR4288",4)~ THEN DO ~DestroyItem("CBMANCL2")
AddexperienceParty(500)
SetGlobal("CbMovingGuys","AR4288",5)
EscapeAreaMove("AR4351",970,740,3)~ EXIT
  IF ~Global("CbMovingGuys","AR4288",5)~ THEN DO ~DestroyItem("CBMANCL2")
AddexperienceParty(500)
SetGlobal("CbMovingGuys","AR4288",6)
EscapeAreaMove("AR4351",970,790,3)~ EXIT
  IF ~Global("CbMovingGuys","AR4288",6)~ THEN DO ~DestroyItem("CBMANCL2")
AddexperienceParty(500)
SetGlobal("CbMovingGuys","AR4288",7)
EscapeAreaMove("AR4351",1040,590,3)~ EXIT
  IF ~Global("CbMovingGuys","AR4288",7)~ THEN DO ~DestroyItem("CBMANCL2")
AddexperienceParty(500)
SetGlobal("CbMovingGuys","AR4288",8)
EscapeAreaMove("AR4351",1040,640,3)~ EXIT
  IF ~Global("CbMovingGuys","AR4288",8)~ THEN DO ~DestroyItem("CBMANCL2")
AddexperienceParty(500)
SetGlobal("CbMovingGuys","AR4288",9)
EscapeAreaMove("AR4351",1040,690,3)~ EXIT
  IF ~Global("CbMovingGuys","AR4288",9)~ THEN DO ~DestroyItem("CBMANCL2")
AddexperienceParty(500)
SetGlobal("CbMovingGuys","AR4288",10)
EscapeAreaMove("AR4351",1040,740,3)~ EXIT
  IF ~Global("CbMovingGuys","AR4288",10)~ THEN DO ~DestroyItem("CBMANCL2")
AddexperienceParty(500)
SetGlobal("CbMovingGuys","AR4288",10)
EscapeAreaMove("AR4351",1040,740,3)~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 20.1 12.1
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @43
  IF ~~ THEN DO ~SetGlobal("CbTrielDidntJoin","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 9.2
  SAY @44
  IF ~~ THEN REPLY @45 GOTO 22
END

IF ~AreaCheck("AR4288")
Global("CbPartyTrainedTriel","GLOBAL",1)
Global("CbTrielDidntJoin","LOCALS",1)~ THEN BEGIN 20
  SAY @46
  IF ~RandomNum(2,1)~ THEN REPLY @47 GOTO 13
  IF ~RandomNum(2,2)~ THEN REPLY @47 GOTO 17
  IF ~~ THEN REPLY @48 EXIT
END

IF ~~ THEN BEGIN 21 // from: 4.2
  SAY @49
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.0
  SAY @50
  IF ~~ THEN EXIT
END
