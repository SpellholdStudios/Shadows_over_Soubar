BEGIN ~CBSBVILL~

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",0)
RandomNum(5,1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",0)
RandomNum(5,2)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",0)
RandomNum(5,3)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",0)
RandomNum(5,4)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",0)
RandomNum(5,5)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",1)
RandomNum(2,1)~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",1)
RandomNum(2,2)~ THEN BEGIN 6
  SAY @6
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",2)
RandomNum(2,1)~ THEN BEGIN 7
  SAY @7
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",2)
RandomNum(2,2)~ THEN BEGIN 8
  SAY @8
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",3)
RandomNum(2,1)~ THEN BEGIN 9
  SAY @7
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",3)
RandomNum(2,2)~ THEN BEGIN 10
  SAY @8
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",4)
RandomNum(2,1)~ THEN BEGIN 11
  SAY @7
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",4)
RandomNum(2,2)~ THEN BEGIN 12
  SAY @8
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",5)
RandomNum(2,1)~ THEN BEGIN 13
  SAY @9
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",5)
RandomNum(2,2)~ THEN BEGIN 14
  SAY @10
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",6)~ THEN BEGIN 15
  SAY @11
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",7)
!GlobalGT("CbPartyHasKilledAllBandits","GLOBAL",0)
RandomNum(2,1)~ THEN BEGIN 16
  SAY @12
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",7)
!GlobalGT("CbPartyHasKilledAllBandits","GLOBAL",0)
RandomNum(2,2)~ THEN BEGIN 17
  SAY @13
  IF ~~ THEN EXIT
END

IF ~GlobalGT("CbPartyHasKilledAllBandits","GLOBAL",2)
!GlobalGT("CbPartyLeaderBecomesMayor","GLOBAL",0)
RandomNum(4,1)~ THEN BEGIN 18
  SAY @14
  IF ~~ THEN EXIT
END

IF ~GlobalGT("CbPartyHasKilledAllBandits","GLOBAL",2)
!GlobalGT("CbPartyLeaderBecomesMayor","GLOBAL",0)
RandomNum(4,2)~ THEN BEGIN 19
  SAY @15
  IF ~~ THEN EXIT
END

IF ~GlobalGT("CbPartyHasKilledAllBandits","GLOBAL",2)
!GlobalGT("CbPartyLeaderBecomesMayor","GLOBAL",0)
RandomNum(4,3)~ THEN BEGIN 20
  SAY @16
  IF ~~ THEN EXIT
END

IF ~GlobalGT("CbPartyHasKilledAllBandits","GLOBAL",2)
!GlobalGT("CbPartyLeaderBecomesMayor","GLOBAL",0)
RandomNum(4,4)~ THEN BEGIN 21
  SAY @17
  IF ~~ THEN EXIT
END

IF ~Global("CbSoubarVillageGlobalDoesntExist","LOCALS",1)~ THEN BEGIN 22
  SAY @18
  IF ~~ THEN EXIT
END

IF ~Global("CbSoubarVillageGlobalDoesntExist","LOCALS",1)~ THEN BEGIN 23
  SAY @19
  IF ~~ THEN EXIT
END

IF ~Global("CbSoubarVillageGlobalDoesntExist","LOCALS",1)~ THEN BEGIN 24
  SAY @20
  IF ~~ THEN EXIT
END

IF ~Global("CbSoubarVillageGlobalDoesntExist","LOCALS",1)~ THEN BEGIN 25
  SAY @21
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyLeaderBecomesMayor","GLOBAL",3)
RandomNum(2,1)~ THEN BEGIN 26
  SAY @22
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyLeaderBecomesMayor","GLOBAL",3)
RandomNum(2,2)~ THEN BEGIN 27
  SAY @23
  IF ~~ THEN EXIT
END
