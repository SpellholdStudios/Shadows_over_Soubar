BEGIN ~CBSWPIPE~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN REPLY @2 EXIT
  IF ~~ THEN REPLY @3 DO ~ActionOverride(Player1,LeaveAreaLUAPanic("AR4201","",[1195.1493],8))
ActionOverride(Player1,LeaveAreaLUA("AR4201","",[1195.1493],8))
ActionOverride(Player2,LeaveAreaLUA("AR4201","",[1238.1518],8))
ActionOverride(Player3,LeaveAreaLUA("AR4201","",[1209.1556],8))
ActionOverride(Player4,LeaveAreaLUA("AR4201","",[1159.1529],8))
ActionOverride(Player5,LeaveAreaLUA("AR4201","",[1130.1568],8))
ActionOverride(Player6,LeaveAreaLUA("AR4201","",[1167.1585],8))~ EXIT
END
