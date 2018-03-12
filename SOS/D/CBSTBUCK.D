BEGIN ~CBSTBUCK~

IF ~!Dead("CBBUCKMO")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Dead("CBBUCKMO")
!Global("CbBetraChanged","GLOBAL",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~MoveToPoint([445.655])~ EXIT
END

IF ~Global("CbBetraChanged","GLOBAL",1)
!Global("CbBuckoServantCondoled","LOCALS",1)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~SetGlobal("CbBuckoServantLetPartyOut","LOCALS",1)
SetGlobal("CbBuckoServantCondoled","LOCALS",1)~ EXIT
END

IF ~Global("CbBuckoServantLetPartyOut","LOCALS",1)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @7
  IF ~~ THEN DO ~ActionOverride(Player1,LeaveAreaLUAPanic("AR0043","",[1051.852],4))
ActionOverride(Player1,LeaveAreaLUA("AR0043","",[1051.852],4))
ActionOverride(Player2,LeaveAreaLUA("AR0043","",[1079.835],4))
ActionOverride(Player3,LeaveAreaLUA("AR0043","",[1102.883],4))
ActionOverride(Player4,LeaveAreaLUA("AR0043","",[1127.840],4))
ActionOverride(Player5,LeaveAreaLUA("AR0043","",[1139.900],4))
ActionOverride(Player6,LeaveAreaLUA("AR0043","",[1168.861],4))~ EXIT
END
