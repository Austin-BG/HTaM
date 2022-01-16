CHAIN  
IF WEIGHT #-1 ~InParty("Hubelpot") InMyArea("Hubelpot") !StateCheck("Hubelpot",CD_STATE_NOTVALID) Global("ANsimoncernd","GLOBAL",0)~ 
THEN ANSHTLEG ANsimonhubelpot1 
@74 DO ~SetGlobal("ANsimoncernd","GLOBAL",1) ActionOverride(Player1,SetDialog("PLAYER1"))~
= @1
== SC#HubJ @2
== ANSHTLEG @3
= @4
== SC#HubJ @5
== ANSHTLEG @75
== SC#HubJ @7
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @8
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @9
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @10
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @11
== SC#HubJ @76
= @77
== ANSHTLEG @78
== SC#HubJ @79
= @80
== ANSHTLEG @81
== SC#HubJ @82
== ANSHTLEG @83 
END
IF ~OR(3) !InParty("Imoen2") !InMyArea("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN REPLY @84 EXTERN SC#HubJ ANsimonhubelpot1_1
IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN REPLY @84 EXTERN IMOEN2J ANsimonhubelpot1_1Imoen

CHAIN IF ~~ THEN IMOEN2J ANsimonhubelpot1_1Imoen 
@54
END
IF ~~ THEN REPLY @84 EXTERN SC#HubJ ANsimonhubelpot1_1

CHAIN SC#HubJ ANsimonhubelpot1_1
@85
END
IF ~~ THEN REPLY @22 EXTERN SC#HubJ ANsimonhubelpot1_1_1 

CHAIN SC#HubJ ANsimonhubelpot1_1_1 
@86
END
IF ~~ THEN REPLY @87 EXTERN ANSHTLEG ANsimonhubelpot1_2

CHAIN IF ~~ THEN ANSHTLEG ANsimonhubelpot1_2
@25
= @26
END
IF ~~ THEN REPLY @27 EXTERN ANSHTLEG ANsimonhubelpot2 
IF ~~ THEN REPLY @28 EXTERN ANSHTLEG ANsimonhubelpot2 

CHAIN 
IF ~~ THEN ANSHTLEG ANsimonhubelpot2
@29
END
IF ~~ THEN REPLY @88 EXTERN SC#HubJ ANsimonhubelpot2_1

CHAIN SC#HubJ ANsimonhubelpot2_1
@31
END
IF ~~ THEN REPLY @32 EXTERN SC#HubJ ANsimonhubelpot4 
IF ~~ THEN REPLY @33 EXTERN ANSHTLEG ANsimonhubelpot3

CHAIN
IF ~~ THEN ANSHTLEG ANsimonhubelpot3 
@34
END
IF ~~ THEN REPLY @35 EXTERN SC#HubJ ANsimonhubelpot4

CHAIN
IF ~~ THEN ANSHTLEG ANsimonhubelpot5 
@39
END
IF ~~ THEN DO ~SetGlobal("ANmilkcernd","GLOBAL",1) ActionOverride(Player1,SetDialog("PLAYER1"))~ EXTERN SC#HubJ ANsimonhubelpot7-1

CHAIN
IF ~~ THEN ANSHTLEG ANsimonhubelpot6 
@40
END
IF ~~ THEN DO ~SetGlobal("ANmilkcernd","GLOBAL",2) ActionOverride(Player1,SetDialog("PLAYER1"))~ EXTERN SC#HubJ ANsimonhubelpot7-2

CHAIN
IF ~~ THEN ANSHTLEG ANsimonhubelpot9 
@90
END
IF ~~ THEN EXTERN SC#HubJ ANsimonhubelpot10

CHAIN
IF ~~ THEN ANSHTLEG ANsimonhubelpot11 
@92
END
IF ~Global("ANmilkcernd","GLOBAL",1)~ THEN EXTERN ANSHTLEG ANsimonhubelpot12
IF ~Global("ANmilkcernd","GLOBAL",2)~ THEN EXTERN ANSHTLEG ANsimonhubelpot13

CHAIN
IF ~~ THEN ANSHTLEG ANsimonhubelpot12
@49
END
IF ~~ THEN DO ~SetGlobal("ANsimoncernd","GLOBAL",2) AddexperienceParty(200) GiveGoldForce(25)~ EXTERN SC#HubJ ANsimonhubelpotend1

CHAIN
IF ~~ THEN ANSHTLEG ANsimonhubelpot13 
@50
END
IF ~~ THEN DO ~SetGlobal("ANsimoncernd","GLOBAL",2) AddexperienceParty(100) GiveGoldForce(15)~ EXTERN SC#HubJ ANsimonhubelpotend2



APPEND ~SC#HubJ~
IF ~~ BEGIN ANsimonhubelpot4 
  SAY @36
IF ~~ THEN REPLY @37 EXTERN ANSHTLEG ANsimonhubelpot5 
IF ~~ THEN REPLY @38 EXTERN ANSHTLEG ANsimonhubelpot6
END

IF ~~ BEGIN ANsimonhubelpot7-1 
SAY @41
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ EXTERN PLAYER1 ANsimonhubelpotAll 
END

IF ~~ BEGIN ANsimonhubelpot8 
SAY @89 
IF ~~ THEN EXTERN ANSHTLEG ANsimonhubelpot9
END

IF ~~ BEGIN ANsimonhubelpot7-2 
  SAY @42
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ EXTERN PLAYER1 ANsimonhubelpotAll
END

IF ~~ BEGIN ANsimonhubelpot10
  SAY @45
IF ~~ THEN REPLY @91 EXTERN ANSHTLEG ANsimonhubelpot11 
IF ~~ THEN REPLY @47 EXTERN ANSHTLEG ANsimonhubelpot11
END

IF ~~ BEGIN ANsimonhubelpotend1 
  SAY @93
IF ~~ THEN REPLY @52 EXIT 
IF ~~ THEN REPLY @53 EXIT 
END

IF ~~ BEGIN ANsimonhubelpotend2 
  SAY @93
IF ~~ THEN REPLY @52 EXIT
IF ~~ THEN REPLY @53 EXIT
END

END 

CHAIN  
IF ~~ THEN PLAYER1 ANsimonhubelpotAll 
@58
== IF_FILE_EXISTS NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @59
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @60
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @61
== JANJ IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @62
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @63
EXTERN SC#HubJ ANsimonhubelpot8  