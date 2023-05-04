BEGIN ~CBSOUGRD~

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",0)
RandomNum(3,1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",0)
RandomNum(3,2)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",0)
RandomNum(3,3)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",1)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",2)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",3)~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",4)~ THEN BEGIN 6
  SAY @6
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",5)~ THEN BEGIN 7
  SAY @7
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",6)~ THEN BEGIN 8
  SAY @8
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",7)
!Global("CbPartyLeaderBecomesMayor","GLOBAL",3)~ THEN BEGIN 9
  SAY @9
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyLeaderBecomesMayor","GLOBAL",3)
RandomNum(3,1)~ THEN BEGIN 10
  SAY @10
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyLeaderBecomesMayor","GLOBAL",3)
RandomNum(3,2)~ THEN BEGIN 11
  SAY @11
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyLeaderBecomesMayor","GLOBAL",3)
RandomNum(3,3)~ THEN BEGIN 12
  SAY @12
  IF ~~ THEN EXIT
END
