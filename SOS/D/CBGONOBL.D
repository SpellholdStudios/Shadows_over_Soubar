BEGIN ~CBGONOBL~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~NumInPartyAliveGT(1)~ THEN GOTO 2
  IF ~NumInPartyAliveLT(2)~ THEN GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @3
  IF ~~ THEN REPLY @4 DO ~ActionOverride(Player1,LeaveAreaLUAPanic("AR4206","",[690.460],0))
ActionOverride(Player1,LeaveAreaLUA("AR4206","",[690.460],0))
ActionOverride(Player2,LeaveAreaLUA("AR4206","",[740.460],0))
ActionOverride(Player3,LeaveAreaLUA("AR4206","",[690.420],0))
ActionOverride(Player4,LeaveAreaLUA("AR4206","",[740.420],0))
ActionOverride(Player5,LeaveAreaLUA("AR4206","",[690.380],0))
ActionOverride(Player6,LeaveAreaLUA("AR4206","",[740.380],0))~ EXIT
  IF ~~ THEN REPLY @5 EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @6
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @7
  IF ~~ THEN REPLY @8 DO ~ApplySpell(Player1,FIFTY_PERCENT_DAMAGE)
ActionOverride(Player1,LeaveAreaLUAPanic("AR4206","",[690.460],0))
ActionOverride(Player1,LeaveAreaLUA("AR4206","",[690.460],0))
ActionOverride(Player2,LeaveAreaLUA("AR4206","",[740.460],0))
ActionOverride(Player3,LeaveAreaLUA("AR4206","",[690.420],0))
ActionOverride(Player4,LeaveAreaLUA("AR4206","",[740.420],0))
ActionOverride(Player5,LeaveAreaLUA("AR4206","",[690.380],0))
ActionOverride(Player6,LeaveAreaLUA("AR4206","",[740.380],0))~ EXIT
  IF ~~ THEN REPLY @9 EXIT
END
