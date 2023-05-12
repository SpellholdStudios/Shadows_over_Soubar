BEGIN ~CBSOBGRX~

IF ~AreaCheck("AR4264")
GlobalGT("CbBarBrawl","AR4264",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 EXIT
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~AreaCheck("AR4264")
GlobalGT("CbBarBrawl","AR4264",0)~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN DO ~SetGlobal("CbThisSoldierMovedIntoNarwhal","LOCALS",1)
MoveBetweenAreas("AR4230",[1730.2870],10)~ EXIT
END
