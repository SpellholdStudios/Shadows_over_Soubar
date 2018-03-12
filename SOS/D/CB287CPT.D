BEGIN ~CB287CPT~

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",5)
Global("CbCaptainPromotion","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~!Class(Player1,MONK)
!Class(Player2,MONK)
!Class(Player3,MONK)
!Class(Player4,MONK)
!Class(Player5,MONK)
!Class(Player6,MONK)~ THEN DO ~SetGlobal("CbCaptainPromotion","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBPROMO2")~ EXIT
  IF ~~ THEN DO ~SetGlobal("CbCaptainPromotion","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBFXMNK2")~ EXIT
END

IF ~GlobalLT("CbCaptainPromotion","LOCALS",2)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("CbCaptainPromotion","LOCALS",2)~ EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",7)
Global("CbCaptainPromotion","LOCALS",2)
!Global("CbPartyLeaderBecomesMayor","GLOBAL",3)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 EXIT
  IF ~~ THEN REPLY @7 EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2 2.1 2.0
  SAY @8
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyLeaderBecomesMayor","GLOBAL",3)~ THEN BEGIN 4
  SAY @9
  IF ~~ THEN EXIT
END
