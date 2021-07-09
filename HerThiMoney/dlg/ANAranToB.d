// Тони

CHAIN
IF ~Global("AranLoveToB","GLOBAL",1) Global("AranRomanceActive","GLOBAL",2)~ THEN ANTony ANtonyToBTalk
@0 DO ~SetGlobal("AranLoveToB","GLOBAL",2)~
== PLAYER1 @1
=@2
== ANTony @3
== PLAYER1 @4 DO ~GiveItemCreate("ANlet3",Player1,1,0,0) GiveItemCreate("SCRL07",Player1,1,0,0)~
=@5
=@6
=@7
== ANTony @8
== PLAYER1 IF ~Global("PlayerThiefGuild","GLOBAL",1) !Global("PGFailed","GLOBAL",1)~ THEN @9
== ANTony IF ~Global("PlayerThiefGuild","GLOBAL",1) !Global("PGFailed","GLOBAL",1)~ THEN @10
== PLAYER1 IF ~OR(2) !Global("PlayerThiefGuild","GLOBAL",1) Global("PGFailed","GLOBAL",1)~ THEN @59
== ANTony IF ~OR(2) !Global("PlayerThiefGuild","GLOBAL",1) Global("PGFailed","GLOBAL",1)~ THEN @60
== IF_FILE_EXISTS O#TIA25J IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @61
== IF_FILE_EXISTS 7XTIA25J IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @61
== PLAYER1 @11
== ANTony @12 DO ~RealSetGlobalTimer("ANAranLetterToBTimer","GLOBAL",5) EscapeArea()~
=@13
EXIT


APPEND PLAYER1

IF ~Global("AranLoveToB","GLOBAL",3)~ BEGIN ANAranToBTalk
  SAY @14
=@15  
IF ~!InParty("Aerie") !InParty("Imoen2")~ THEN DO ~SetGlobal("AranLoveToB","GLOBAL",4)~ EXIT
IF ~!InParty("Aerie") InParty("Imoen2")~ THEN DO ~SetGlobal("AranLoveToB","GLOBAL",4)~ EXTERN IMOEN25J ANAranToBTalkImoen
IF ~InParty("Aerie")~ THEN DO ~SetGlobal("AranLoveToB","GLOBAL",4)~ EXTERN AERIE25J ANAranToBTalkAerie
END

END

APPEND AERIE25J

IF ~~ BEGIN ANAranToBTalkAerie
  SAY @16
IF ~~ THEN REPLY @17 GOTO ANAranToBTalkAerie1
IF ~~ THEN REPLY @19 GOTO ANAranToBTalkAerie2
END

IF ~~ BEGIN ANAranToBTalkAerie1
  SAY @18
IF ~!InParty("Imoen2")~ THEN EXIT
IF ~InParty("Imoen2")~ THEN EXTERN IMOEN25J ANAranToBTalkImoen
END

IF ~~ BEGIN ANAranToBTalkAerie2
  SAY @20
IF ~~ THEN REPLY @21 GOTO ANAranToBTalkAerie3
END

IF ~~ BEGIN ANAranToBTalkAerie3
  SAY @22
IF ~!InParty("Imoen2")~ THEN EXIT
IF ~InParty("Imoen2")~ THEN EXTERN IMOEN25J ANAranToBTalkImoen
END

END

APPEND IMOEN25J

IF ~~ BEGIN ANAranToBTalkImoen
  SAY @23
IF ~~ THEN REPLY @24 GOTO ANAranToBTalkImoen1
IF ~~ THEN REPLY @25 GOTO ANAranToBTalkImoen2
END

IF ~~ BEGIN ANAranToBTalkImoen1
  SAY @26
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranToBTalkImoen2
  SAY @27
IF ~~ THEN EXIT
END

END


APPEND IF_FILE_EXISTS RASAA25J

IF WEIGHT #-10 ~Global("AranRasaadToB","GLOBAL",2)~ BEGIN ANAranToBTalkRasaad
  SAY @28
IF ~~ THEN DO ~SetGlobal("AranRasaadToB","GLOBAL",3)~ REPLY @29 GOTO ANAranToBTalkRasaad1
IF ~~ THEN DO ~SetGlobal("AranRasaadToB","GLOBAL",3)~ REPLY @30 GOTO ANAranToBTalkRasaad2
END

IF ~~ BEGIN ANAranToBTalkRasaad1
  SAY @31
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranToBTalkRasaad2
  SAY @32
IF ~Global("RasaadRomanceActive","GLOBAL",3)~ THEN REPLY @33 GOTO ANAranToBTalkRasaad3Romance
IF ~!Global("RasaadRomanceActive","GLOBAL",3)~ THEN REPLY @33 GOTO ANAranToBTalkRasaad3NoRomance
END

IF ~~ BEGIN ANAranToBTalkRasaad3Romance
  SAY @34
IF ~~ THEN REPLY @35 GOTO ANAranToBTalkRasaad4
END

IF ~~ BEGIN ANAranToBTalkRasaad3NoRomance
  SAY @49
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranToBTalkRasaad4
  SAY @36
IF ~~ THEN EXIT
END

END


APPEND MINSC25J

IF  WEIGHT #-10 ~Global("AranMinscToB","GLOBAL",2)~ BEGIN ANAranToBTalkMinsc
  SAY @37
IF ~~ THEN DO ~SetGlobal("AranMinscToB","GLOBAL",3)~ REPLY @38 GOTO ANAranToBTalkMinsc1
IF ~~ THEN DO ~SetGlobal("AranMinscToB","GLOBAL",3)~ REPLY @39 GOTO ANAranToBTalkMinsc2
END

IF ~~ BEGIN ANAranToBTalkMinsc1
  SAY @40
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranToBTalkMinsc2
  SAY @41
IF ~~ THEN REPLY @42 GOTO ANAranToBTalkMinsc3
END

IF ~~ BEGIN ANAranToBTalkMinsc3
  SAY @43
IF ~~ THEN EXIT
END

END

APPEND SAREV25J

IF  WEIGHT #-10 ~Global("AranSarevokToB","GLOBAL",2)~ BEGIN ANAranToBTalkSarevok
  SAY @44
IF ~~ THEN DO ~SetGlobal("AranSarevokToB","GLOBAL",3)~ REPLY @45 GOTO ANAranToBTalkSarevok1
IF ~~ THEN DO ~SetGlobal("AranSarevokToB","GLOBAL",3)~ REPLY @46 GOTO ANAranToBTalkSarevok2
END

IF ~~ BEGIN ANAranToBTalkSarevok1
  SAY @47
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranToBTalkSarevok2
  SAY @48
IF ~~ THEN EXIT
END

END

APPEND KORGA25J

IF  WEIGHT #-10 ~Global("AranKorganToB","GLOBAL",2)~ BEGIN ANAranToBTalkKorgan
  SAY @50
IF ~~ THEN DO ~SetGlobal("AranKorganToB","GLOBAL",3)~ REPLY @51 GOTO ANAranToBTalkKorgan1
IF ~~ THEN DO ~SetGlobal("AranKorganToB","GLOBAL",3)~ REPLY @52 GOTO ANAranToBTalkKorgan2
END

IF ~~ BEGIN ANAranToBTalkKorgan1
  SAY @53
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranToBTalkKorgan2
  SAY @54
=@55
=@56
IF ~~ THEN EXIT
END

END

APPEND IF_FILE_EXISTS 7XGar25J

IF  WEIGHT #-10 ~Global("AranGarrickToB","GLOBAL",2)~ BEGIN ANAranToBTalkGarrick
  SAY @74
IF ~~ THEN DO ~SetGlobal("AranGarrickToB","GLOBAL",3)~ REPLY @75 GOTO ANAranToBTalkGarrick1
IF ~~ THEN DO ~SetGlobal("AranGarrickToB","GLOBAL",3)~ REPLY @77 GOTO ANAranToBTalkGarrick2
END

IF ~~ BEGIN ANAranToBTalkGarrick1
  SAY @76
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranToBTalkGarrick2
  SAY @78
IF ~~ THEN EXIT
END

END

// Дух Горайона
EXTEND_BOTTOM HGWRA01 18 
IF ~Global("AranRomanceActive","GLOBAL",2) Global("ANAranGorionWraith","AR5202",0)~ THEN DO ~SetGlobal("ANAranGorionWraith","AR5202",1)~ GOTO ANAranToBGorion
END

APPEND HGWRA01
IF ~~ BEGIN ANAranToBGorion
  SAY @57
=@58  
IF ~~ THEN GOTO 25
END
END

CHAIN
IF WEIGHT #-70 ~Global("AranWilsonToB","GLOBAL",2) Global("AranRomanceActive","GLOBAL",2)~ THEN IF_FILE_EXISTS WILSO25J ANAranToBTalkWilson
@62 DO ~SetGlobal("AranWilsonToB","GLOBAL",3)~
== PLAYER1 @63
== WILSO25J @64
== PLAYER1 @65
== WILSO25J @66
== PLAYER1 @67
== WILSO25J @68
== PLAYER1 @69
== KORGA25J IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @70
== WILSO25J IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @71
== PLAYER1 @72
== WILSO25J @73
EXIT

APPEND PLAYER1

IF ~Global("ANfinalAranTalk","AR4500",1)~ BEGIN ANAranFinalToBTalkFatesp
  SAY @79
=@80  
=@81 
IF ~~ THEN DO ~SetGlobal("ANfinalAranTalk","AR4500",2)~ REPLY @82 GOTO ANAranFinalToBTalkNO
IF ~~ THEN DO ~ActionOverride("ANfatesp",DestroySelf()) SetGlobal("ANfinalAranTalk","AR4500",3)~ REPLY @84 GOTO ANAranFinalToBTalkYES
END

IF ~~ BEGIN ANAranFinalToBTalkNO
  SAY @83
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranFinalToBTalkYES
  SAY @85
IF ~~ THEN REPLY @86 EXTERN FATESP 9
END

IF ~~ BEGIN ANAranFinalToBTalk5
  SAY @97
IF ~~ THEN EXTERN ARAN ANAranFinalToBTalk6
END

IF ~~ BEGIN ANAranFinalToBTalk9
  SAY @122
IF ~~ THEN EXIT
END

END

APPEND ARAN

IF WEIGHT #-99 ~Global("ANfinalAranTalk","AR4500",4)~ BEGIN ANAranFinalToBTalk
  SAY @87
 =@88 
 =@89
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANfinalAranTalk","AR4500",4)~ REPLY @90 GOTO ANAranFinalToBTalk1
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANfinalAranTalk","AR4500",4)~ REPLY @92 GOTO ANAranFinalToBTalk2
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANfinalAranTalk","AR4500",4)~ REPLY @94 GOTO ANAranFinalToBTalk3
END

IF ~~ BEGIN ANAranFinalToBTalk1
  SAY @91
IF ~~ THEN GOTO ANAranFinalToBTalk4
END

IF ~~ BEGIN ANAranFinalToBTalk2
  SAY @93
IF ~~ THEN GOTO ANAranFinalToBTalk4
END

IF ~~ BEGIN ANAranFinalToBTalk3
  SAY @95
IF ~~ THEN GOTO ANAranFinalToBTalk4
END

IF ~~ BEGIN ANAranFinalToBTalk4
  SAY @96
IF ~~ THEN EXTERN PLAYER1 ANAranFinalToBTalk5
END

IF ~~ BEGIN ANAranFinalToBTalk6
  SAY @98
IF ~~ THEN REPLY @99 GOTO ANAranFinalToBTalk6_1
IF ~~ THEN REPLY @101 GOTO ANAranFinalToBTalk6_2
IF ~~ THEN REPLY @103 GOTO ANAranFinalToBTalk6_3
IF ~~ THEN REPLY @105 GOTO ANAranFinalToBTalk6_4
END

IF ~~ BEGIN ANAranFinalToBTalk6_1
  SAY @100
IF ~~ THEN GOTO ANAranFinalToBTalk7
END

IF ~~ BEGIN ANAranFinalToBTalk6_2
  SAY @102
IF ~~ THEN GOTO ANAranFinalToBTalk7
END

IF ~~ BEGIN ANAranFinalToBTalk6_3
  SAY @104
IF ~~ THEN GOTO ANAranFinalToBTalk7
END

IF ~~ BEGIN ANAranFinalToBTalk6_4
  SAY @106
IF ~~ THEN GOTO ANAranFinalToBTalk7
END

IF ~~ BEGIN ANAranFinalToBTalk7
  SAY @107
=@108
IF ~~ THEN REPLY @109 GOTO ANAranFinalToBTalk7_1
IF ~~ THEN REPLY @111 GOTO ANAranFinalToBTalk7_2
IF ~~ THEN REPLY @113 GOTO ANAranFinalToBTalk7_3
END

IF ~~ BEGIN ANAranFinalToBTalk7_1
  SAY @110
IF ~OR(2) GlobalLT("ANAranTethyr","GLOBAL",5) Global("ANaltarDead","GLOBAL",1)~ THEN REPLY @115 GOTO ANAranFinalToBTalk8_1
IF ~!Global("ANaltarDead","GLOBAL",1) GlobalGT("ANAranTethyr","GLOBAL",4)~ THEN REPLY @115 GOTO ANAranFinalToBTalk8_2
END

IF ~~ BEGIN ANAranFinalToBTalk7_2
  SAY @112
IF ~OR(2) GlobalLT("ANAranTethyr","GLOBAL",5) Global("ANaltarDead","GLOBAL",1)~ THEN REPLY @115 GOTO ANAranFinalToBTalk8_1
IF ~!Global("ANaltarDead","GLOBAL",1) GlobalGT("ANAranTethyr","GLOBAL",4)~ THEN REPLY @115 GOTO ANAranFinalToBTalk8_2
END

IF ~~ BEGIN ANAranFinalToBTalk7_3
  SAY @114
IF ~OR(2) GlobalLT("ANAranTethyr","GLOBAL",5) Global("ANaltarDead","GLOBAL",1)~ THEN REPLY @115 GOTO ANAranFinalToBTalk8_1
IF ~!Global("ANaltarDead","GLOBAL",1) GlobalGT("ANAranTethyr","GLOBAL",4)~ THEN REPLY @115 GOTO ANAranFinalToBTalk8_2
END

IF ~~ BEGIN ANAranFinalToBTalk8_1
  SAY @116
=@118  
=@119
=@120 
=@121
IF ~~ THEN DO ~CreateVisualEffect("SPPORTAL",[1999.1218]) DestroySelf()~ EXTERN PLAYER1 ANAranFinalToBTalk9
END

IF ~~ BEGIN ANAranFinalToBTalk8_2
  SAY @117
=@118  
=@119
=@120 
=@121
IF ~~ THEN DO ~CreateVisualEffect("SPPORTAL",[1999.1218]) DestroySelf()~ EXTERN PLAYER1 ANAranFinalToBTalk9
END

END