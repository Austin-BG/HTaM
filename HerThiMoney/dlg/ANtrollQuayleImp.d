CHAIN
IF WEIGHT #-10 ~Global("ANQuayleTroll","GLOBAL",1) Global("ANQuayleImp","GLOBAL",1)~ THEN ANmess ANmessTalkQuayleImp
@221 DO ~SetGlobal("ANQuayleTroll","GLOBAL",3)~
== 7XQUAYJ @222
== ANmess @223 DO ~EscapeArea()~
== 7XQUAYJ @224
== AERIEJ @10
== 7XQUAYJ @12
== AERIEJ @13
== 7XQUAYJ @14
END
IF ~~ THEN REPLY @15 EXTERN AERIEJ ANQuayleImpTalkFirst1_1
IF ~~ THEN REPLY @19 EXTERN 7XQUAYJ ANQuayleImpTalkFirst2
IF ~~ THEN REPLY @21 EXTERN 7XQUAYJ ANQuayleImpTalkFirst3


APPEND AERIEJ
IF ~~ THEN BEGIN ANQuayleImpTalkFirst1_1
  SAY @16
IF ~~ THEN EXTERN 7XQUAYJ ANQuayleImpTalkFirst1_3
END

IF ~~ THEN BEGIN ANQuayleImpTalkFirst1_3_2
  SAY @26
IF ~~ THEN EXTERN 7XQUAYJ ANQuayleImpTalkFirst1_3_2_1
END
END


APPEND 7XQUAYJ

IF ~~ THEN BEGIN ANQuayleImpTalkFirst1_3
  SAY @18
IF ~~ THEN REPLY @23 EXTERN 7XQUAYJ ANQuayleImpTalkFirst1_3_1
IF ~~ THEN REPLY @25 EXTERN AERIEJ ANQuayleImpTalkFirst1_3_2
IF ~~ THEN REPLY @28 EXTERN 7XQUAYJ ANQuayleImpTalkFirst1_3_4
IF ~~ THEN DO ~SetGlobal("ANQuayleTrollOtkaz","GLOBAL",1)~ REPLY @226 EXTERN 7XQUAYJ ANQuayleImpTalkFirst1_3_5
END

IF ~~ THEN BEGIN ANQuayleImpTalkFirst2
  SAY @20
IF ~~ THEN REPLY @23 EXTERN 7XQUAYJ ANQuayleImpTalkFirst1_3_1
IF ~~ THEN REPLY @25 EXTERN AERIEJ ANQuayleImpTalkFirst1_3_2
IF ~~ THEN REPLY @28 EXTERN 7XQUAYJ ANQuayleImpTalkFirst1_3_4
IF ~~ THEN DO ~SetGlobal("ANQuayleTrollOtkaz","GLOBAL",1)~ REPLY @226 EXTERN 7XQUAYJ ANQuayleImpTalkFirst1_3_5
END

IF ~~ THEN BEGIN ANQuayleImpTalkFirst3
  SAY @22
IF ~~ THEN REPLY @23 EXTERN 7XQUAYJ ANQuayleImpTalkFirst1_3_1
IF ~~ THEN REPLY @25 EXTERN AERIEJ ANQuayleImpTalkFirst1_3_2
IF ~~ THEN REPLY @28 EXTERN 7XQUAYJ ANQuayleImpTalkFirst1_3_4
IF ~~ THEN DO ~SetGlobal("ANQuayleTrollOtkaz","GLOBAL",1)~ REPLY @226 EXTERN 7XQUAYJ ANQuayleImpTalkFirst1_3_5
END

IF ~~ THEN BEGIN ANQuayleImpTalkFirst1_3_1
  SAY @24
IF ~~ THEN EXTERN PLAYER1 ANQuayleImpTalkFirst2
END

IF ~~ THEN BEGIN ANQuayleImpTalkFirst1_3_4
  SAY @29
IF ~~ THEN EXTERN PLAYER1 ANQuayleImpTalkFirst2
END

IF ~~ THEN BEGIN ANQuayleImpTalkFirst1_3_5
  SAY @225
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANQuayleImpTalkFirst1_3_2_1
  SAY @27
IF ~~ THEN EXTERN PLAYER1 ANQuayleImpTalkFirst2
END

IF WEIGHT #-120 ~OR(3) Global("ANTroll","GLOBAL",12) Global("ANTroll","GLOBAL",13) Global("ANTroll","GLOBAL",14)~ THEN BEGIN ANQuayleImpTalkFinal
  SAY @227
IF ~Global("ANTroll","GLOBAL",12)~ THEN DO ~AddJournalEntry(@1077,QUEST_DONE) GiveGoldForce(3000) AddexperienceParty(10000)~ REPLY @228 GOTO ANQuayleImpTalkFinal1
IF ~Global("ANTroll","GLOBAL",13)~ THEN DO ~GiveGoldForce(500) AddexperienceParty(5000)~ REPLY @229 GOTO ANQuayleImpTalkFinal2
IF ~Global("ANTroll","GLOBAL",14)~ THEN DO ~AddJournalEntry(@1080,QUEST_DONE) GiveGoldForce(700) AddexperienceParty(5000)~ REPLY @230 GOTO ANQuayleImpTalkFinal3
END

IF ~~ THEN BEGIN ANQuayleImpTalkFinal1
  SAY @231
IF ~~ THEN GOTO ANQuayleImpTalkFinal4
END

IF ~~ THEN BEGIN ANQuayleImpTalkFinal2
  SAY @232
IF ~~ THEN GOTO ANQuayleImpTalkFinal4
END

IF ~~ THEN BEGIN ANQuayleImpTalkFinal3
  SAY @232
IF ~~ THEN GOTO ANQuayleImpTalkFinal4
END

IF ~~ THEN BEGIN ANQuayleImpTalkFinal4
  SAY @233
IF ~Global("ANTroll","GLOBAL",12)~ THEN DO ~SetGlobalTimer("ANSireneTimer","GLOBAL",ONE_DAY) SetGlobal("ANTroll","GLOBAL",15)~ REPLY @234 EXIT
IF ~Global("ANTroll","GLOBAL",13)~ THEN DO ~SetGlobal("ANTroll","GLOBAL",15)~ REPLY @234 EXIT
IF ~Global("ANTroll","GLOBAL",14)~ THEN DO ~SetGlobal("ANTroll","GLOBAL",15)~ REPLY @234 EXIT
END

END

CHAIN
IF ~Global("ANQuayleTroll","GLOBAL",3) !Global("ANQuayleTrollOtkaz","GLOBAL",1) InParty("7XQUAY")~ THEN PLAYER1 ANQuayleImpTalkFirst2
@32
== 7XQUAYJ @33
== AERIEJ @34
== PLAYER1 @35
== AERIEJ @36
== 7XQUAYJ @37
== AERIEJ @38
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @39
== PLAYER1 @40
== 7XQUAYJ @41
== AERIEJ @42
== 7XQUAYJ @43 DO ~SetGlobal("ANQuayleTroll","GLOBAL",4)~
== PLAYER1 @44
EXIT

CHAIN
IF ~Global("ANQuayleTroll","GLOBAL",5) InParty("7XQUAY")~ THEN PLAYER1 ANTrollCallTalkQuayleImp
@46
== 7XQUAYJ @47
== PLAYER1 @48
== AERIEJ @49
== PLAYER1 @50
= @51
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @52
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) OR(2) !InParty("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @52
== PLAYER1 @53
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @54
== PLAYER1 @55
== 7XQUAYJ @56
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @57
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @58
== PLAYER1 IF ~OR(3) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @58
== PLAYER1 @59
== 7XQUAYJ @60
== YOSHJ IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @61
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) OR(2) !InParty("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @61
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) OR(2) !InParty("Jan") StateCheck("Jan",CD_STATE_NOTVALID) OR(2) !InParty("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @61
== PLAYER1 IF ~OR(2) !InParty("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) OR(2) !InParty("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID) OR(2) !InParty("Jan") StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @61
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @65
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @65
== 7XQUAYJ @62
== AERIEJ @63
== PLAYER1 @64 DO ~AddJournalEntry(@1070,QUEST) SetGlobal("ANQuayleTroll","GLOBAL",6) SetGlobal("ANTroll","GLOBAL",1)~
EXIT