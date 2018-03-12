BEGIN ~CBSHTHIF~

IF ~Global("CbSelenceSmuggles","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
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
  IF ~~ THEN DO ~SetGlobalTimer("CbSelenceSmugglesTimer","GLOBAL",THREE_DAYS)
SetGlobal("CbSelenceSmuggles","GLOBAL",1)
~ EXIT
END

IF ~Global("CbSelenceSmuggles","GLOBAL",2)~ THEN BEGIN 6
  SAY @6
  IF ~~ THEN DO ~GiveItemCreate("CBRJR001","CbContainer12",1,0,0)
SetGlobalTimer("CbSelenceSmugglesTimer","GLOBAL",SEVEN_DAYS)
SetGlobal("CbSelenceSmuggles","GLOBAL",3)
~ EXIT
END

IF ~Global("CbSelenceSmuggles","GLOBAL",4)~ THEN BEGIN 7
  SAY @7
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @8
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @9
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @10
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @11
  IF ~~ THEN DO ~GiveItemCreate("CBRJR002","CbContainer12",1,0,0)
GiveItemCreate("MISC07","CbContainer12",2300,0,0)
SetGlobalTimer("CbSelenceSmugglesTimer","GLOBAL",FOUR_DAYS)
SetGlobal("CbSelenceSmuggles","GLOBAL",5)~ EXIT
END

IF ~Global("CbSelenceSmuggles","GLOBAL",6)~ THEN BEGIN 12
  SAY @12
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @13
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @14
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @15
  IF ~~ THEN DO ~GiveItemCreate("CBRJR004","CbContainer12",1,0,0)
GiveItemCreate("CBRJR005","CbContainer12",1,0,0)
GiveItemCreate("MISC07","CbContainer12",3800,0,0)
SetGlobalTimer("CbSelenceSmugglesTimer","GLOBAL",TEN_DAYS)
SetGlobal("CbSelenceSmuggles","GLOBAL",7)~ EXIT
END

IF ~Global("CbSelenceSmuggles","GLOBAL",8)~ THEN BEGIN 16
  SAY @16
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @17
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @18
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @19
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @20
  IF ~~ THEN DO ~GiveItemCreate("CBRJR006","CbContainer12",1,0,0)
GiveItemCreate("CBRJR007","CbContainer12",1,0,0)
GiveItemCreate("CBRJR008","CbContainer12",1,0,0)
GiveItemCreate("CBRJR009","CbContainer12",1,0,0)
GiveItemCreate("CBRJR010","CbContainer12",1,0,0)
GiveItemCreate("CBRJR011","CbContainer12",1,0,0)
GiveItemCreate("CBRJR012","CbContainer12",1,0,0)
GiveItemCreate("MISC07","CbContainer12",8945,0,0)
SetGlobalTimer("CbSelenceSmugglesTimer","GLOBAL",FIFTEEN_DAYS)
SetGlobal("CbSelenceSmuggles","GLOBAL",9)~ EXIT
END

IF ~Global("CbSelenceSmuggles","GLOBAL",10)~ THEN BEGIN 21
  SAY @21
  IF ~~ THEN DO ~GiveItemCreate("MISC07","CbContainer12",26000,0,0)
SetGlobalTimer("CbSelenceSmugglesTimer","GLOBAL",FIVE_DAYS)
SetGlobal("CbSelenceSmuggles","GLOBAL",11)~ EXIT
END

IF ~Global("CbSelenceSmuggles","GLOBAL",12)~ THEN BEGIN 22
  SAY @22
  IF ~~ THEN DO ~GiveItemCreate("CBRJR013","CbContainer12",1,0,0)
GiveItemCreate("CBRJR014","CbContainer12",1,0,0)
GiveItemCreate("CBRJR015","CbContainer12",1,0,0)
GiveItemCreate("CBRJR017","CbContainer12",1,0,0)
GiveItemCreate("CBRJR018","CbContainer12",1,0,0)
GiveItemCreate("CBRJR019","CbContainer12",1,0,0)
GiveItemCreate("MISC07","CbContainer12",12400,0,0)
SetGlobalTimer("CbSelenceSmugglesTimer","GLOBAL",SIX_DAYS)
SetGlobal("CbSelenceSmuggles","GLOBAL",13)~ EXIT
END

IF ~GlobalTimerExpired("CbSelenceSmugglesTimer","GLOBAL")
GlobalGT("CbSelenceSmuggles","GLOBAL",13)~ THEN BEGIN 23
  SAY @23
  IF ~~ THEN DO ~GiveItemCreate("MISC07","CbContainer12",12400,0,0)
SetGlobalTimer("CbSelenceSmugglesTimer","GLOBAL",SEVEN_DAYS)~ EXIT
END
