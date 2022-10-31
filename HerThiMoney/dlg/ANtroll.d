ADD_TRANS_ACTION QUAYLE BEGIN 10 END BEGIN END ~SetGlobalTimer("ANQuayleTimer","GLOBAL",ONE_DAY)~
ADD_TRANS_ACTION QUAYLE BEGIN 0 END BEGIN END ~SetGlobalTimer("ANQuayleTimer","GLOBAL",ONE_DAY)~
ADD_TRANS_ACTION BRUS2 BEGIN 2 END BEGIN END ~SetGlobal("ANbrusTalk","GLOBAL",1)~
ADD_TRANS_ACTION BRUS2 BEGIN 3 END BEGIN END ~SetGlobal("ANbrusTalk","GLOBAL",1)~

BEGIN ANmess

IF ~~ THEN BEGIN ANmessTalk1
  SAY @6
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ANmessTalk2
  SAY @7
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

CHAIN
IF ~Global("ANQuayleTroll","GLOBAL",1)~ THEN ANmess ANmessTalk
@0 DO ~SetGlobal("ANQuayleTroll","GLOBAL",2)~
END
IF ~~ THEN REPLY @1 EXTERN ANmess ANmessTalk_1

CHAIN ANmess ANmessTalk_1
@2
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @3
END
IF ~~ THEN REPLY @4 EXTERN ANmess ANmessTalk1
IF ~~ THEN REPLY @5 EXTERN ANmess ANmessTalk2


CHAIN
IF WEIGHT #-2 ~Global("ANQuayleTroll","GLOBAL",2) !Global("QuayleRaelis","GLOBAL",1) InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) !Global("ANQuayleTrollOtkaz","AR0607",1) AreaCheck("AR0607") OR(2) Global("Chapter","GLOBAL",%bg2_chapter_2%) Global("Chapter","GLOBAL",%bg2_chapter_3%)~ THEN QUAYLE ANQuayleTalkFirst
@8 DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANQuayleTroll","GLOBAL",3)~
=@9
== AERIEJ IF ~InParty("Aerie")~ THEN @10
== ANAERIE IF ~!InParty("Aerie")~ THEN @11
== QUAYLE @12
== AERIEJ IF ~InParty("Aerie")~ THEN @13
== ANAERIE IF ~!InParty("Aerie")~ THEN @13
== QUAYLE @14
END
IF ~InParty("Aerie")~ THEN REPLY @15 EXTERN AERIEJ ANQuayleTalkFirst1_1
IF ~!InParty("Aerie")~ THEN REPLY @15 EXTERN ANAERIE ANQuayleTalkFirst1_2
IF ~~ THEN REPLY @19 EXTERN QUAYLE ANQuayleTalkFirst2
IF ~~ THEN REPLY @21 EXTERN QUAYLE ANQuayleTalkFirst3

APPEND AERIEJ
IF ~~ THEN BEGIN ANQuayleTalkFirst1_1
  SAY @16
IF ~~ THEN EXTERN QUAYLE ANQuayleTalkFirst1_3
END

IF ~~ THEN BEGIN ANQuayleTalkFirst1_3_2
  SAY @26
IF ~~ THEN EXTERN QUAYLE ANQuayleTalkFirst1_3_2_1
END
END

BEGIN ANAERIE

IF ~~ THEN BEGIN ANQuayleTalkFirst1_2
  SAY @17
IF ~~ THEN EXTERN QUAYLE ANQuayleTalkFirst1_3
END

IF ~~ THEN BEGIN ANQuayleTalkFirst1_3_3
  SAY @26
IF ~~ THEN EXTERN QUAYLE ANQuayleTalkFirst1_3_2_1
END

APPEND QUAYLE

IF WEIGHT #-3 ~Global("ANQuayleTroll","GLOBAL",2) !Global("QuayleRaelis","GLOBAL",1) !InMyArea("Aerie") OR(2) Global("Chapter","GLOBAL",%bg2_chapter_2%) Global("Chapter","GLOBAL",%bg2_chapter_3%)~ THEN ANQuayleTalkNoAerie
  SAY @68
IF ~~ THEN EXIT
END

IF WEIGHT #-5 ~Global("ANQuayleTroll","GLOBAL",3) Global("ANQuayleTrollOtkaz","AR0607",1) !Global("QuayleRaelis","GLOBAL",1) InMyArea("Aerie") OR(2) Global("Chapter","GLOBAL",%bg2_chapter_2%) Global("Chapter","GLOBAL",%bg2_chapter_3%)~ THEN ANQuayleReThink
  SAY @69
IF ~InMyArea("Aerie")~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @32 EXTERN QUAYLE ANQuayleTalkFirst2-1 
IF ~~ THEN REPLY @71 EXIT
END

IF ~~ THEN BEGIN ANQuayleTalkFirst1_3
  SAY @18
IF ~~ THEN REPLY @23 EXTERN QUAYLE ANQuayleTalkFirst1_3_1
IF ~InParty("Aerie")~ THEN REPLY @25 EXTERN AERIEJ ANQuayleTalkFirst1_3_2
IF ~!InParty("Aerie")~ THEN REPLY @25 EXTERN ANAERIE ANQuayleTalkFirst1_3_3
IF ~~ THEN REPLY @28 EXTERN QUAYLE ANQuayleTalkFirst1_3_4
IF ~~ THEN DO ~SetGlobal("ANQuayleTrollOtkaz","AR0607",1)~ REPLY @30 EXTERN QUAYLE ANQuayleTalkFirst1_3_5
END

IF ~~ THEN BEGIN ANQuayleTalkFirst2
  SAY @20
IF ~~ THEN REPLY @23 EXTERN QUAYLE ANQuayleTalkFirst1_3_1
IF ~InParty("Aerie")~ THEN REPLY @25 EXTERN AERIEJ ANQuayleTalkFirst1_3_2
IF ~!InParty("Aerie")~ THEN REPLY @25 EXTERN ANAERIE ANQuayleTalkFirst1_3_3
IF ~~ THEN REPLY @28 EXTERN QUAYLE ANQuayleTalkFirst1_3_4
IF ~~ THEN DO ~SetGlobal("ANQuayleTrollOtkaz","AR0607",1)~ REPLY @30 EXTERN QUAYLE ANQuayleTalkFirst1_3_5
END

IF ~~ THEN BEGIN ANQuayleTalkFirst3
  SAY @22
IF ~~ THEN REPLY @23 EXTERN QUAYLE ANQuayleTalkFirst1_3_1
IF ~InParty("Aerie")~ THEN REPLY @25 EXTERN AERIEJ ANQuayleTalkFirst1_3_2
IF ~!InParty("Aerie")~ THEN REPLY @25 EXTERN ANAERIE ANQuayleTalkFirst1_3_3
IF ~~ THEN REPLY @28 EXTERN QUAYLE ANQuayleTalkFirst1_3_4
IF ~~ THEN DO ~SetGlobal("ANQuayleTrollOtkaz","AR0607",1)~ REPLY @30 EXTERN QUAYLE ANQuayleTalkFirst1_3_5
END

IF ~~ THEN BEGIN ANQuayleTalkFirst1_3_1
  SAY @24
IF ~~ THEN REPLY @32 EXTERN QUAYLE ANQuayleTalkFirst2-1
END

IF ~~ THEN BEGIN ANQuayleTalkFirst1_3_4
  SAY @29
IF ~~ THEN REPLY @32 EXTERN QUAYLE ANQuayleTalkFirst2-1
END

IF ~~ THEN BEGIN ANQuayleTalkFirst1_3_5
  SAY @31
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANQuayleTalkFirst1_3_2_1
  SAY @27
IF ~~ THEN REPLY @32 EXTERN QUAYLE ANQuayleTalkFirst2-1
END

IF WEIGHT #-10 ~OR(3) Global("ANTroll","GLOBAL",12) Global("ANTroll","GLOBAL",13) Global("ANTroll","GLOBAL",14)~ THEN BEGIN ANQuayleTalkFinal
  SAY @209
IF ~Global("ANTroll","GLOBAL",12)~ THEN DO ~AddJournalEntry(@1077,QUEST_DONE) GiveGoldForce(3000) AddexperienceParty(10000)~ REPLY @210 GOTO ANQuayleTalkFinal1
IF ~Global("ANTroll","GLOBAL",13)~ THEN DO ~GiveGoldForce(500) AddexperienceParty(5000)~ REPLY @211 GOTO ANQuayleTalkFinal2
IF ~Global("ANTroll","GLOBAL",14)~ THEN DO ~AddJournalEntry(@1080,QUEST_DONE) GiveGoldForce(700) AddexperienceParty(5000)~ REPLY @212 GOTO ANQuayleTalkFinal3
END

IF ~~ THEN BEGIN ANQuayleTalkFinal1
  SAY @213
IF ~~ THEN GOTO ANQuayleTalkFinal4
END

IF ~~ THEN BEGIN ANQuayleTalkFinal2
  SAY @214
IF ~~ THEN GOTO ANQuayleTalkFinal4
END

IF ~~ THEN BEGIN ANQuayleTalkFinal3
  SAY @214
IF ~~ THEN GOTO ANQuayleTalkFinal4
END

IF ~~ THEN BEGIN ANQuayleTalkFinal4
  SAY @215
IF ~Global("ANTroll","GLOBAL",12)~ THEN DO ~SetGlobalTimer("ANSireneTimer","GLOBAL",ONE_DAY) SetGlobal("ANTroll","GLOBAL",15)~ REPLY @216 EXIT
IF ~Global("ANTroll","GLOBAL",13)~ THEN DO ~SetGlobal("ANTroll","GLOBAL",15)~ REPLY @216 EXIT
IF ~Global("ANTroll","GLOBAL",14)~ THEN DO ~SetGlobal("ANTroll","GLOBAL",15)~ REPLY @216 EXIT
END

END

CHAIN QUAYLE ANQuayleTalkFirst2-1
@33
== AERIEJ IF ~InParty("Aerie")~ THEN @34
== ANAERIE IF ~!InParty("Aerie")~ THEN @34
END
IF ~InParty("Aerie")~ THEN REPLY @35 EXTERN AERIEJ ANQuayleTalkFirst2_1
IF ~!InParty("Aerie")~ THEN REPLY @35 EXTERN ANAERIE ANQuayleTalkFirst2_1

CHAIN AERIEJ ANQuayleTalkFirst2_1
@36 
END
IF ~~ THEN EXTERN QUAYLE ANQuayleTalkFirst2_3

CHAIN ANAERIE ANQuayleTalkFirst2_1
@36
END
IF ~~ THEN EXTERN QUAYLE ANQuayleTalkFirst2_3

CHAIN QUAYLE ANQuayleTalkFirst2_3
@37
== AERIEJ IF ~InParty("Aerie")~ THEN @38
== ANAERIE IF ~!InParty("Aerie")~ THEN @38
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @39
END
IF ~~ THEN REPLY @40 EXTERN QUAYLE ANQuayleTalkFirst2_4

CHAIN QUAYLE ANQuayleTalkFirst2_4
@41
== AERIEJ IF ~InParty("Aerie")~ THEN @42
== ANAERIE IF ~!InParty("Aerie")~ THEN @42
== QUAYLE @43 DO ~SetGlobal("ANQuayleTroll","GLOBAL",4)~
END
IF ~~ THEN REPLY @44 EXIT

CHAIN
IF ~Global("ANQuayleTroll","GLOBAL",5) !InParty("7XQUAY") !InParty("QUAYLE")~ THEN PLAYER1 ANTrollCallTalk
@249 DO ~SetGlobal("ANQuayleTroll","GLOBAL",6)~
END
IF ~~ THEN REPLY @46 EXTERN QUAYLE ANTrollCallTalk_1

CHAIN QUAYLE ANTrollCallTalk_1
@47
END
IF ~InParty("Aerie")~ THEN REPLY @48 EXTERN AERIEJ ANTrollCallTalk_1
IF ~!InParty("Aerie")~ THEN REPLY @48 EXTERN ANAERIE ANTrollCallTalk_2

CHAIN AERIEJ ANTrollCallTalk_1
@49 
END
IF ~~ THEN REPLY @50 EXTERN QUAYLE ANTrollCallTalk_3

CHAIN ANAERIE ANTrollCallTalk_2
@49
END
IF ~~ THEN REPLY @50 EXTERN QUAYLE ANTrollCallTalk_3

CHAIN QUAYLE ANTrollCallTalk_3
@51
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @52
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) OR(2) !InParty("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @52
== QUAYLE @53
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @54
END
IF ~~ THEN REPLY @55 EXTERN QUAYLE ANTrollCallTalk_3_1

CHAIN QUAYLE ANTrollCallTalk_3_1
@56
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @57
END
IF ~OR(2) !InParty("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN REPLY @59 EXTERN QUAYLE ANTrollCallTalk_3_2
IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN EXTERN NALIAJ ANTrollCallTalk_3Nalia

APPEND NALIAJ
IF ~~ THEN BEGIN ANTrollCallTalk_3Nalia
  SAY @58
IF ~~ THEN REPLY @59 EXTERN QUAYLE ANTrollCallTalk_3_2
END
END

CHAIN QUAYLE ANTrollCallTalk_3_2
@60
== YOSHJ IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @61
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) OR(2) !InParty("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @61
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) OR(2) !InParty("Jan") StateCheck("Jan",CD_STATE_NOTVALID) OR(2) !InParty("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @61
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @65
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @65
== QUAYLE @62
== AERIEJ IF ~InParty("Aerie")~ THEN @63
== ANAERIE IF ~!InParty("Aerie")~ THEN @63
== QUAYLE @66 DO ~AddJournalEntry(@1070,QUEST) SetGlobal("ANTroll","GLOBAL",1)~
== ANAERIE IF ~!InParty("Aerie")~ THEN @67
END
IF ~~ THEN REPLY @64 EXTERN QUAYLE ANTrollCallTalkEND

CHAIN QUAYLE ANTrollCallTalkEND
@250
EXIT

EXTEND_TOP THUMB 0 
IF ~Global("ANTroll","GLOBAL",1) Global("ANTrollThumb","LOCALS",0)~ THEN DO ~SetGlobal("ANTrollLorio","GLOBAL",1) SetGlobal("ANTrollThumb","LOCALS",1)~ REPLY @72 GOTO ANtrollThumbTalk
END

EXTEND_TOP THUMB 6 
IF ~Global("ANTroll","GLOBAL",1) Global("ANTrollThumb","LOCALS",0)~ THEN DO ~SetGlobal("ANTrollLorio","GLOBAL",1) SetGlobal("ANTrollThumb","LOCALS",1)~ REPLY @72 GOTO ANtrollThumbTalk
END

APPEND THUMB
IF ~~ THEN BEGIN ANtrollThumbTalk
  SAY @73
IF ~~ THEN REPLY @74 EXIT
END
END

EXTEND_TOP DSHOP01 0 
IF ~Global("ANTroll","GLOBAL",1) Global("ANTrollIkert","LOCALS",0)~ THEN DO ~SetGlobal("ANTrollIkert","LOCALS",1)~ REPLY @72 GOTO ANtrollIkertTalk
END

EXTEND_TOP DSHOP01 8 
IF ~Global("ANTroll","GLOBAL",1) Global("ANTrollIkert","LOCALS",0)~ THEN DO ~SetGlobal("ANTrollIkert","LOCALS",1)~ REPLY @72 GOTO ANtrollIkertTalk
END

APPEND DSHOP01
IF ~~ THEN BEGIN ANtrollIkertTalk
  SAY @75
IF ~~ THEN EXIT
END
END

EXTEND_TOP DBEGGAR2 0 
IF ~Global("ANTroll","GLOBAL",1) Global("ANTrollBeggar","LOCALS",0)~ THEN DO ~SetGlobal("ANTrollBeggar","LOCALS",1)~ REPLY @72 GOTO ANtrollBeggarTalk
END

EXTEND_TOP DBEGGAR2 7 
IF ~Global("ANTroll","GLOBAL",1) Global("ANTrollBeggar","LOCALS",0)~ THEN DO ~SetGlobal("ANTrollBeggar","LOCALS",1)~ REPLY @72 GOTO ANtrollBeggarTalk
END

APPEND DBEGGAR2
IF ~~ THEN BEGIN ANtrollBeggarTalk
  SAY @76
IF ~~ THEN EXIT
END
END

EXTEND_BOTTOM DSHOP02 0 
IF ~Global("ANTroll","GLOBAL",1) Global("ANTrollJahaboam","LOCALS",0)~ THEN DO ~SetGlobal("ANTrollJahaboam","LOCALS",1)~ REPLY @72 EXTERN DSHOP02 ANtrollJahaboamTalk
END

APPEND DSHOP02
IF ~~ THEN BEGIN ANtrollJahaboamTalk
  SAY @75
IF ~~ THEN EXIT
END
END


BEGIN ANlorio

IF ~!Global("ANTrollLorio","GLOBAL",1) Global("ANsirene","GLOBAL",0)~ THEN BEGIN ANtrollLorioTalk1
  SAY @77
IF ~~ THEN EXIT
END

CHAIN
IF ~Global("ANTrollLorio","GLOBAL",1)~ THEN ANlorio ANtrollLorioTalk2
@77 DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANTrollLorio","GLOBAL",2)~
END
IF ~OR(2) !InParty("Aerie") StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN REPLY @78 EXTERN ANlorio ANtrollLorioTalk2_1
IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN REPLY @78 EXTERN AERIEJ ANtrollLorioTalk2Aerie

APPEND AERIEJ
IF ~~ THEN BEGIN ANtrollLorioTalk2Aerie
  SAY @79
IF ~~ THEN EXTERN ANlorio ANtrollLorioTalk2_1
END
END

CHAIN ANlorio ANtrollLorioTalk2_1
@80
= @81
END
IF ~OR(2) !InParty("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN REPLY @82 EXTERN ANlorio ANtrollLorioTalk2_2
IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN EXTERN KORGANJ ANtrollLorioTalk2_1Korgan

APPEND KORGANJ
IF ~~ THEN BEGIN ANtrollLorioTalk2_1Korgan
  SAY @82
IF ~~ THEN EXTERN ANlorio ANtrollLorioTalk2_2
END
END

CHAIN ANlorio ANtrollLorioTalk2_2
@83
END
IF ~~ THEN REPLY @84 EXTERN ANlorio ANtrollLorioTalk2_3

CHAIN ANlorio ANtrollLorioTalk2_3
@85
END
IF ~OR(2) !InParty("Aerie") StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN REPLY @87 EXTERN ANlorio ANtrollLorioTalk2_4
IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN EXTERN AERIEJ ANtrollLorioTalk2_3Aerie

APPEND AERIEJ
IF ~~ THEN BEGIN ANtrollLorioTalk2_3Aerie
  SAY @86
IF ~~ THEN EXTERN ANlorio ANtrollLorioTalk2_4
END
END

CHAIN ANlorio ANtrollLorioTalk2_4
@88
END
IF ~~ THEN REPLY @89 EXTERN ANlorio ANtrollLorioTalk2_5

CHAIN ANlorio ANtrollLorioTalk2_5
@90
END
IF ~~ THEN REPLY @91 EXTERN ANlorio ANtrollLorioTalk2_6

CHAIN ANlorio ANtrollLorioTalk2_6
@92
END
IF ~OR(3) !InParty("HaerDalis") !InMyArea("HaerDalis") StateCheck("HaerDalis",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN REPLY @93 EXTERN ANlorio ANtrollLorioTalk2_7
IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN EXTERN HAERDAJ ANtrollLorioTalk2_6Haer
IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN EXTERN ANOMENJ ANtrollLorioTalk2_6Anomen

APPEND ANOMENJ
IF ~~ THEN BEGIN ANtrollLorioTalk2_6Anomen
  SAY @93
IF ~~ THEN EXTERN ANlorio ANtrollLorioTalk2_7
END
END

APPEND HAERDAJ
IF ~~ THEN BEGIN ANtrollLorioTalk2_6Haer
  SAY @93
IF ~~ THEN EXTERN ANlorio ANtrollLorioTalk2_7
END
END

CHAIN ANlorio ANtrollLorioTalk2_7
@94 DO ~AddJournalEntry(@1071,QUEST)~
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @98
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @98
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @96
== VALYGARJ IF ~OR(3) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @96
== IF_FILE_EXISTS NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @97
== IMOEN2J IF ~OR(3) !InParty("Neera") !InMyArea("Neera") StateCheck("Neera",CD_STATE_NOTVALID) InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @97
END
IF ~~ THEN REPLY @95 EXIT

EXTEND_TOP THIEF1 8
IF ~Global("ANTroll","GLOBAL",1) Global("ANTrollSidge","LOCALS",0) Global("PlayerThiefGuild","GLOBAL",0)~ THEN DO ~SetGlobal("ANTroll","GLOBAL",2) SetGlobal("ANTrollSidge","LOCALS",1)~ REPLY @99 GOTO ANtrollSidgeTalk1
IF ~Global("ANTroll","GLOBAL",1) Global("ANTrollSidge","LOCALS",0) !Global("PlayerThiefGuild","GLOBAL",0)~ THEN DO ~SetGlobal("ANTroll","GLOBAL",2) SetGlobal("ANTrollSidge","LOCALS",1)~ REPLY @100 GOTO ANtrollSidgeTalk2
END

EXTEND_TOP THIEF1 0
IF ~Global("ANTroll","GLOBAL",1) Global("ANTrollSidge","LOCALS",0) Global("PlayerThiefGuild","GLOBAL",0)~ THEN DO ~SetGlobal("ANTroll","GLOBAL",2) SetGlobal("ANTrollSidge","LOCALS",1)~ REPLY @99 GOTO ANtrollSidgeTalk1
IF ~Global("ANTroll","GLOBAL",1) Global("ANTrollSidge","LOCALS",0) !Global("PlayerThiefGuild","GLOBAL",0)~ THEN DO ~SetGlobal("ANTroll","GLOBAL",2) SetGlobal("ANTrollSidge","LOCALS",1)~ REPLY @100 GOTO ANtrollSidgeTalk2
END

EXTEND_BOTTOM RENAL 76
IF ~Global("ANTroll","GLOBAL",1)~ THEN REPLY @103 GOTO ANtrollRenalLockpick
END

EXTEND_BOTTOM BMTHIEF 0
IF ~Global("ANTroll","GLOBAL",1)~ THEN REPLY @103 GOTO ANtrollBMTHIEFLockpick
END

EXTEND_BOTTOM BMTHIEF 4
IF ~Global("ANTroll","GLOBAL",1)~ THEN REPLY @103 GOTO ANtrollBMTHIEFLockpick
END

EXTEND_BOTTOM STGUARD1 3
IF ~Global("ANTroll","GLOBAL",1)~ THEN REPLY @103 GOTO ANtrollSTGUARD1Lockpick
END

APPEND RENAL
IF ~~ THEN BEGIN ANtrollRenalLockpick
  SAY @236
IF ~~ THEN EXIT
END
END

APPEND BMTHIEF
IF ~~ THEN BEGIN ANtrollBMTHIEFLockpick
  SAY @237
IF ~~ THEN EXIT
END
END

APPEND STGUARD1
IF ~~ THEN BEGIN ANtrollSTGUARD1Lockpick
  SAY @238
IF ~~ THEN EXIT
END
END

APPEND THIEF1

IF ~~ THEN BEGIN ANtrollSidgeTalk1
  SAY @101
IF ~~ THEN DO ~AddJournalEntry(@1072,QUEST)~ REPLY @103 GOTO ANtrollSidgeTalk3
END

IF ~~ THEN BEGIN ANtrollSidgeTalk2
  SAY @102
IF ~~ THEN DO ~AddJournalEntry(@1072,QUEST)~ REPLY @103 GOTO ANtrollSidgeTalk3
END

IF ~~ THEN BEGIN ANtrollSidgeTalk3
  SAY @104
 =@105 
IF ~~ THEN REPLY @106 EXIT
END

END

EXTEND_TOP CORNEIL 0
IF ~Global("ANTroll","GLOBAL",1) Global("ANTrollCorneil","LOCALS",0)~ THEN DO ~SetGlobal("ANTrollCorneil","LOCALS",1)~ REPLY @107 GOTO ANtrollCorneilTalk1
IF ~Global("ANTroll","GLOBAL",2) Global("ANTrollCorneil","LOCALS",1)~ THEN DO ~SetGlobal("ANTrollCorneil","LOCALS",2)~ REPLY @114 GOTO ANtrollCorneilTalk2
IF ~Global("ANTroll","GLOBAL",2) Global("ANTrollCorneil","LOCALS",0)~ THEN DO ~SetGlobal("ANTrollCorneil","LOCALS",1)~ REPLY @107 GOTO ANtrollCorneilTalk1
END

APPEND CORNEIL

IF ~~ THEN BEGIN ANtrollCorneilTalk1
  SAY @108
IF ~~ THEN REPLY @109 GOTO ANtrollCorneilTalk3
END

IF ~~ THEN BEGIN ANtrollCorneilTalk2
  SAY @115
=@116  
IF ~~ THEN DO ~SetGlobal("ANTroll","GLOBAL",3) AddJournalEntry(@1074,QUEST)~ REPLY @117 GOTO ANtrollCorneilTalk5
END

IF ~~ THEN BEGIN ANtrollCorneilTalk3
  SAY @110
IF ~Global("ANTroll","GLOBAL",1)~ THEN DO ~AddJournalEntry(@1073,QUEST)~ REPLY @112 GOTO ANtrollCorneilTalk4  
IF ~Global("ANTroll","GLOBAL",2)~ THEN REPLY @111 GOTO ANtrollCorneilTalk2
END

IF ~~ THEN BEGIN ANtrollCorneilTalk4
  SAY @113
IF ~~ THEN EXIT 
END

IF ~~ THEN BEGIN ANtrollCorneilTalk5
  SAY @118
IF ~!InParty("Cernd")~ THEN REPLY @119 EXIT
IF ~!InParty("Cernd") InParty("Jaheira")~ THEN EXTERN JAHEIRAJ ANtrollCorneilTalkJah
IF ~InParty("Cernd")~ THEN EXTERN CERNDJ ANtrollCorneilTalkCernd
END

END

APPEND CERNDJ
IF ~~ THEN BEGIN ANtrollCorneilTalkCernd
  SAY @120
IF ~~ THEN EXIT
END
END

APPEND JAHEIRAJ
IF ~~ THEN BEGIN ANtrollCorneilTalkJah
  SAY @120
IF ~~ THEN EXIT
END
END

CHAIN
IF WEIGHT #-4 ~Global("ANTroll","GLOBAL",4)~ THEN HABREGA ANtrollBregaTalk1
@121 DO ~SetGlobal("ANTroll","GLOBAL",5)~
=@122
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @123
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @124
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @125
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @126
END
IF ~OR(3) !InParty("Aerie") !InMyArea("Aerie") StateCheck("Aerie",CD_STATE_NOTVALID) OR(3) !InParty("Korgan") !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN EXIT
IF ~OR(2) InParty("Aerie") InParty("Korgan") OR(2) InMyArea("Korgan") InMyArea("Aerie") OR(2) !StateCheck("Korgan",CD_STATE_NOTVALID) !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN REPLY @127 EXIT

EXTEND_TOP HABREGA 0
IF ~PartyHasItem("ANhead")~ THEN DO ~AddJournalEntry(@1081,QUEST_DONE) TakePartyItem("ANhead") GiveGoldForce(2500) AddexperienceParty(8000)~ REPLY @217 GOTO ANtrollBregaTalk2
END

APPEND HABREGA
IF ~~ THEN BEGIN ANtrollBregaTalk2
  SAY @218
IF ~~ THEN EXIT
END
END

BEGIN ANsartor

IF ~Global("ANTroll","GLOBAL",5)~ THEN BEGIN ANtrollSartoriusTalk
  SAY @128
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANTroll","GLOBAL",6)~ REPLY @129 GOTO ANtrollSartoriusTalk1
END

IF ~~ THEN BEGIN ANtrollSartoriusTalk1
  SAY @130
=@131  
IF ~~ THEN REPLY @132 GOTO ANtrollSartoriusTalk2
END

IF ~~ THEN BEGIN ANtrollSartoriusTalk2
  SAY @133
=@134  
IF ~~ THEN REPLY @135 GOTO ANtrollSartoriusTalk3_1
IF ~~ THEN REPLY @136 GOTO ANtrollSartoriusTalk3_2
IF ~~ THEN REPLY @137 GOTO ANtrollSartoriusTalk3_3
END

IF ~~ THEN BEGIN ANtrollSartoriusTalk3_1
  SAY @138
IF ~~ THEN REPLY @141 GOTO ANtrollSartoriusTalk4_1
END

IF ~~ THEN BEGIN ANtrollSartoriusTalk3_2
  SAY @139
IF ~~ THEN REPLY @141 GOTO ANtrollSartoriusTalk4_1
END

IF ~~ THEN BEGIN ANtrollSartoriusTalk3_3
  SAY @140
IF ~~ THEN REPLY @143 GOTO ANtrollSartoriusTalk4_2
END

IF ~~ THEN BEGIN ANtrollSartoriusTalk4_1
  SAY @142
IF ~~ THEN REPLY @145 GOTO ANtrollSartoriusTalk5_1
IF ~~ THEN REPLY @148 GOTO ANtrollSartoriusTalk5_2
IF ~~ THEN REPLY @151 GOTO ANtrollSartoriusTalk5_3
END

IF ~~ THEN BEGIN ANtrollSartoriusTalk4_2
  SAY @144
IF ~~ THEN REPLY @145 GOTO ANtrollSartoriusTalk5_1
IF ~~ THEN REPLY @148 GOTO ANtrollSartoriusTalk5_2
IF ~~ THEN REPLY @151 GOTO ANtrollSartoriusTalk5_3
END

IF ~~ THEN BEGIN ANtrollSartoriusTalk5_1
  SAY @146
IF ~~ THEN REPLY @147 GOTO ANtrollSartoriusTalk6
END

IF ~~ THEN BEGIN ANtrollSartoriusTalk5_2
  SAY @149
IF ~~ THEN REPLY @150 GOTO ANtrollSartoriusTalk6
END

IF ~~ THEN BEGIN ANtrollSartoriusTalk5_3
  SAY @152
IF ~~ THEN REPLY @153 GOTO ANtrollSartoriusTalk6
END

IF ~Global("ANTroll","GLOBAL",7) !PartyHasItem("ANcook")~ THEN BEGIN ANtrollSartoriusTalkNoCook
  SAY @179
IF ~~ THEN EXIT
END

IF ~Global("ANTroll","GLOBAL",8) PartyHasItem("ANcook") PartyHasItem("ANverev")~ THEN BEGIN ANtrollSartoriusTalkCook
  SAY @167
IF ~~ THEN DO ~SetGlobal("ANTroll","GLOBAL",9)~ EXIT
END

IF ~Global("ANTroll","GLOBAL",8) PartyHasItem("ANcook") !PartyHasItem("ANverev")~ THEN BEGIN ANtrollSartoriusTalkCookVerev
  SAY @182
IF ~~ THEN REPLY @180 GOTO ANtrollSartoriusTalkCookVerev1
END

IF ~Global("ANTroll","GLOBAL",8) PartyHasItem("ANcook") !PartyHasItem("ANverev")~ THEN BEGIN ANtrollSartoriusTalkCookVerev1
  SAY @181
 =@167 
IF ~~ THEN DO ~GiveItemCreate("ANverev",Player1,1,0,0) SetGlobal("ANTroll","GLOBAL",9)~ EXIT
END

CHAIN
IF ~Global("ANTroll","GLOBAL",6)~ THEN ANsartor ANtrollSartoriusTalk6
@154 DO ~SetGlobal("ANTroll","GLOBAL",7)~
=@155
END
IF ~OR(3) !InParty("Jaheira") !InMyArea("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN REPLY @156 EXTERN ANsartor ANtrollSartoriusTalk6_1
IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN EXTERN JAHEIRAJ ANtrollSartoriusTalk6Jah

APPEND JAHEIRAJ
IF ~~ THEN BEGIN ANtrollSartoriusTalk6Jah
  SAY @156
IF ~~ THEN EXTERN ANsartor ANtrollSartoriusTalk6_1
END
END

CHAIN ANsartor ANtrollSartoriusTalk6_1
@157
=@158
END
IF ~~ THEN REPLY @159 EXTERN ANsartor ANtrollSartoriusTalk6_2

CHAIN ANsartor ANtrollSartoriusTalk6_2
@160
END
IF ~~ THEN REPLY @161 EXTERN ANsartor ANtrollSartoriusTalk6_3

CHAIN ANsartor ANtrollSartoriusTalk6_3
@162
END
IF ~~ THEN REPLY @163 EXTERN ANsartor ANtrollSartoriusTalk6_4

CHAIN ANsartor ANtrollSartoriusTalk6_4
@164
=@165 DO ~AddJournalEntry(@1075,QUEST) GiveItemCreate("ANverev",Player1,1,0,0)~
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @168
== ANsartor @166
EXIT

EXTEND_TOP SHOP04 0
IF ~Global("ANTroll","GLOBAL",7)~ THEN REPLY @169 GOTO ANtrollEngeTalk
END

EXTEND_TOP SHOP04 4
IF ~Global("ANTroll","GLOBAL",7)~ THEN REPLY @169 GOTO ANtrollEngeTalk
END

APPEND SHOP04

IF ~~ THEN BEGIN ANtrollEngeTalk
  SAY @170
IF ~PartyGoldGT(4)~ THEN DO ~SetGlobal("ANTroll","GLOBAL",8) GiveItemCreate("ANcook",Player1,1,0,0) AddJournalEntry(@1076,QUEST) TakePartyGold(5)~ REPLY @171 GOTO ANtrollEngeTalk1
IF ~~ THEN DO ~SetGlobal("ANTroll","GLOBAL",8) GiveItemCreate("ANcook",Player1,1,0,0) AddJournalEntry(@1076,QUEST)~ REPLY @172 GOTO ANtrollEngeTalk2
IF ~~ THEN DO ~SetGlobal("ANTroll","GLOBAL",8) GiveItemCreate("ANcook",Player1,1,0,0) AddJournalEntry(@1076,QUEST)~ REPLY @176 GOTO ANtrollEngeTalk3
END

IF ~~ THEN BEGIN ANtrollEngeTalk1
  SAY @175
IF ~~ THEN REPLY @174 EXIT
END

IF ~~ THEN BEGIN ANtrollEngeTalk2
  SAY @173
IF ~~ THEN REPLY @174 EXIT
END

IF ~~ THEN BEGIN ANtrollEngeTalk3
  SAY @177
IF ~~ THEN REPLY @178 EXIT
END

END

CHAIN
IF ~Global("ANTroll","GLOBAL",10) AreaCheck("AN0715")~ THEN PLAYER1 ANtrollCavePlayer1
@183 DO ~SetGlobal("ANTroll","GLOBAL",11)~
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @184
== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @184
== VALYGARJ IF ~OR(2) !InParty("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID) OR(2) !InParty("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @184
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @190
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @190
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @191
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @191
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) OR(2) !InParty("7XTIAX") StateCheck("7XTIAX",CD_STATE_NOTVALID) OR(2) !InParty("O#Tiax") StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @1910
END
IF ~OR(2) !InParty("Aerie") StateCheck("Aerie",CD_STATE_NOTVALID) OR(2) !InParty("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN REPLY @185 EXIT
IF ~OR(2) !InParty("Aerie") StateCheck("Aerie",CD_STATE_NOTVALID) InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN REPLY @185 EXTERN EDWINJ ANtrollCavePlayer1Edwin
IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN REPLY @185 EXTERN AERIEJ ANtrollCavePlayer1Aerie

APPEND AERIEJ
IF ~~ THEN BEGIN ANtrollCavePlayer1Aerie
  SAY @186
IF ~OR(2) !InParty("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN REPLY @187 EXIT  
IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN REPLY @187 EXTERN EDWINJ ANtrollCavePlayer1Edwin
END
END

APPEND EDWINJ
IF ~~ THEN BEGIN ANtrollCavePlayer1Edwin
  SAY @188
IF ~~ THEN REPLY @189 EXIT
END
END

BEGIN ANtroll

IF ~NumTimesTalkedTo(0) Global("ANTroll","GLOBAL",11) OR(2) !InParty("7XQUAY") StateCheck("7XQUAY",CD_STATE_NOTVALID)~ THEN BEGIN ANtrollTalk
  SAY @192
IF ~~ THEN REPLY @194 GOTO ANtrollTalk2 
IF ~~ THEN DO ~SetGlobal("ANTroll","GLOBAL",12) SetGlobal("ANTrollEscape","GLOBAL",2) TakePartyItem("ANcook") TakePartyItem("ANverev")~ REPLY @193 GOTO ANtrollTalk1
IF ~~ THEN DO ~GiveItemCreate("ANhead",Player1,1,0,0) AddJournalEntry(@1078,QUEST) SetGlobal("ANTroll","GLOBAL",13)~ REPLY @195 GOTO ANtrollTalk3
IF ~~ THEN DO ~AddJournalEntry(@1079,QUEST) SetGlobal("ANTroll","GLOBAL",14)~ REPLY @196 GOTO ANtrollTalk4
END

IF ~NumTimesTalkedTo(0) Global("ANTroll","GLOBAL",11) InParty("7XQUAY") !StateCheck("7XQUAY",CD_STATE_NOTVALID)~ THEN BEGIN ANtrollTalkQuayleImp
  SAY @192
IF ~~ THEN EXTERN IF_FILE_EXISTS 7XQUAYJ ANtrollTalkQuayleImp1
END

IF ~~ THEN BEGIN ANtrollTalk1
  SAY @197
=@198  
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANtrollTalk2
  SAY @199
IF ~~ THEN REPLY @205 GOTO ANtrollTalk2_1  
IF ~~ THEN DO ~SetGlobal("ANTroll","GLOBAL",12) SetGlobal("ANTrollEscape","GLOBAL",2) TakePartyItem("ANcook") TakePartyItem("ANverev")~ REPLY @193 GOTO ANtrollTalk1
IF ~~ THEN DO ~GiveItemCreate("ANhead",Player1,1,0,0) AddJournalEntry(@1078,QUEST) SetGlobal("ANTroll","GLOBAL",13)~ REPLY @195 GOTO ANtrollTalk3
IF ~~ THEN DO ~AddJournalEntry(@1079,QUEST) SetGlobal("ANTroll","GLOBAL",14)~ REPLY @196 GOTO ANtrollTalk4
END

IF ~~ THEN BEGIN ANtrollTalk2_1
  SAY @206
IF ~~ THEN REPLY @207 GOTO ANtrollTalk2_2 
IF ~~ THEN DO ~SetGlobal("ANTroll","GLOBAL",12) SetGlobal("ANTrollEscape","GLOBAL",2) TakePartyItem("ANcook") TakePartyItem("ANverev")~ REPLY @193 GOTO ANtrollTalk1
IF ~~ THEN DO ~GiveItemCreate("ANhead",Player1,1,0,0) AddJournalEntry(@1078,QUEST) SetGlobal("ANTroll","GLOBAL",13)~ REPLY @195 GOTO ANtrollTalk3
IF ~~ THEN DO ~AddJournalEntry(@1079,QUEST) SetGlobal("ANTroll","GLOBAL",14)~ REPLY @196 GOTO ANtrollTalk4
END

IF ~~ THEN BEGIN ANtrollTalk2_2
  SAY @208
IF ~~ THEN REPLY @239 GOTO ANtrollTalk2_3   
IF ~~ THEN DO ~SetGlobal("ANTroll","GLOBAL",12) SetGlobal("ANTrollEscape","GLOBAL",2) TakePartyItem("ANcook") TakePartyItem("ANverev")~ REPLY @193 GOTO ANtrollTalk1
IF ~~ THEN DO ~GiveItemCreate("ANhead",Player1,1,0,0) AddJournalEntry(@1078,QUEST) SetGlobal("ANTroll","GLOBAL",13)~ REPLY @195 GOTO ANtrollTalk3
IF ~~ THEN DO ~AddJournalEntry(@1079,QUEST) SetGlobal("ANTroll","GLOBAL",14)~ REPLY @196 GOTO ANtrollTalk4
END

IF ~~ THEN BEGIN ANtrollTalk2_3
  SAY @240
IF ~~ THEN REPLY @241 GOTO ANtrollTalk2_4   
IF ~~ THEN DO ~SetGlobal("ANTroll","GLOBAL",12) SetGlobal("ANTrollEscape","GLOBAL",2) TakePartyItem("ANcook") TakePartyItem("ANverev")~ REPLY @193 GOTO ANtrollTalk1
IF ~~ THEN DO ~GiveItemCreate("ANhead",Player1,1,0,0) AddJournalEntry(@1078,QUEST) SetGlobal("ANTroll","GLOBAL",13)~ REPLY @195 GOTO ANtrollTalk3
IF ~~ THEN DO ~AddJournalEntry(@1079,QUEST) SetGlobal("ANTroll","GLOBAL",14)~ REPLY @196 GOTO ANtrollTalk4
END

IF ~~ THEN BEGIN ANtrollTalk2_4
  SAY @242
IF ~~ THEN REPLY @243 GOTO ANtrollTalk2_5   
IF ~~ THEN DO ~SetGlobal("ANTroll","GLOBAL",12) SetGlobal("ANTrollEscape","GLOBAL",2) TakePartyItem("ANcook") TakePartyItem("ANverev")~ REPLY @193 GOTO ANtrollTalk1
IF ~~ THEN DO ~GiveItemCreate("ANhead",Player1,1,0,0) AddJournalEntry(@1078,QUEST) SetGlobal("ANTroll","GLOBAL",13)~ REPLY @195 GOTO ANtrollTalk3
IF ~~ THEN DO ~AddJournalEntry(@1079,QUEST) SetGlobal("ANTroll","GLOBAL",14)~ REPLY @196 GOTO ANtrollTalk4
END

IF ~~ THEN BEGIN ANtrollTalk3
  SAY @204
IF ~OR(3) !InParty("Aerie") !InMyArea("Aerie") StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN EXIT
IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN EXTERN AERIEJ ANtrollBattleAerie
IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) OR(3) !InParty("Aerie") !InMyArea("Aerie") StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN EXTERN KORGANJ ANtrollBattleKorgan
END

IF ~~ THEN BEGIN ANtrollTalk4
  SAY @203
IF ~~ THEN EXIT
END


CHAIN ANtroll ANtrollTalk2_5
@244
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @245
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @245
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @246
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @247
== CERNDJ IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @248
END  
IF ~~ THEN DO ~SetGlobal("ANTroll","GLOBAL",12) SetGlobal("ANTrollEscape","GLOBAL",2) TakePartyItem("ANcook") TakePartyItem("ANverev")~ REPLY @193 GOTO ANtrollTalk1
IF ~~ THEN DO ~GiveItemCreate("ANhead",Player1,1,0,0) AddJournalEntry(@1078,QUEST) SetGlobal("ANTroll","GLOBAL",13)~ REPLY @195 GOTO ANtrollTalk3
IF ~~ THEN DO ~AddJournalEntry(@1079,QUEST) SetGlobal("ANTroll","GLOBAL",14)~ REPLY @196 GOTO ANtrollTalk4


APPEND AERIEJ
IF ~~ THEN BEGIN ANtrollBattleAerie
  SAY @200
IF ~OR(3) !InParty("Korgan") !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN DO ~ChangeAIScript("",DEFAULT) LeaveParty() EscapeArea()~ EXIT
IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN DO ~ChangeAIScript("",DEFAULT) LeaveParty() EscapeArea()~ EXTERN KORGANJ ANtrollBattleKorgan1
END
END

APPEND KORGANJ
IF ~~ THEN BEGIN ANtrollBattleKorgan
  SAY @202
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANtrollBattleKorgan1
  SAY @201
IF ~~ THEN EXIT
END
END

APPEND IF_FILE_EXISTS 7XQUAYJ
IF ~~ THEN BEGIN ANtrollTalkQuayleImp1
  SAY @235
IF ~~ THEN REPLY @194 EXTERN ANtroll ANtrollTalk2  
IF ~~ THEN DO ~SetGlobal("ANTroll","GLOBAL",12) SetGlobal("ANTrollEscape","GLOBAL",2) TakePartyItem("ANcook") TakePartyItem("ANverev")~ REPLY @193 EXTERN ANtroll ANtrollTalk1
IF ~~ THEN DO ~GiveItemCreate("ANhead",Player1,1,0,0) AddJournalEntry(@1078,QUEST) SetGlobal("ANTroll","GLOBAL",13)~ REPLY @195 EXTERN ANtroll ANtrollTalk3
IF ~~ THEN DO ~AddJournalEntry(@1079,QUEST) SetGlobal("ANTroll","GLOBAL",14)~ REPLY @196 EXTERN ANtroll ANtrollTalk4
END
END