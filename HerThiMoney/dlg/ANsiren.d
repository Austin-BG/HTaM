ADD_TRANS_ACTION MURCRAG BEGIN 0 END BEGIN END ~SetGlobal("ANCragmoonTalk","GLOBAL",1)~

APPEND PLAYER1

IF ~Global("ANsirene","GLOBAL",1)~ BEGIN  ANsirenePlayer1
  SAY @0
IF ~~ THEN DO ~SetGlobal("ANsirene","GLOBAL",2) AddJournalEntry(@1082,QUEST)~ REPLY @1 EXIT
IF ~~ THEN DO ~SetGlobal("ANsirene","GLOBAL",99)~ REPLY @2 EXIT
END

IF ~Global("ANsirene","GLOBAL",4) Global("ANsireneTalk","AR0700",1)~ BEGIN ANSirenePlayer1Talk
  SAY @21
IF ~OR(3) HaveSpellParty("CLERIC_KNOW_ALIGNMENT") HaveSpellParty("WIZARD_KNOW_ALIGNMENT") PartyHasItem("SCRL92")~ THEN DO ~SetGlobal("ANsirene","GLOBAL",6)~ REPLY @22 EXTERN ANtroll ANsireneKnowAlignment
IF ~OR(3) HaveSpellParty("CLERIC_TRUE_SIGHT") HaveSpellParty("WIZARD_TRUE_SIGHT") PartyHasItem("SCRL7M")~ THEN DO ~SetGlobal("ANsirene","GLOBAL",7)~ REPLY @23 EXTERN ANtroll ANsireneTrueSeeing
IF ~!HaveSpellParty("CLERIC_KNOW_ALIGNMENT") !HaveSpellParty("WIZARD_KNOW_ALIGNMENT") !PartyHasItem("SCRL92") !HaveSpellParty("CLERIC_TRUE_SIGHT") !PartyHasItem("SCRL7M") !HaveSpellParty("WIZARD_TRUE_SIGHT")~ THEN DO ~SetGlobal("ANsirene","GLOBAL",5)~ REPLY @24 EXIT
END

IF ~~ BEGIN ANCragmoonMyself
  SAY @100
IF ~~ THEN REPLY @101 EXTERN MURCRAG ANCragmoonUbedit
IF ~~ THEN REPLY @102 EXTERN MURCRAG ANCragmoonUkrast
IF ~!Global("ANModBad","GLOBAL",1)~ THEN DO ~SetGlobal("ANsirene","GLOBAL",13) AddJournalEntry(@1088,QUEST)~ REPLY @103 EXIT
END

IF ~~ BEGIN ANCragmoonScroll
  SAY @111
IF ~~ THEN DO ~SetGlobal("ANsirene","GLOBAL",18)~ EXIT
END

IF ~~ BEGIN ANCragmoonAfterBattleScroll1
  SAY @136
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANCragmoonAfterBattleScroll2
  SAY @137
IF ~~ THEN EXIT
END

END

CHAIN
IF ~Global("ANsirene","GLOBAL",24)~ THEN PLAYER1 ANCragmoonAfterBattleScroll
@133
== KORGANJ IF ~InParty("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @200
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) InParty("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @206
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) OR(2) !InParty("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @200
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @207
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @208
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) OR(2) !InParty("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @208
END
IF ~~ THEN DO ~SetGlobal("ANsirene","GLOBAL",30) AddJournalEntry(@1091,QUEST)~ REPLY @134 EXTERN PLAYER1 ANCragmoonAfterBattleScroll1
IF ~~ THEN DO ~SetGlobalTimer("ANsireneDeathTimer","GLOBAL",SEVEN_DAYS) AddJournalEntry(@1096,QUEST_DONE) AddexperienceParty(10000) SetGlobal("ANsirene","GLOBAL",99)~ REPLY @135 EXTERN PLAYER1 ANCragmoonAfterBattleScroll2


// Troll
APPEND ANtroll

IF ~Global("ANsirene","GLOBAL",5)~ BEGIN  ANsirenePlayer1Spell
  SAY @25
IF ~OR(3) HaveSpellParty("CLERIC_KNOW_ALIGNMENT") HaveSpellParty("WIZARD_KNOW_ALIGNMENT") PartyHasItem("SCRL92")~ THEN DO ~SetGlobal("ANsirene","GLOBAL",6)~ REPLY @22 EXTERN ANtroll ANsireneKnowAlignment
IF ~OR(3) HaveSpellParty("CLERIC_TRUE_SIGHT") HaveSpellParty("WIZARD_TRUE_SIGHT") PartyHasItem("SCRL7M")~ THEN DO ~SetGlobal("ANsirene","GLOBAL",7)~ REPLY @23 EXTERN ANtroll ANsireneTrueSeeing
IF ~!HaveSpellParty("CLERIC_KNOW_ALIGNMENT") !HaveSpellParty("WIZARD_KNOW_ALIGNMENT") !PartyHasItem("SCRL92") !HaveSpellParty("CLERIC_TRUE_SIGHT") !PartyHasItem("SCRL7M") !HaveSpellParty("WIZARD_TRUE_SIGHT")~ THEN REPLY @24 EXIT
END

IF ~~ BEGIN  ANsireneKnowAlignment
  SAY @26
 =@27 
=@139
IF ~~ THEN DO ~SetGlobal("ANsirene","GLOBAL",8) AddJournalEntry(@1084,QUEST)~ EXIT
END

IF ~~ BEGIN  ANsireneTrueSeeing
  SAY @28
=@139
IF ~~ THEN DO ~SetGlobal("ANsirene","GLOBAL",8) AddJournalEntry(@1084,QUEST)~ EXIT
END

IF ~Global("ANsirene","GLOBAL",8)~ BEGIN ANsireneLook
  SAY @29
IF ~~ THEN EXIT
END

END

// Lorio
CHAIN
IF ~Global("ANsirene","GLOBAL",2) Global("ANsireneTalk","AR0700",1)~ THEN PLAYER1 SireneLorioTalk
@3 DO ~SetGlobal("ANsirene","GLOBAL",3)~
== ANlorio @4
END
IF ~Global("ANTrollLorio","GLOBAL",2)~ THEN REPLY @5 EXTERN ANlorio SireneLorioTalk_1
IF ~!Global("ANTrollLorio","GLOBAL",2)~ THEN REPLY @6 EXTERN ANlorio SireneLorioTalk_2

CHAIN ANlorio SireneLorioTalk_1
@7
EXTERN ANlorio SireneLorioTalk_3

CHAIN ANlorio SireneLorioTalk_2
@8
EXTERN ANlorio SireneLorioTalk_3

CHAIN ANlorio SireneLorioTalk_3
@9
END
IF ~~ THEN REPLY @10 EXTERN ANlorio SireneLorioTalk_4

CHAIN ANlorio SireneLorioTalk_4
@11
= @12
END
IF ~OR(2) !InParty("Jan") StateCheck("Jan",CD_STATE_NOTVALID)~ THEN EXTERN ANlorio SireneLorioTalk_5
IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN EXTERN JANJ SireneLorioTalk_4Jan

APPEND JANJ
IF ~~ BEGIN SireneLorioTalk_4Jan
  SAY @193
IF ~OR(2) !InParty("Cernd") StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN REPLY @194 GOTO SireneLorioTalk_4Jan1
IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN EXTERN CERNDJ SireneLorioTalk_4Cernd
END

IF ~~ BEGIN SireneLorioTalk_4Jan1
  SAY @195
IF ~~ THEN EXTERN ANlorio SireneLorioTalk_5
END
END

APPEND CERNDJ
IF ~~ BEGIN SireneLorioTalk_4Cernd
  SAY @194
IF ~~ THEN EXTERN JANJ SireneLorioTalk_4Jan1
END
END

CHAIN ANlorio SireneLorioTalk_5
@14
= @15
END
IF ~Global("ANCragmoonTalk","GLOBAL",0) Global("TalkedToCragmoon","GLOBAL",0)~ THEN REPLY @16 EXTERN ANlorio SireneLorioTalk_6
IF ~OR(2) !Global("ANCragmoonTalk","GLOBAL",0) !Global("TalkedToCragmoon","GLOBAL",0)~ THEN REPLY @17 EXTERN ANlorio SireneLorioTalk_7


CHAIN ANlorio SireneLorioTalk_6
@18
END
IF ~~ THEN EXTERN ANlorio SireneLorioTalk_8

CHAIN ANlorio SireneLorioTalk_7
@19
END
IF ~~ THEN EXTERN ANlorio SireneLorioTalk_8

CHAIN ANlorio SireneLorioTalk_8
@20 DO ~AddJournalEntry(@1083,QUEST) EscapeArea()~
== IF_FILE_EXISTS 7XGarJ IF ~InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @201
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) OR(2) !InParty("7XGAR") StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @201
EXIT

CHAIN
IF ~Global("ANsirene","GLOBAL",22)~ THEN ANlorio LorioCragmoonTalk
@129 DO ~SetGlobal("ANsirene","GLOBAL",23)~
== MURCRAG @130
== ANlorio @131
EXIT

APPEND ANlorio

IF ~Global("ANsirene","GLOBAL",20)~ BEGIN ANLorioSAM
  SAY @138
IF ~~ THEN DO ~SetGlobal("ANsirene","GLOBAL",21)~ REPLY @127 GOTO ANLorioSAM1
END

IF ~~ BEGIN ANLorioSAM1
  SAY @128
IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF WEIGHT #-11 ~Global("ANlorioPrison","GLOBAL",1)~ BEGIN ANLorioPrisonTalk
  SAY @164
IF ~Global("ANsirene","GLOBAL",35)~ THEN DO ~AddJournalEntry(@1094,QUEST_DONE)~ REPLY @165 GOTO ANLorioPrisonTalk1
IF ~~ THEN REPLY @166 GOTO ANLorioPrisonTalk2
IF ~~ THEN REPLY @168 GOTO ANLorioPrisonTalk3
END

IF ~~ BEGIN ANLorioPrisonTalk1
  SAY @170
IF ~~ THEN REPLY @171 GOTO ANLorioPrisonTalkCragmoon
IF ~~ THEN REPLY @172 GOTO ANLorioPrisonTalkSirene
IF ~~ THEN REPLY @179 GOTO ANLorioPrisonTalkSireneWait
END

IF ~~ BEGIN ANLorioPrisonTalk2
  SAY @167
IF ~~ THEN DO ~SetGlobal("ANlorioPrison","GLOBAL",2)~ EXIT
END

IF ~~ BEGIN ANLorioPrisonTalk3
  SAY @169
IF ~~ THEN DO ~SetGlobal("ANlorioPrison","GLOBAL",2)~ EXIT
END

IF ~Global("ANlorioPrison","GLOBAL",2)~ BEGIN ANLorioPrisonTalkRepeat1
  SAY @167
IF ~Global("ANsirene","GLOBAL",35)~ THEN REPLY @165 GOTO ANLorioPrisonTalk1
IF ~~ THEN REPLY @168 GOTO ANLorioPrisonTalk3
END

IF ~Global("ANlorioPrison","GLOBAL",3)~ BEGIN ANLorioPrisonTalkRepeat2
  SAY @192
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANLorioPrisonTalkSireneWait
  SAY @180
IF ~~ THEN DO ~SetGlobal("ANlorioPrison","GLOBAL",9)~ EXIT
END

IF ~~ BEGIN ANLorioPrisonTalkCragmoon
  SAY @173
IF ~~ THEN DO ~SetGlobal("ANlorioPrison","GLOBAL",9)~ REPLY @174 EXIT
END

IF ~~ BEGIN ANLorioPrisonTalkSirene
  SAY @175
IF ~~ THEN DO ~SetGlobal("ANlorioPrison","GLOBAL",3)~ REPLY @176 EXIT
END

IF ~Global("ANlorioPrison","GLOBAL",9)~ BEGIN ANLorioPrisonTalkRepeat1
  SAY @167
IF ~~ THEN EXIT
END

END

CHAIN
IF WEIGHT #-20 ~Global("ANlorioPrison","GLOBAL",5)~ THEN ANlorio ANLorioPrisonFreedom
@177 DO ~SetGlobal("ANlorioPrison","GLOBAL",6) AddJournalEntry(@1097,QUEST) EscapeArea()~
== IF_FILE_EXISTS 7XGarJ IF ~InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @202
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @203
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @204
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @205
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @204
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @205
EXIT

// Cragmoon
EXTEND_TOP MURCRAG 0 
IF ~Global("ANsirene","GLOBAL",8)~ THEN DO ~SetGlobal("ANsirene","GLOBAL",9)~ REPLY @30 GOTO ANCragmoonTalk
END

APPEND MURCRAG

IF ~~ BEGIN ANCragmoonTalk
  SAY @31
IF ~~ THEN REPLY @32 GOTO ANCragmoonTalk1
END

IF ~~ BEGIN ANCragmoonTalk1
  SAY @33
IF ~~ THEN REPLY @34 GOTO ANCragmoonTalk2
IF ~~ THEN REPLY @35 GOTO ANCragmoonTalkEnd1
IF ~~ THEN REPLY @36 GOTO ANCragmoonTalkEnd2
END

IF ~~ BEGIN ANCragmoonTalk2
  SAY @37
IF ~~ THEN REPLY @38 GOTO ANCragmoonTalkEnd3
END

IF ~~ BEGIN ANCragmoonTalkEnd3
  SAY @39
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANCragmoonTalkEnd1
  SAY @40
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANCragmoonTalkEnd2
  SAY @41
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANCragmoonUbedit
  SAY @104
IF ~CheckStatGT(Player1,14,CHR)~ THEN DO ~SetGlobal("ANUbedit","LOCALS",1) AddJournalEntry(@1089,QUEST)~ REPLY @105 GOTO ANCragmoonUbedit1
IF ~~ THEN DO ~SetGlobal("ANUbedit","LOCALS",1)~ REPLY @106 GOTO ANCragmoonUbedit2
IF ~~ THEN DO ~SetGlobal("ANUbedit","LOCALS",1)~ REPLY @107 GOTO ANCragmoonUbedit2
END

IF ~~ BEGIN ANCragmoonUbedit1
  SAY @113
IF ~~ THEN REPLY @114 GOTO ANCragmoonUbedit1_1
END

IF ~~ BEGIN ANCragmoonUbedit1_1
  SAY @115
IF ~~ THEN DO ~GiveItemCreate("ANscrll2",Player1,1,0,0)~ EXTERN PLAYER1 ANCragmoonScroll
END

IF ~~ BEGIN ANCragmoonUbedit2
  SAY @108
IF ~!Global("ANUkrast","LOCALS",1)~ THEN DO ~SetGlobal("ANUkrast","LOCALS",1)~ REPLY @102 GOTO ANCragmoonUkrast
IF ~!Global("ANModBad","GLOBAL",1)~ THEN DO ~SetGlobal("ANsirene","GLOBAL",13)~ REPLY @103 EXIT
IF ~~ THEN DO ~SetGlobal("ANsirene","GLOBAL",20) AddJournalEntry(@1090,QUEST)~ REPLY @112 EXIT
END

IF ~~ BEGIN ANCragmoonUkrast
  SAY @110
IF ~CheckStatGT(Myself,80,PICKPOCKET)~ THEN DO ~GiveItemCreate("ANscrll2",Player1,1,0,0) SetGlobal("ANscrollSteal","GLOBAL",1) AddJournalEntry(@1089,QUEST)~ EXTERN PLAYER1 ANCragmoonScroll
IF ~!CheckStatGT(Myself,80,PICKPOCKET)~ THEN GOTO ANCragmoonUkrastNo
END

IF ~~ BEGIN ANCragmoonUkrastNo
  SAY @109
IF ~!Global("ANUbedit","LOCALS",1)~ THEN DO ~SetGlobal("ANUbedit","LOCALS",1)~ REPLY @101 GOTO ANCragmoonUbedit
IF ~!Global("ANModBad","GLOBAL",1)~ THEN DO ~SetGlobal("ANsirene","GLOBAL",13)~ REPLY @103 EXIT
IF ~~ THEN DO ~SetGlobal("ANsirene","GLOBAL",20) AddJournalEntry(@1090,QUEST)~ REPLY @112 EXIT
END

IF WEIGHT #-10 ~Global("ANsirene","GLOBAL",24)~ BEGIN ANCragmoonAfterBattle
  SAY @132
IF ~~ THEN DO ~GiveItemCreate("ANscrll2",Player1,1,0,0)~ EXTERN PLAYER1 ANCragmoonAfterBattleScroll
END

END

CHAIN
IF WEIGHT #-5 ~Global("ANsirene","GLOBAL",11) !Global("ANModBad","GLOBAL",1)~ THEN MURCRAG ANCragmoonTwoTalkMod
@58 DO ~SetGlobal("ANsirene","GLOBAL",12)~
END
IF ~~ THEN REPLY @59 EXTERN MURCRAG ANCragmoonTwoTalkMod_1

CHAIN MURCRAG ANCragmoonTwoTalkMod_1
@60
END
IF ~~ THEN REPLY @61 EXTERN MURCRAG ANCragmoonTwoTalkMod_2

CHAIN MURCRAG ANCragmoonTwoTalkMod_2
@62
= @63
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @64
END
IF ~OR(2) !InParty("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN REPLY @64 EXTERN MURCRAG ANCragmoonTwoTalkMod_3
IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN EXTERN VALYGARJ ANCragmoonTwoTalkMod_2Valy

APPEND VALYGARJ
IF ~~ BEGIN ANCragmoonTwoTalkMod_2Valy
  SAY @64
IF ~~ THEN EXTERN MURCRAG ANCragmoonTwoTalkMod_3
END
END

CHAIN MURCRAG ANCragmoonTwoTalkMod_3
@65
END
IF ~~ THEN REPLY @66 EXTERN MURCRAG ANCragmoonTwoTalkMod_4

CHAIN MURCRAG ANCragmoonTwoTalkMod_4
@67
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @80
== MURCRAG IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @81
END
IF ~~ THEN REPLY @68 EXTERN MURCRAG ANCragmoonTwoTalkMod_5

CHAIN MURCRAG ANCragmoonTwoTalkMod_5
@69
= @70
END
IF ~~ THEN REPLY @71 EXTERN MURCRAG ANCragmoonTwoTalkMod_6

CHAIN MURCRAG ANCragmoonTwoTalkMod_6
@72
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @196
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @197
== MURCRAG IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @198
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @199
END
IF ~~ THEN REPLY @73 EXTERN MURCRAG ANCragmoonTwoTalkMod_7

CHAIN MURCRAG ANCragmoonTwoTalkMod_7
@74
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @79
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @79
END
IF ~~ THEN REPLY @75 EXTERN MURCRAG ANCragmoonTwoTalkMod_8

CHAIN MURCRAG ANCragmoonTwoTalkMod_8
@76
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @77
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @78
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @82
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @83
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @85
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @84
== PLAYER1 @86
END
IF ~~ THEN REPLY @87 EXTERN PLAYER1 ANCragmoonMyself
IF ~~ THEN DO ~SetGlobal("ANsirene","GLOBAL",20) AddJournalEntry(@1087,QUEST)~ REPLY @88 EXIT

CHAIN
IF WEIGHT #-5 ~Global("ANsirene","GLOBAL",11) Global("ANModBad","GLOBAL",1)~ THEN MURCRAG ANCragmoonTwoTalknoMod
@89 DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANsirene","GLOBAL",12)~
END
IF ~~ THEN REPLY @90 EXTERN MURCRAG ANCragmoonTwoTalknoMod_1

CHAIN MURCRAG ANCragmoonTwoTalknoMod_1
@91
END
IF ~!Class(Player1,THIEF_ALL)~ THEN REPLY @92 EXTERN MURCRAG ANCragmoonTwoTalknoMod_2
IF ~Class(Player1,THIEF_ALL)~ THEN REPLY @93 EXTERN MURCRAG ANCragmoonTwoTalknoMod_2


CHAIN MURCRAG ANCragmoonTwoTalknoMod_2
@94
END
IF ~~ THEN REPLY @95 EXTERN MURCRAG ANCragmoonTwoTalknoMod_3

CHAIN MURCRAG ANCragmoonTwoTalknoMod_3
@62
=@63
END
IF ~~ THEN REPLY @96 EXTERN MURCRAG ANCragmoonTwoTalknoMod_4

CHAIN MURCRAG ANCragmoonTwoTalknoMod_4
@97
END
IF ~~ THEN REPLY @98 EXTERN MURCRAG ANCragmoonTwoTalknoMod_5

CHAIN MURCRAG ANCragmoonTwoTalknoMod_5
@99
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @80
== MURCRAG IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @81
END
IF ~~ THEN REPLY @68 EXTERN MURCRAG ANCragmoonTwoTalknoMod_6

CHAIN MURCRAG ANCragmoonTwoTalknoMod_6
@69
= @70
END
IF ~~ THEN REPLY @71 EXTERN MURCRAG ANCragmoonTwoTalknoMod_7

CHAIN MURCRAG ANCragmoonTwoTalknoMod_7
@72
END
IF ~~ THEN REPLY @73 EXTERN MURCRAG ANCragmoonTwoTalknoMod_8

CHAIN MURCRAG ANCragmoonTwoTalknoMod_8
@74
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @79
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @79
END
IF ~~ THEN REPLY @75 EXTERN MURCRAG ANCragmoonTwoTalknoMod_9

CHAIN MURCRAG ANCragmoonTwoTalknoMod_9
@76
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @77
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @78
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @82
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @83
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @85
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @84
== PLAYER1 @86
END
IF ~~ THEN REPLY @87 EXTERN PLAYER1 ANCragmoonMyself
IF ~~ THEN DO ~SetGlobal("ANsirene","GLOBAL",20)~ REPLY @88 EXIT

CHAIN
IF WEIGHT #-7 ~Global("ANscrollSteal","GLOBAL",1)~ THEN MURCRAG ANCragmoonScrollSteal
@125 DO ~SetGlobal("ANscrollSteal","GLOBAL",2)~
== MURCRAG @126
EXIT

// Mod

BEGIN ANmod

IF ~Global("ANsirene","GLOBAL",10)~ BEGIN ANModTalk
  SAY @42
IF ~~ THEN REPLY @43 GOTO ANModTalk1
IF ~~ THEN REPLY @44 GOTO ANModTalk2
IF ~~ THEN DO ~SetGlobal("ANsirene","GLOBAL",11) SetGlobal("ANModBad","GLOBAL",1)~ REPLY @45 GOTO ANModTalkBAD
END

IF ~~ BEGIN ANModTalk1
  SAY @46
IF ~~ THEN REPLY @47 GOTO ANModTalkGOOD
IF ~~ THEN DO ~SetGlobal("ANsirene","GLOBAL",11) SetGlobal("ANModBad","GLOBAL",1)~ REPLY @48 GOTO ANModTalkBAD
END

IF ~~ BEGIN ANModTalk2
  SAY @50
IF ~~ THEN GOTO ANModTalkGOOD
END

IF ~~ BEGIN ANModTalkBAD
  SAY @49
IF ~~ THEN DO ~AddJournalEntry(@1085,QUEST) EscapeArea()~ EXIT
END

IF ~~ BEGIN ANModTalkGOOD
  SAY @51
=@52  
IF ~~ THEN DO ~SetGlobal("ANsirene","GLOBAL",11) AddJournalEntry(@1086,QUEST) TakePartyGold(10)~ REPLY @53 GOTO ANModTalkGOOD1
IF ~~ THEN DO ~SetGlobal("ANsirene","GLOBAL",11) TakePartyGold(5) SetGlobal("ANModBad","GLOBAL",1) AddJournalEntry(@1086,QUEST)~ REPLY @55 GOTO ANModTalkGOOD2
IF ~~ THEN DO ~SetGlobal("ANsirene","GLOBAL",11) SetGlobal("ANModBad","GLOBAL",1)~ REPLY @57 GOTO ANModTalkBAD
END

IF ~~ BEGIN ANModTalkGOOD1
  SAY @54
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ BEGIN ANModTalkGOOD2
  SAY @56
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~Global("ANsirene","GLOBAL",13)~ BEGIN ANModTalkScroll
  SAY @116
IF ~~ THEN REPLY @117 GOTO ANModTalkScroll1
END

IF ~~ BEGIN ANModTalkScroll1
  SAY @118
IF ~~ THEN DO ~SetGlobal("ANsirene","GLOBAL",14)~ REPLY @119 GOTO ANModTalkScroll2
END

IF ~~ BEGIN ANModTalkScroll2
  SAY @120
IF ~~ THEN EXIT
END

IF ~Global("ANsirene","GLOBAL",15)~ BEGIN ANModTalkScrollGot
  SAY @122
IF ~~ THEN DO ~TakePartyGold(10) GiveItemCreate("ANscrll2",Player1,1,0,0) SetGlobal("ANscrollSteal","GLOBAL",1) AddJournalEntry(@1095,QUEST)~ REPLY @123 GOTO ANModTalkScrollGot1
END

IF ~~ BEGIN ANModTalkScrollGot1
  SAY @124
IF ~~ THEN DO ~EscapeArea()~ EXTERN PLAYER1 ANCragmoonScroll
END


BEGIN ANsirene

CHAIN
IF ~Global("ANsirene","GLOBAL",32)~ THEN ANsirene ANsirene1FinalTalk1
@140 DO ~SetGlobal("ANsirene","GLOBAL",33)~
== QUAYLE @141
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @142
== QUAYLE @143
EXIT

CHAIN
IF ~Global("ANsirene","GLOBAL",34)~ THEN ANsirene ANsirene1FinalTalk2
@144 DO ~SetGlobal("ANsirene","GLOBAL",35) AddJournalEntry(@1092,QUEST)~
END
IF ~~ THEN REPLY @145 EXTERN ANsirene ANsirene1FinalTalk2_1

CHAIN ANsirene ANsirene1FinalTalk2_1
@146 DO ~GiveItemCreate("AMUL11",Player1,1,0,0) EscapeArea()~
== QUAYLE @147 DO ~EscapeArea()~
EXIT

CHAIN
IF ~Global("ANsirene","GLOBAL",61)~ THEN ANsirene ANsirene2FinalTalk1
@140 DO ~SetGlobal("ANsirene","GLOBAL",62)~
== QUAYLE @141
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @142
== QUAYLE @143
EXIT

CHAIN
IF ~Global("ANsirene","GLOBAL",63)~ THEN ANsirene ANsirene2FinalTalk2
@144 DO ~SetGlobal("ANsirene","GLOBAL",64)~
== QUAYLE @148
== ANlorio @149
== ANsirene @150
== ANlorio @151
== ANsirene @152
=@153
== ANlorio @154
== ANsirene @155
== ANlorio @156
== ANsirene @157
END
IF ~~ THEN REPLY @158 EXTERN ANlorio ANsirene2FinalTalk2_1

CHAIN ANlorio ANsirene2FinalTalk2_1
@159 DO ~GiveItemCreate("SW1H42",Player1,1,0,0)~
== ANsirene IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @160 DO ~GiveItemCreate("AMUL11","Aerie",1,0,0)~
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @161
== ANsirene @162 DO ~AddJournalEntry(@1093,QUEST_DONE) EscapeArea()~
== ANlorio @163 DO ~EscapeArea()~
== QUAYLE @147 DO ~EscapeArea()~
== IF_FILE_EXISTS 7XGarJ IF ~InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @202
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @203
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @204
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @205
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @204
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @205
EXIT

EXTEND_TOP PRISONK1 0 
IF ~Global("ANlorioPrison","GLOBAL",3)~ THEN REPLY @181 GOTO ANlorioPrisoned1
IF ~Global("ANlorioPrison","GLOBAL",3)~ THEN REPLY @182 GOTO ANlorioPrisoned2
END

APPEND PRISONK1

IF ~~ BEGIN ANlorioPrisoned1
  SAY @183
IF ~PartyGoldGT(99)~ THEN DO ~TakePartyGold(100) SetGlobal("ANlorioPrison","GLOBAL",4)~ REPLY @185 GOTO ANlorioPrisoned1_1
IF ~~ THEN DO ~SetGlobal("ANlorioPrison","GLOBAL",8)~ REPLY @186 GOTO ANlorioPrisoned1_2
IF ~~ THEN DO ~SetGlobal("ANlorioPrison","GLOBAL",9)~ REPLY @187 GOTO ANlorioPrisoned1_3
END

IF ~~ BEGIN ANlorioPrisoned2
  SAY @184
IF ~PartyGoldGT(99)~ THEN DO ~TakePartyGold(100) SetGlobal("ANlorioPrison","GLOBAL",4)~ REPLY @185 GOTO ANlorioPrisoned1_1
IF ~~ THEN DO ~SetGlobal("ANlorioPrison","GLOBAL",8)~ REPLY @186 GOTO ANlorioPrisoned1_2
IF ~~ THEN DO ~SetGlobal("ANlorioPrison","GLOBAL",9)~ REPLY @187 GOTO ANlorioPrisoned1_3
END

IF ~~ BEGIN ANlorioPrisoned1_1
  SAY @191
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANlorioPrisoned1_2
  SAY @188
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANlorioPrisoned1_3
  SAY @190
IF ~~ THEN EXIT
END

IF WEIGHT #-10 ~Global("ANlorioPrison","GLOBAL",8)~ BEGIN ANPrisonerTalk
  SAY @189
IF ~PartyGoldGT(99)~ THEN DO ~TakePartyGold(100) SetGlobal("ANlorioPrison","GLOBAL",4)~ REPLY @185 GOTO ANlorioPrisoned1_1
IF ~~ THEN DO ~SetGlobal("ANlorioPrison","GLOBAL",8)~ REPLY @186 GOTO ANlorioPrisoned1_2
IF ~~ THEN DO ~SetGlobal("ANlorioPrison","GLOBAL",9)~ REPLY @187 GOTO ANlorioPrisoned1_3
END

END

EXTEND_TOP WSMITH01 0 
IF ~Global("ANlorioPrison","GLOBAL",6)~ THEN REPLY @209 GOTO ANlorioSword
END

EXTEND_TOP WSMITH01 58 
IF ~Global("ANlorioPrison","GLOBAL",6)~ THEN REPLY @209 GOTO ANlorioSword
END

APPEND WSMITH01
IF ~~ BEGIN ANlorioSword
  SAY @210
IF ~~ THEN DO ~GiveItemCreate("SW1H42",Player1,1,0,0) AddJournalEntry(@1098,QUEST_DONE) SetGlobal("ANlorioPrison","GLOBAL",20)~ EXIT
END
END