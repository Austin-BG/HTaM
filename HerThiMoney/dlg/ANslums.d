BEGIN ANSHTLEG

// Саймон Шортлег


IF ~!InParty("Cernd") !InParty("Hubelpot") RandomNum(3,1)~ THEN BEGIN ANSimon1 
  SAY @55 
IF ~~ THEN EXIT
END

IF ~!InParty("Cernd") !InParty("Hubelpot") RandomNum(3,2)~ THEN BEGIN ANSimon2
  SAY @56 
IF ~~ THEN EXIT
END

IF ~!InParty("Cernd") !InParty("Hubelpot") RandomNum(3,3)~ THEN BEGIN ANSimon3
  SAY @57 
IF ~~ THEN EXIT
END


IF ~OR(2) InParty("Cernd") InParty("Hubelpot") !Global("ANsimoncernd","GLOBAL",0) RandomNum(3,1)~ THEN BEGIN ANSimon4 
  SAY @55 
IF ~~ THEN EXIT
END

IF ~OR(2) InParty("Cernd") InParty("Hubelpot") !Global("ANsimoncernd","GLOBAL",0) RandomNum(3,2)~ THEN BEGIN ANSimon5
  SAY @56 
IF ~~ THEN EXIT
END

IF ~OR(2) InParty("Cernd") InParty("Hubelpot") !Global("ANsimoncernd","GLOBAL",0) RandomNum(3,3)~ THEN BEGIN ANSimon6
  SAY @57 
IF ~~ THEN EXIT
END


CHAIN  
IF WEIGHT #-1 ~OR(3) !InParty("Hubelpot") !InMyArea("Hubelpot") StateCheck("Hubelpot",CD_STATE_NOTVALID) InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) Global("ANsimoncernd","GLOBAL",0)~ 
THEN ANSHTLEG ANsimoncernd1 
@0 DO ~SetGlobal("ANsimoncernd","GLOBAL",1) ActionOverride(Player1,SetDialog("PLAYER1"))~
= @1
== CERNDJ @2
== ANSHTLEG @3
= @4
== CERNDJ @5
== ANSHTLEG @6
== CERNDJ @7
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @8
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @9
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @10
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @11
== CERNDJ @12
= @13
== ANSHTLEG @14
== CERNDJ @15
= @16
== ANSHTLEG @17
== CERNDJ @18
== ANSHTLEG @19 
END
IF ~OR(3) !InParty("Imoen2") !InMyArea("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN REPLY @20 EXTERN CERNDJ ANsimoncernd1_1
IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN REPLY @20 EXTERN IMOEN2J ANsimoncernd1_1Imoen

CHAIN IF ~~ THEN IMOEN2J ANsimoncernd1_1Imoen
@54
END
IF ~~ THEN REPLY @22 EXTERN CERNDJ ANsimoncernd1_1

CHAIN CERNDJ ANsimoncernd1_1
@21
END
IF ~~ THEN REPLY @22 EXTERN CERNDJ ANsimoncernd1_1_1

CHAIN CERNDJ ANsimoncernd1_1_1 
@23
END
IF ~~ THEN REPLY @24 EXTERN ANSHTLEG ANsimoncernd1_2

CHAIN IF ~~ THEN ANSHTLEG ANsimoncernd1_2
@25
= @26
END
IF ~~ THEN REPLY @27 EXTERN ANSHTLEG ANsimoncernd2 
IF ~~ THEN REPLY @28 EXTERN ANSHTLEG ANsimoncernd2 

CHAIN 
IF ~~ THEN ANSHTLEG ANsimoncernd2
@29
END
IF ~~ THEN REPLY @30 EXTERN CERNDJ ANsimoncernd2_1

CHAIN CERNDJ ANsimoncernd2_1
@31
END
IF ~~ THEN REPLY @32 EXTERN CERNDJ ANsimoncernd4 
IF ~~ THEN REPLY @33 EXTERN ANSHTLEG ANsimoncernd3

CHAIN
IF ~~ THEN ANSHTLEG ANsimoncernd3 
@34
END
IF ~~ THEN REPLY @35 EXTERN CERNDJ ANsimoncernd4

CHAIN
IF ~~ THEN ANSHTLEG ANsimoncernd5 
@39
END
IF ~~ THEN DO ~SetGlobal("ANmilkcernd","GLOBAL",1) ActionOverride(Player1,SetDialog("PLAYER1"))~ EXTERN CERNDJ ANsimoncernd7-1

CHAIN
IF ~~ THEN ANSHTLEG ANsimoncernd6 
@40
END
IF ~~ THEN DO ~SetGlobal("ANmilkcernd","GLOBAL",2) ActionOverride(Player1,SetDialog("PLAYER1"))~ EXTERN CERNDJ ANsimoncernd7-2

CHAIN
IF ~~ THEN ANSHTLEG ANsimoncernd9 
@44
END
IF ~~ THEN EXTERN CERNDJ ANsimoncernd10

CHAIN
IF ~~ THEN ANSHTLEG ANsimoncernd11 
@48
END
IF ~Global("ANmilkcernd","GLOBAL",1)~ THEN EXTERN ANSHTLEG ANsimoncernd12
IF ~Global("ANmilkcernd","GLOBAL",2)~ THEN EXTERN ANSHTLEG ANsimoncernd13

CHAIN
IF ~~ THEN ANSHTLEG ANsimoncernd12
@49
END
IF ~~ THEN DO ~SetGlobal("ANsimoncernd","GLOBAL",2) AddexperienceParty(200) GiveGoldForce(25)~ EXTERN CERNDJ ANsimoncerndend1

CHAIN
IF ~~ THEN ANSHTLEG ANsimoncernd13 
@50
END
IF ~~ THEN DO ~SetGlobal("ANsimoncernd","GLOBAL",2) AddexperienceParty(100) GiveGoldForce(15)~ EXTERN CERNDJ ANsimoncerndend2



APPEND ~CERNDJ~
IF ~~ BEGIN ANsimoncernd4 
  SAY @36
IF ~~ THEN REPLY @37 EXTERN ANSHTLEG ANsimoncernd5 
IF ~~ THEN REPLY @38 EXTERN ANSHTLEG ANsimoncernd6
END

IF ~~ BEGIN ANsimoncernd7-1 
SAY @41
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ EXTERN PLAYER1 ANsimoncerndAll 
END

IF ~~ BEGIN ANsimoncernd8 
SAY @43 
IF ~~ THEN EXTERN ANSHTLEG ANsimoncernd9
END

IF ~~ BEGIN ANsimoncernd7-2 
  SAY @42
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ EXTERN PLAYER1 ANsimoncerndAll
END

IF ~~ BEGIN ANsimoncernd10
  SAY @45
IF ~~ THEN REPLY @46 EXTERN ANSHTLEG ANsimoncernd11 
IF ~~ THEN REPLY @47 EXTERN ANSHTLEG ANsimoncernd11
END

IF ~~ BEGIN ANsimoncerndend1 
  SAY @51
IF ~~ THEN REPLY @52 EXIT 
IF ~~ THEN REPLY @53 EXIT 
END

IF ~~ BEGIN ANsimoncerndend2 
  SAY @51
IF ~~ THEN REPLY @52 EXIT
IF ~~ THEN REPLY @53 EXIT
END

END 

CHAIN  
IF ~~ THEN PLAYER1 ANsimoncerndAll 
@58
== IF_FILE_EXISTS NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @59
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @60
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @61
== JANJ IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @62
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @63
EXTERN CERNDJ ANsimoncernd8  

// Девочка

INTERJECT_COPY_TRANS3 URCHIN2 0 ANslumsGirl0
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !Dead("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @64
== URCHIN2 IF ~InParty("Anomen") InMyArea("Anomen") !Dead("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @65
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @66
== URCHIN2 IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @67
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @68
== URCHIN2 IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @69
END

INTERJECT_COPY_TRANS URCHIN2 3 ANslumsGirl3
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @70
== URCHIN2 IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @71
END

INTERJECT_COPY_TRANS URCHIN2 5 ANslumsGirl5
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @72
END

// Крестьянин
INTERJECT_COPY_TRANS SLUMM4 0 ANslumsSLUMM4-0
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @73
END