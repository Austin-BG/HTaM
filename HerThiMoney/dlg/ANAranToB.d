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
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @61
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @61
== PLAYER1 @11
== ANTony @12
=@13 DO ~RealSetGlobalTimer("ANAranLetterToBTimer","GLOBAL",5) EscapeArea()~
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