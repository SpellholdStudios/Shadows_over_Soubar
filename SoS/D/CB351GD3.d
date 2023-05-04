BEGIN ~CB351GD3~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~Global("Cb351GuardInstructs","AR4351",1)~ THEN REPLY @1 GOTO 7
  IF ~Global("Cb351GuardInstructs","AR4351",1)~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 61
END

IF ~~ THEN BEGIN 1 // from: 63.0 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 60
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @10
  IF ~CheckStatLT(LastTalkedToBy(Myself),1,PROFICIENCYSWORDANDSHIELD)~ THEN REPLY @11 GOTO 38
  IF ~CheckStatLT(LastTalkedToBy(Myself),2,PROFICIENCYSWORDANDSHIELD)~ THEN REPLY @12 GOTO 39
  IF ~CheckStatLT(LastTalkedToBy(Myself),3,PROFICIENCYSWORDANDSHIELD)~ THEN REPLY @13 DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSSS3")~ GOTO 40
  IF ~~ THEN REPLY @14 GOTO 3
  IF ~~ THEN REPLY @15 GOTO 3
  IF ~~ THEN REPLY @9 GOTO 56
END

IF ~~ THEN BEGIN 3 // from: 6.4 6.3 5.4 5.3 4.4 4.3 2.4 2.3
  SAY @16
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @17
  IF ~CheckStatLT(LastTalkedToBy(Myself),1,PROFICIENCYSINGLEWEAPON)~ THEN REPLY @11 GOTO 41
  IF ~CheckStatLT(LastTalkedToBy(Myself),2,PROFICIENCYSINGLEWEAPON)~ THEN REPLY @18 GOTO 42
  IF ~CheckStatLT(LastTalkedToBy(Myself),3,PROFICIENCYSINGLEWEAPON)~ THEN REPLY @13 GOTO 43
  IF ~~ THEN REPLY @19 GOTO 3
  IF ~~ THEN REPLY @20 GOTO 3
  IF ~~ THEN REPLY @9 GOTO 57
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @21
  IF ~CheckStatLT(LastTalkedToBy(Myself),1,PROFICIENCY2WEAPON)~ THEN REPLY @11 GOTO 44
  IF ~CheckStatLT(LastTalkedToBy(Myself),2,PROFICIENCY2WEAPON)~ THEN REPLY @22 GOTO 45
  IF ~CheckStatLT(LastTalkedToBy(Myself),3,PROFICIENCY2WEAPON)~ THEN REPLY @13 GOTO 46
  IF ~~ THEN REPLY @23 GOTO 3
  IF ~~ THEN REPLY @24 GOTO 3
  IF ~~ THEN REPLY @9 GOTO 58
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @25
  IF ~CheckStatLT(LastTalkedToBy(Myself),1,PROFICIENCY2HANDED)~ THEN REPLY @11 GOTO 47
  IF ~CheckStatLT(LastTalkedToBy(Myself),2,PROFICIENCY2HANDED)~ THEN REPLY @26 GOTO 48
  IF ~CheckStatLT(LastTalkedToBy(Myself),3,PROFICIENCY2HANDED)~ THEN REPLY @13 GOTO 49
  IF ~~ THEN REPLY @27 GOTO 3
  IF ~~ THEN REPLY @28 GOTO 3
  IF ~~ THEN REPLY @9 GOTO 59
END

IF ~~ THEN BEGIN 7 // from: 0.0
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 8
  IF ~~ THEN REPLY @31 GOTO 14
  IF ~~ THEN REPLY @32 GOTO 20
  IF ~~ THEN REPLY @33 GOTO 26
  IF ~~ THEN REPLY @34 GOTO 32
  IF ~~ THEN REPLY @35 GOTO 55
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @36
  IF ~CheckStatLT(LastTalkedToBy(Myself),1,PROFICIENCYCROSSBOW)~ THEN REPLY @37 GOTO 9
  IF ~CheckStatLT(LastTalkedToBy(Myself),2,PROFICIENCYCROSSBOW)~ THEN REPLY @38 GOTO 10
  IF ~CheckStatLT(LastTalkedToBy(Myself),3,PROFICIENCYCROSSBOW)~ THEN REPLY @39 GOTO 11
  IF ~CheckStatLT(LastTalkedToBy(Myself),4,PROFICIENCYCROSSBOW)~ THEN REPLY @40 GOTO 12
  IF ~~ THEN REPLY @41 GOTO 13
  IF ~~ THEN REPLY @35 GOTO 50
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @42
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNXBW1")~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @42
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNXBW2")~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY @42
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNXBW3")~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.3
  SAY @42
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNXBW4")~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.4
  SAY @42
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNXBW5")~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY @43
  IF ~CheckStatLT(LastTalkedToBy(Myself),1,PROFICIENCYDART)~ THEN REPLY @44 GOTO 15
  IF ~CheckStatLT(LastTalkedToBy(Myself),2,PROFICIENCYDART)~ THEN REPLY @45 GOTO 16
  IF ~CheckStatLT(LastTalkedToBy(Myself),3,PROFICIENCYDART)~ THEN REPLY @46 GOTO 17
  IF ~CheckStatLT(LastTalkedToBy(Myself),4,PROFICIENCYDART)~ THEN REPLY @47 GOTO 18
  IF ~~ THEN REPLY @48 GOTO 19
  IF ~~ THEN REPLY @35 GOTO 51
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @49
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNDRT1")~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY @49
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNDRT2")~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2
  SAY @49
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNDRT3")~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.3
  SAY @49
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNDRT4")~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.4
  SAY @49
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNDRT5")~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 7.2
  SAY @50
  IF ~CheckStatLT(LastTalkedToBy(Myself),1,PROFICIENCYSHORTBOW)~ THEN REPLY @51 GOTO 21
  IF ~CheckStatLT(LastTalkedToBy(Myself),2,PROFICIENCYSHORTBOW)~ THEN REPLY @52 GOTO 22
  IF ~CheckStatLT(LastTalkedToBy(Myself),3,PROFICIENCYSHORTBOW)~ THEN REPLY @53 GOTO 23
  IF ~CheckStatLT(LastTalkedToBy(Myself),4,PROFICIENCYSHORTBOW)~ THEN REPLY @54 GOTO 24
  IF ~~ THEN REPLY @55 GOTO 25
  IF ~~ THEN REPLY @35 GOTO 52
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSBW1")~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSBW2")~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.2
  SAY @56
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSBW3")~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.3
  SAY @56
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy(),AddSpecialAbility("SPCL121"))
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSBW4")~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 20.4
  SAY @56
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy(),AddSpecialAbility("SPCL121"))
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSBW5")~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 7.3
  SAY @50
  IF ~CheckStatLT(LastTalkedToBy(Myself),1,PROFICIENCYLONGBOW)~ THEN REPLY @57 GOTO 27
  IF ~CheckStatLT(LastTalkedToBy(Myself),2,PROFICIENCYLONGBOW)~ THEN REPLY @58 GOTO 28
  IF ~CheckStatLT(LastTalkedToBy(Myself),3,PROFICIENCYLONGBOW)~ THEN REPLY @59 GOTO 29
  IF ~CheckStatLT(LastTalkedToBy(Myself),4,PROFICIENCYLONGBOW)~ THEN REPLY @60 GOTO 30
  IF ~~ THEN REPLY @61 GOTO 31
  IF ~~ THEN REPLY @35 GOTO 53
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @62
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNLBW1")~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY @62
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNLBW2")~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.2
  SAY @62
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy(),AddSpecialAbility("SPCL121"))
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNLBW3")~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 26.3
  SAY @62
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy(),AddSpecialAbility("SPCL121"))
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNLBW4")~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 26.4
  SAY @62
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy(),AddSpecialAbility("SPCL121"))
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNLBW5")~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 7.4
  SAY @63
  IF ~CheckStatLT(LastTalkedToBy(Myself),1,PROFICIENCYSLING)~ THEN REPLY @64 GOTO 33
  IF ~CheckStatLT(LastTalkedToBy(Myself),2,PROFICIENCYSLING)~ THEN REPLY @65 GOTO 34
  IF ~CheckStatLT(LastTalkedToBy(Myself),3,PROFICIENCYSLING)~ THEN REPLY @66 GOTO 35
  IF ~CheckStatLT(LastTalkedToBy(Myself),4,PROFICIENCYSLING)~ THEN REPLY @67 GOTO 36
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~~ THEN REPLY @35 GOTO 54
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY @69
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSLG1")~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY @69
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSLG2")~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.2
  SAY @69
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSLG3")~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 32.3
  SAY @69
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSLG4")~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 32.4
  SAY @69
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSLG5")~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 2.0
  SAY @70
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSSS1")~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 2.1
  SAY @70
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSSS2")~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 2.2
  SAY @70
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSSS3")~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 4.0
  SAY @70
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSWS1")~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 4.1
  SAY @70
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSWS2")~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 4.2
  SAY @70
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNSWS3")~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 5.0
  SAY @70
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNTWS1")~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 5.1
  SAY @70
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNTWS2")~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 5.2
  SAY @70
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTNTWS3")~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 6.0
  SAY @70
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTN2HW1")~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 6.1
  SAY @70
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTN2HW2")~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 6.2
  SAY @70
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CBTN2HW3")~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 8.5
  SAY @71
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from: 14.5
  SAY @72
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 52 // from: 20.5
  SAY @73
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 53 // from: 26.5
  SAY @73
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 54 // from: 32.5
  SAY @74
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 55 // from: 7.5
  SAY @75
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 56 // from: 2.5
  SAY @76
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 57 // from: 4.5
  SAY @76
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 58 // from: 5.5
  SAY @76
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 59 // from: 6.5
  SAY @76
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 60 // from: 1.4
  SAY @76
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 61 // from: 0.2
  SAY @77
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 62 // from: 3.0
  SAY @78
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY @79
  IF ~~ THEN REPLY @80 GOTO 1
  IF ~~ THEN REPLY @81 GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.1
  SAY @82
  IF ~~ THEN EXIT
END
