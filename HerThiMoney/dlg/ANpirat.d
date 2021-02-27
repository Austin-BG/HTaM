BEGIN ANsailor

CHAIN
IF ~Global("ANpiratQuest","GLOBAL",1)~ THEN ANsailor ANsailorTalk
@0 DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANpiratQuest","GLOBAL",2)~
== PLAYER1 @2
== ANsailor @3
= @4
== PLAYER1 @5
== ANsailor @6
== PLAYER1 @7
== ANsailor @8
= @9
== PLAYER1 @10
== ANsailor @11
= @12 DO ~EscapeArea() AddJournalEntry(@1066,QUEST)~
EXIT

BEGIN ANlorna

IF ~~ THEN BEGIN ANLornaTalk1 
  SAY @25
IF ~~ THEN REPLY @27 GOTO ANLornaTalk2 
END

IF ~~ THEN BEGIN ANLornaTalkEnd
  SAY @26
IF ~~ THEN DO ~EscapeArea() AddJournalEntry(@1067,QUEST_DONE) SetGlobal("ANpiratQuest","GLOBAL",99)~ EXIT
END


IF ~~ THEN BEGIN ANLornaTalk3
  SAY @39
IF ~~ THEN DO ~GiveItemCreate("ANscroll",Player1,1,0,0) AddJournalEntry(@1068,QUEST) SetGlobal("ANpiratQuest","GLOBAL",5)~ REPLY @46 GOTO ANLornaTalk6
END

IF ~~ THEN BEGIN ANLornaTalk4
  SAY @40
IF ~~ THEN DO ~SetGlobal("ANpiratQuest","GLOBAL",49)~ EXIT
END

IF ~~ THEN BEGIN ANLornaTalk5
  SAY @41
IF ~OR(2) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN DO ~EscapeArea() SetGlobal("ANpiratQuest","GLOBAL",99)~ EXIT
IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN DO ~ActionOverride("ANLorna",EscapeArea() SetGlobal("ANpiratQuest","GLOBAL",99)~ EXTERN JAHEIRAJ ANLornaTalk5Jaheira
END

IF ~Global("ANpiratQuest","GLOBAL",49)~ THEN BEGIN ANLornaTalkAgain
  SAY @42
IF ~PartyGoldGT(99)~ THEN REPLY @43 DO ~TakePartyGold(100)~ GOTO ANLornaTalk3  
IF ~~ THEN REPLY @44 GOTO ANLornaTalkAgainEnd
END

IF ~~ THEN BEGIN ANLornaTalkAgainEnd
  SAY @45
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANLornaTalk6
  SAY @47
IF ~~ THEN REPLY @48 GOTO ANLornaTalk7
END

IF ~~ THEN BEGIN ANLornaTalk7
  SAY @45
IF ~~ THEN DO ~EscapeArea()~ EXIT
END


IF ~AreaCheck("AR0700") Global("ANLornaExists","AR0700",1)~ THEN BEGIN ANLornaTalkAtkhatla
  SAY @125
IF ~~ THEN DO ~SetGlobal("ANLornaExists","AR0700",2)~ REPLY @126 GOTO ANLornaTalkAtkhatla1
IF ~~ THEN DO ~SetGlobal("ANLornaExists","AR0700",2)~ REPLY @127 GOTO ANLornaTalkAtkhatla2
END

IF ~~ THEN BEGIN ANLornaTalkAtkhatla1
  SAY @128
IF ~~ THEN GOTO ANLornaTalkAtkhatla2
END

IF ~~ THEN BEGIN ANLornaTalkAtkhatla2
  SAY @129
IF ~~ THEN REPLY @130 GOTO ANLornaTalkAtkhatla3
END

IF ~~ THEN BEGIN ANLornaTalkAtkhatla3
  SAY @131
IF ~~ THEN REPLY @132 GOTO ANLornaTalkAtkhatla4
END

IF ~~ THEN BEGIN ANLornaTalkAtkhatla4
  SAY @133
IF ~~ THEN REPLY @134 GOTO ANLornaTalkAtkhatla5-1
IF ~~ THEN REPLY @135 GOTO ANLornaTalkAtkhatla5-2
END

IF ~~ THEN BEGIN ANLornaTalkAtkhatla5-1
  SAY @136
IF ~~ THEN GOTO ANLornaTalkAtkhatla6
END

IF ~~ THEN BEGIN ANLornaTalkAtkhatla5-2
  SAY @137
IF ~~ THEN GOTO ANLornaTalkAtkhatla6
END

IF ~~ THEN BEGIN ANLornaTalkAtkhatla6
  SAY @138
IF ~~ THEN REPLY @139 GOTO ANLornaTalkAtkhatla7-1
IF ~~ THEN REPLY @140 GOTO ANLornaTalkAtkhatla7-1
IF ~~ THEN REPLY @141 GOTO ANLornaTalkAtkhatla7-2
END

IF ~~ THEN BEGIN ANLornaTalkAtkhatla7-1
  SAY @142
IF ~~ THEN DO ~EscapeArea()~ REPLY @149 GOTO ANLornaTalkAtkhatla9
END

IF ~~ THEN BEGIN ANLornaTalkAtkhatla7-2
  SAY @143
IF ~PartyGoldGT(99)~ THEN REPLY @144 DO ~TakePartyGold(100) ReputationInc(1)~ GOTO ANLornaTalkAtkhatla8-1
IF ~~ THEN REPLY @145 GOTO ANLornaTalkAtkhatla8-2
END

IF ~~ THEN BEGIN ANLornaTalkAtkhatla8-1
  SAY @146
IF ~~ THEN DO ~EscapeArea()~ REPLY @148 GOTO ANLornaTalkAtkhatla9
END

IF ~~ THEN BEGIN ANLornaTalkAtkhatla8-2
  SAY @147
IF ~~ THEN DO ~EscapeArea()~ REPLY @149 GOTO ANLornaTalkAtkhatla9
END

IF ~~ THEN BEGIN ANLornaTalkAtkhatla9
  SAY @150
IF ~~ THEN EXIT
END


CHAIN
IF ~Global("ANpiratQuest","GLOBAL",2)~ THEN ANlorna ANLornaTalk
@13 DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANpiratQuest","GLOBAL",3)~
== PLAYER1 @14
== ANlorna @15
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @210
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) OR(2) !InParty("HaerDalis") StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @210
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar")  !StateCheck("Valygar",CD_STATE_NOTVALID) OR(2) !InParty("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) OR(2) !InParty("HaerDalis") StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @210
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN @211
== ANlorna IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN @212
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN @213
== ANlorna IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN @214
== PLAYER1 @16
== ANlorna @17
== PLAYER1 @18
== ANlorna @19
== PLAYER1 @20
== ANlorna @21
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @215
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @219
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @219
== ANlorna IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @220
== ANlorna IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @220
== PLAYER1 IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @221
== PLAYER1 IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @221
== ANlorna @22
END
IF ~~ THEN REPLY @23 EXTERN ANlorna ANLornaTalk1
IF ~~ THEN REPLY @24 EXTERN ANlorna ANLornaTalkEnd

CHAIN
IF ~Global("ANpiratQuest","GLOBAL",3)~ THEN ANlorna ANLornaTalk2
@28 DO ~SetGlobal("ANpiratQuest","GLOBAL",4)~
== PLAYER1 @29
== ANlorna @30
== PLAYER1 @31
== ANlorna @32
== PLAYER1 @33
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @216
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @217
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @218
== PLAYER1 @34
== ANlorna @35
END
IF ~PartyGoldGT(99)~ THEN REPLY @36 DO ~TakePartyGold(100)~ EXTERN ANlorna ANLornaTalk3
IF ~~ THEN REPLY @37 EXTERN ANlorna ANLornaTalk4
IF ~~ THEN REPLY @38 EXTERN ANlorna ANLornaTalk5

BEGIN ANscelet

CHAIN
IF ~Global("ANpiratQuest","GLOBAL",6)~ THEN ANscelet ANsceletTalk1
@49 DO ~SetGlobal("ANpiratQuest","GLOBAL",7)~
== PLAYER1 @50
== ANscelet @51
== PLAYER1 @52
== ANscelet @53
== PLAYER1 @54
== ANscelet @55 DO ~ChangeEnemyAlly(Myself,ENEMY) Enemy()~
== PLAYER1 @56
EXIT

BEGIN ANdragon

IF ~Global("ANOdrikTalk","AN1616",0)~ THEN BEGIN ANdragonTalk 
  SAY @57
=@58  
IF ~~ THEN DO ~SetGlobal("ANOdrikTalk","AN1616",1) SetGlobal("ANOdrikTalkName","AN1616",1)~ REPLY @59 GOTO ANdragonTalkQuestion
IF ~~ THEN DO ~SetGlobal("ANOdrikTalk","AN1616",1)~ REPLY @60 GOTO ANdragonTalkSlabo
IF ~~ THEN DO ~SetGlobal("ANOdrikTalk","AN1616",5)~ REPLY @61 GOTO ANdragonTalkExit
IF ~~ THEN DO ~SetGlobal("ANOdrikTalk","AN1616",1)~ REPLY @64 GOTO ANdragonTalkEvil
END

IF ~Global("ANOdrikTalk","AN1616",5) Global("ANOdrikTalkName","AN1616",0)~ THEN BEGIN ANdragonTalkNext1
  SAY @88
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANOdrikTalkName","AN1616",1)~ REPLY @59 GOTO ANdragonTalkQuestion
IF ~~ THEN REPLY @90 GOTO ANdragonTalkSlabo
IF ~~ THEN REPLY @61 GOTO ANdragonTalkExit
IF ~~ THEN REPLY @64 GOTO ANdragonTalkEvil
END

IF ~OR(2) Global("ANOdrikTalk","AN1616",5) Global("ANOdrikTalk","AN1616",1) Global("ANOdrikTalkName","AN1616",1)~ THEN BEGIN ANdragonTalkNext2
  SAY @88
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @73 EXTERN ANdragon ANdragonTalk1   
IF ~~ THEN REPLY @90 GOTO ANdragonTalkSlabo  
IF ~~ THEN REPLY @89 GOTO ANdragonTalkExit
IF ~~ THEN REPLY @64 GOTO ANdragonTalkEvil
END

IF ~Global("ANOdrikTalk","AN1616",2)~ THEN BEGIN ANdragonTalkNext3
  SAY @88
IF ~~ THEN REPLY @89 GOTO ANdragonTalkExit
IF ~~ THEN REPLY @64 GOTO ANdragonTalkEvil
END

IF ~~ THEN BEGIN ANdragonTalkExit
  SAY @86
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANdragonTalkExit1
  SAY @92
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANdragonTalkSlabo
  SAY @63
IF ~~ THEN DO ~SetGlobal("ANOdrikTalkName","AN1616",1)~ REPLY @59 GOTO ANdragonTalkQuestion
IF ~~ THEN REPLY @61 GOTO ANdragonTalkExit
IF ~~ THEN REPLY @64 GOTO ANdragonTalkEvil
END

IF ~~ THEN BEGIN ANdragonTalkQuestion
  SAY @62
IF ~~ THEN REPLY @73 EXTERN ANdragon ANdragonTalk1 
IF ~~ THEN REPLY @64 GOTO ANdragonTalkEvil
END

IF ~~ THEN BEGIN ANdragonTalkEvil
  SAY @65
IF ~Global("ANOdrikTalkName","AN1616",0)~ THEN DO ~SetGlobal("ANOdrikTalkName","AN1616",1)~ REPLY @67 GOTO ANdragonTalkQuestion
IF ~Global("ANOdrikTalkName","AN1616",1)~ THEN REPLY @91 GOTO ANdragonTalkExit1
IF ~~ THEN REPLY @66 GOTO ANdragonTalkEvil1
END

IF ~~ THEN BEGIN ANdragonTalkEvil1
  SAY @68
IF ~Global("ANOdrikTalkName","AN1616",0)~ THEN DO ~SetGlobal("ANOdrikTalkName","AN1616",1)~ REPLY @69 GOTO ANdragonTalkQuestion
IF ~Global("ANOdrikTalkName","AN1616",1)~ THEN REPLY @91 GOTO ANdragonTalkExit1
IF ~~ THEN REPLY @70 GOTO ANdragonTalkEvil2
END

IF ~~ THEN BEGIN ANdragonTalkEvil2
  SAY @71
IF ~Global("ANOdrikTalkName","AN1616",0)~ THEN DO ~SetGlobal("ANOdrikTalkName","AN1616",1)~ REPLY @69 GOTO ANdragonTalkQuestion
IF ~Global("ANOdrikTalkName","AN1616",1)~ THEN REPLY @91 GOTO ANdragonTalkExit1
IF ~~ THEN REPLY @72 GOTO ANdragonTalkEvil3
END

IF ~~ THEN BEGIN ANdragonTalkEvil3
  SAY @87
IF ~~ THEN DO ~ChangeEnemyAlly(Myself,ENEMY) Enemy() SetGlobal("ANOdrikTalk","AN1616",666)~ EXIT
END

CHAIN
IF ~Global("ANOdrikTalk","AN1616",1)~ THEN ANdragon ANdragonTalk1 
@74 DO ~SetGlobal("ANOdrikTalk","AN1616",2)~
=@75
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @196
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) !InParty("7XQUAY")~ THEN @197
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @201
== ANdragon IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @202
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @203
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @203
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @200
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @204
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) OR(2) !InParty("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @204
== PLAYER1 @76
== ANdragon @77
== PLAYER1 @78
== ANdragon @79
== PLAYER1 @80
== ANdragon @81 
== PLAYER1 @82
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @198
== ANdragon IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @199
== PLAYER1 @83
== ANdragon @84
== PLAYER1 @85
== ANdragon @86
EXIT


BEGIN ANvivern

IF ~Global("ANOdrikTalk1","AN1616",0)~ THEN BEGIN ANvivernTalk 
  SAY @57
=@93  
IF ~~ THEN DO ~SetGlobal("ANOdrikTalk1","AN1616",1) SetGlobal("ANOdrikTalkName1","AN1616",1)~ REPLY @94 GOTO ANvivernTalkQuestion
IF ~~ THEN DO ~SetGlobal("ANOdrikTalk1","AN1616",1)~ REPLY @60 GOTO ANvivernTalkSlabo
IF ~~ THEN DO ~SetGlobal("ANOdrikTalk1","AN1616",5)~ REPLY @61 GOTO ANvivernTalkExit
IF ~~ THEN DO ~SetGlobal("ANOdrikTalk1","AN1616",1)~ REPLY @64 GOTO ANvivernTalkEvil
END

IF ~Global("ANOdrikTalk1","AN1616",5) Global("ANOdrikTalkName1","AN1616",0)~ THEN BEGIN ANvivernTalkNext1
  SAY @88
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANOdrikTalkName1","AN1616",1)~ REPLY @94 GOTO ANvivernTalkQuestion
IF ~~ THEN REPLY @90 GOTO ANvivernTalkSlabo
IF ~~ THEN REPLY @61 GOTO ANvivernTalkExit
IF ~~ THEN REPLY @64 GOTO ANvivernTalkEvil
END

IF ~OR(2) Global("ANOdrikTalk1","AN1616",5) Global("ANOdrikTalk1","AN1616",1) Global("ANOdrikTalkName1","AN1616",1)~ THEN BEGIN ANvivernTalkNext2
  SAY @88
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @73 EXTERN ANvivern ANvivernTalk1   
IF ~~ THEN REPLY @90 GOTO ANvivernTalkSlabo  
IF ~~ THEN REPLY @89 GOTO ANvivernTalkExit
IF ~~ THEN REPLY @64 GOTO ANvivernTalkEvil
END

IF ~Global("ANOdrikTalk1","AN1616",2)~ THEN BEGIN ANvivernTalkNext3
  SAY @88
IF ~~ THEN REPLY @89 GOTO ANvivernTalkExit
IF ~~ THEN REPLY @64 GOTO ANvivernTalkEvil
END

IF ~~ THEN BEGIN ANvivernTalkExit
  SAY @86
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANvivernTalkExit1
  SAY @92
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANvivernTalkSlabo
  SAY @63
IF ~~ THEN DO ~SetGlobal("ANOdrikTalkName1","AN1616",1)~ REPLY @94 GOTO ANvivernTalkQuestion
IF ~~ THEN REPLY @61 GOTO ANvivernTalkExit
IF ~~ THEN REPLY @64 GOTO ANvivernTalkEvil
END

IF ~~ THEN BEGIN ANvivernTalkQuestion
  SAY @62
IF ~~ THEN REPLY @73 EXTERN ANvivern ANvivernTalk1 
IF ~~ THEN REPLY @64 GOTO ANvivernTalkEvil
END

IF ~~ THEN BEGIN ANvivernTalkEvil
  SAY @65
IF ~Global("ANOdrikTalkName1","AN1616",0)~ THEN DO ~SetGlobal("ANOdrikTalkName1","AN1616",1)~ REPLY @96 GOTO ANvivernTalkQuestion
IF ~Global("ANOdrikTalkName1","AN1616",1)~ THEN REPLY @91 GOTO ANvivernTalkExit1
IF ~~ THEN REPLY @95 GOTO ANvivernTalkEvil1
END

IF ~~ THEN BEGIN ANvivernTalkEvil1
  SAY @68
IF ~Global("ANOdrikTalkName1","AN1616",0)~ THEN DO ~SetGlobal("ANOdrikTalkName1","AN1616",1)~ REPLY @97 GOTO ANvivernTalkQuestion
IF ~Global("ANOdrikTalkName1","AN1616",1)~ THEN REPLY @91 GOTO ANvivernTalkExit1
IF ~~ THEN REPLY @70 GOTO ANvivernTalkEvil2
END

IF ~~ THEN BEGIN ANvivernTalkEvil2
  SAY @71
IF ~Global("ANOdrikTalkName1","AN1616",0)~ THEN DO ~SetGlobal("ANOdrikTalkName1","AN1616",1)~ REPLY @97 GOTO ANvivernTalkQuestion
IF ~Global("ANOdrikTalkName1","AN1616",1)~ THEN REPLY @91 GOTO ANvivernTalkExit1
IF ~~ THEN REPLY @72 GOTO ANvivernTalkEvil3
END

IF ~~ THEN BEGIN ANvivernTalkEvil3
  SAY @87
IF ~~ THEN DO ~ChangeEnemyAlly(Myself,ENEMY) Enemy() SetGlobal("ANOdrikTalk1","AN1616",666)~ EXIT
END

CHAIN
IF ~Global("ANOdrikTalk1","AN1616",1)~ THEN ANvivern ANvivernTalk1 
@74 DO ~SetGlobal("ANOdrikTalk1","AN1616",2)~
=@75
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @196
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @197
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @207
== ANvivern IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @202
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @208
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @208
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @206
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @204
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) OR(2) !InParty("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @204
== PLAYER1 @76
== ANvivern @77
== PLAYER1 @78
== ANvivern @79
== PLAYER1 @80
== ANvivern @81 
== PLAYER1 @82
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @205
== ANvivern IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @199
== PLAYER1 @83
== ANvivern @84
== PLAYER1 @85
== ANvivern @86
EXIT

APPEND PLAYER1

IF ~Global("ANPiratChestClick","AN1620",1)~ THEN BEGIN ANpiratchestPlayer1Talk
  SAY @98
=@114  
IF ~~ THEN DO ~SetGlobal("ANPiratChestClick","AN1620",0) SetGlobal("ANPiratChest_OPAL","AN1620",1)~ REPLY @108 GOTO ANpiratchestPlayer1TalkOPAL
IF ~~ THEN DO ~SetGlobal("ANPiratChestClick","AN1620",0) SetGlobal("ANPiratChest_ONIKS","AN1620",1)~ REPLY @109 GOTO ANpiratchestPlayer1TalkONIKS
IF ~~ THEN DO ~SetGlobal("ANPiratChestClick","AN1620",0) SetGlobal("ANPiratChest_RUBIN","AN1620",1)~ REPLY @110 GOTO ANpiratchestPlayer1TalkRUBIN
IF ~~ THEN DO ~SetGlobal("ANPiratChestClick","AN1620",0) SetGlobal("ANPiratChest_SEREBRO","AN1620",1)~ REPLY @111 GOTO ANpiratchestPlayer1TalkSEREBRO
IF ~~ THEN DO ~SetGlobal("ANPiratChestClick","AN1620",0) SetGlobal("ANPiratChest_GOLD","AN1620",1)~ REPLY @112 GOTO ANpiratchestPlayer1TalkGOLD
IF ~~ THEN DO ~%chest_dlg_string%~ REPLY @107 EXIT
END

IF ~~ THEN BEGIN ANpiratchestPlayer1TalkRUBIN
  SAY @113
IF ~~ THEN REPLY @100 GOTO ANpiratchestPlayer1TalkMIZINEC
IF ~~ THEN REPLY @101 GOTO ANpiratchestPlayer1TalkBEZYMYANNYI
IF ~~ THEN DO ~SetGlobal("ANPiratChest_RIGHT1","AN1620",1)~ REPLY @102 GOTO ANpiratchestPlayer1TalkSREDNIY
IF ~~ THEN REPLY @103 GOTO ANpiratchestPlayer1TalkUKAZATELNYI
IF ~~ THEN REPLY @104 GOTO ANpiratchestPlayer1TalkBOLSHOY
IF ~~ THEN DO ~%chest_dlg_string%~ REPLY @107 EXIT
END

IF ~~ THEN BEGIN ANpiratchestPlayer1TalkOPAL
  SAY @113
IF ~~ THEN REPLY @100 GOTO ANpiratchestPlayer1TalkMIZINEC
IF ~~ THEN REPLY @101 GOTO ANpiratchestPlayer1TalkBEZYMYANNYI
IF ~~ THEN REPLY @102 GOTO ANpiratchestPlayer1TalkSREDNIY
IF ~~ THEN REPLY @103 GOTO ANpiratchestPlayer1TalkUKAZATELNYI
IF ~~ THEN DO ~SetGlobal("ANPiratChest_RIGHT2","AN1620",1)~ REPLY @104 GOTO ANpiratchestPlayer1TalkBOLSHOY
IF ~~ THEN DO ~%chest_dlg_string%~ REPLY @107 EXIT
END

IF ~~ THEN BEGIN ANpiratchestPlayer1TalkONIKS
  SAY @113
IF ~~ THEN REPLY @100 GOTO ANpiratchestPlayer1TalkMIZINEC
IF ~~ THEN REPLY @101 GOTO ANpiratchestPlayer1TalkBEZYMYANNYI
IF ~~ THEN REPLY @102 GOTO ANpiratchestPlayer1TalkSREDNIY
IF ~~ THEN DO ~SetGlobal("ANPiratChest_RIGHT3","AN1620",1)~ REPLY @103 GOTO ANpiratchestPlayer1TalkUKAZATELNYI
IF ~~ THEN REPLY @104 GOTO ANpiratchestPlayer1TalkBOLSHOY
IF ~~ THEN DO ~%chest_dlg_string%~ REPLY @107 EXIT
END

IF ~~ THEN BEGIN ANpiratchestPlayer1TalkSEREBRO
  SAY @113
IF ~~ THEN REPLY @100 GOTO ANpiratchestPlayer1TalkMIZINEC
IF ~~ THEN DO ~SetGlobal("ANPiratChest_RIGHT4","AN1620",1)~ REPLY @101 GOTO ANpiratchestPlayer1TalkBEZYMYANNYI
IF ~~ THEN REPLY @102 GOTO ANpiratchestPlayer1TalkSREDNIY
IF ~~ THEN REPLY @103 GOTO ANpiratchestPlayer1TalkUKAZATELNYI
IF ~~ THEN REPLY @104 GOTO ANpiratchestPlayer1TalkBOLSHOY
IF ~~ THEN DO ~%chest_dlg_string%~ REPLY @107 EXIT
END

IF ~~ THEN BEGIN ANpiratchestPlayer1TalkGOLD
  SAY @113
IF ~~ THEN DO ~SetGlobal("ANPiratChest_RIGHT5","AN1620",1)~ REPLY @100 GOTO ANpiratchestPlayer1TalkMIZINEC
IF ~~ THEN REPLY @101 GOTO ANpiratchestPlayer1TalkBEZYMYANNYI
IF ~~ THEN REPLY @102 GOTO ANpiratchestPlayer1TalkSREDNIY
IF ~~ THEN REPLY @103 GOTO ANpiratchestPlayer1TalkUKAZATELNYI
IF ~~ THEN REPLY @104 GOTO ANpiratchestPlayer1TalkBOLSHOY
IF ~~ THEN DO ~%chest_dlg_string%~ REPLY @107 EXIT
END

IF ~~ THEN BEGIN ANpiratchestPlayer1TalkSREDNIY
  SAY @99
=@115  
IF ~Global("ANPiratChest_OPAL","AN1620",0)~ THEN DO ~SetGlobal("ANPiratChest_OPAL","AN1620",1)~ REPLY @108 GOTO ANpiratchestPlayer1TalkOPAL
IF ~Global("ANPiratChest_ONIKS","AN1620",0)~ THEN DO ~SetGlobal("ANPiratChest_ONIKS","AN1620",1)~ REPLY @109 GOTO ANpiratchestPlayer1TalkONIKS
IF ~Global("ANPiratChest_RUBIN","AN1620",0)~ THEN DO ~SetGlobal("ANPiratChest_RUBIN","AN1620",1)~ REPLY @110 GOTO ANpiratchestPlayer1TalkRUBIN
IF ~Global("ANPiratChest_SEREBRO","AN1620",0)~ THEN DO ~SetGlobal("ANPiratChest_SEREBRO","AN1620",1)~ REPLY @111 GOTO ANpiratchestPlayer1TalkSEREBRO
IF ~Global("ANPiratChest_GOLD","AN1620",0)~ THEN DO ~SetGlobal("ANPiratChest_GOLD","AN1620",1)~ REPLY @112 GOTO ANpiratchestPlayer1TalkGOLD
IF ~~ THEN DO ~%chest_dlg_string%~ REPLY @107 EXIT
IF ~Global("ANPiratChest_OPAL","AN1620",1) Global("ANPiratChest_ONIKS","AN1620",1) Global("ANPiratChest_RUBIN","AN1620",1) Global("ANPiratChest_SEREBRO","AN1620",1) Global("ANPiratChest_GOLD","AN1620",1) OR(5) !Global("ANPiratChest_RIGHT1","AN1620",1) !Global("ANPiratChest_RIGHT2","AN1620",1) !Global("ANPiratChest_RIGHT3","AN1620",1) !Global("ANPiratChest_RIGHT4","AN1620",1) !Global("ANPiratChest_RIGHT5","AN1620",1)~ THEN GOTO ANpiratchestNoFINISH
IF ~Global("ANPiratChest_RIGHT1","AN1620",1) Global("ANPiratChest_RIGHT2","AN1620",1) Global("ANPiratChest_RIGHT3","AN1620",1) Global("ANPiratChest_RIGHT4","AN1620",1) Global("ANPiratChest_RIGHT5","AN1620",1)~ THEN GOTO ANpiratchestFINISH
END

IF ~~ THEN BEGIN ANpiratchestPlayer1TalkMIZINEC
  SAY @99
=@115  
IF ~Global("ANPiratChest_OPAL","AN1620",0)~ THEN DO ~SetGlobal("ANPiratChest_OPAL","AN1620",1)~ REPLY @108 GOTO ANpiratchestPlayer1TalkOPAL
IF ~Global("ANPiratChest_ONIKS","AN1620",0)~ THEN DO ~SetGlobal("ANPiratChest_ONIKS","AN1620",1)~ REPLY @109 GOTO ANpiratchestPlayer1TalkONIKS
IF ~Global("ANPiratChest_RUBIN","AN1620",0)~ THEN DO ~SetGlobal("ANPiratChest_RUBIN","AN1620",1)~ REPLY @110 GOTO ANpiratchestPlayer1TalkRUBIN
IF ~Global("ANPiratChest_SEREBRO","AN1620",0)~ THEN DO ~SetGlobal("ANPiratChest_SEREBRO","AN1620",1)~ REPLY @111 GOTO ANpiratchestPlayer1TalkSEREBRO
IF ~Global("ANPiratChest_GOLD","AN1620",0)~ THEN DO ~SetGlobal("ANPiratChest_GOLD","AN1620",1)~ REPLY @112 GOTO ANpiratchestPlayer1TalkGOLD
IF ~~ THEN DO ~%chest_dlg_string%~ REPLY @107 EXIT
IF ~Global("ANPiratChest_OPAL","AN1620",1) Global("ANPiratChest_ONIKS","AN1620",1) Global("ANPiratChest_RUBIN","AN1620",1) Global("ANPiratChest_SEREBRO","AN1620",1) Global("ANPiratChest_GOLD","AN1620",1) OR(5) !Global("ANPiratChest_RIGHT1","AN1620",1) !Global("ANPiratChest_RIGHT2","AN1620",1) !Global("ANPiratChest_RIGHT3","AN1620",1) !Global("ANPiratChest_RIGHT4","AN1620",1) !Global("ANPiratChest_RIGHT5","AN1620",1)~ THEN GOTO ANpiratchestNoFINISH
IF ~Global("ANPiratChest_RIGHT1","AN1620",1) Global("ANPiratChest_RIGHT2","AN1620",1) Global("ANPiratChest_RIGHT3","AN1620",1) Global("ANPiratChest_RIGHT4","AN1620",1) Global("ANPiratChest_RIGHT5","AN1620",1)~ THEN GOTO ANpiratchestFINISH
END

IF ~~ THEN BEGIN ANpiratchestPlayer1TalkBEZYMYANNYI
  SAY @99
=@115 
IF ~Global("ANPiratChest_OPAL","AN1620",0)~ THEN DO ~SetGlobal("ANPiratChest_OPAL","AN1620",1)~ REPLY @108 GOTO ANpiratchestPlayer1TalkOPAL
IF ~Global("ANPiratChest_ONIKS","AN1620",0)~ THEN DO ~SetGlobal("ANPiratChest_ONIKS","AN1620",1)~ REPLY @109 GOTO ANpiratchestPlayer1TalkONIKS
IF ~Global("ANPiratChest_RUBIN","AN1620",0)~ THEN DO ~SetGlobal("ANPiratChest_RUBIN","AN1620",1)~ REPLY @110 GOTO ANpiratchestPlayer1TalkRUBIN
IF ~Global("ANPiratChest_SEREBRO","AN1620",0)~ THEN DO ~SetGlobal("ANPiratChest_SEREBRO","AN1620",1)~ REPLY @111 GOTO ANpiratchestPlayer1TalkSEREBRO
IF ~Global("ANPiratChest_GOLD","AN1620",0)~ THEN DO ~SetGlobal("ANPiratChest_GOLD","AN1620",1)~ REPLY @112 GOTO ANpiratchestPlayer1TalkGOLD
IF ~~ THEN DO ~%chest_dlg_string%~ REPLY @107 EXIT
IF ~Global("ANPiratChest_OPAL","AN1620",1) Global("ANPiratChest_ONIKS","AN1620",1) Global("ANPiratChest_RUBIN","AN1620",1) Global("ANPiratChest_SEREBRO","AN1620",1) Global("ANPiratChest_GOLD","AN1620",1) OR(5) !Global("ANPiratChest_RIGHT1","AN1620",1) !Global("ANPiratChest_RIGHT2","AN1620",1) !Global("ANPiratChest_RIGHT3","AN1620",1) !Global("ANPiratChest_RIGHT4","AN1620",1) !Global("ANPiratChest_RIGHT5","AN1620",1)~ THEN GOTO ANpiratchestNoFINISH
IF ~Global("ANPiratChest_RIGHT1","AN1620",1) Global("ANPiratChest_RIGHT2","AN1620",1) Global("ANPiratChest_RIGHT3","AN1620",1) Global("ANPiratChest_RIGHT4","AN1620",1) Global("ANPiratChest_RIGHT5","AN1620",1)~ THEN GOTO ANpiratchestFINISH
END

IF ~~ THEN BEGIN ANpiratchestPlayer1TalkUKAZATELNYI
  SAY @99
=@115 
IF ~Global("ANPiratChest_OPAL","AN1620",0)~ THEN DO ~SetGlobal("ANPiratChest_OPAL","AN1620",1)~ REPLY @108 GOTO ANpiratchestPlayer1TalkOPAL
IF ~Global("ANPiratChest_ONIKS","AN1620",0)~ THEN DO ~SetGlobal("ANPiratChest_ONIKS","AN1620",1)~ REPLY @109 GOTO ANpiratchestPlayer1TalkONIKS
IF ~Global("ANPiratChest_RUBIN","AN1620",0)~ THEN DO ~SetGlobal("ANPiratChest_RUBIN","AN1620",1)~ REPLY @110 GOTO ANpiratchestPlayer1TalkRUBIN
IF ~Global("ANPiratChest_SEREBRO","AN1620",0)~ THEN DO ~SetGlobal("ANPiratChest_SEREBRO","AN1620",1)~ REPLY @111 GOTO ANpiratchestPlayer1TalkSEREBRO
IF ~Global("ANPiratChest_GOLD","AN1620",0)~ THEN DO ~SetGlobal("ANPiratChest_GOLD","AN1620",1)~ REPLY @112 GOTO ANpiratchestPlayer1TalkGOLD
IF ~~ THEN DO ~%chest_dlg_string%~ REPLY @107 EXIT
IF ~Global("ANPiratChest_OPAL","AN1620",1) Global("ANPiratChest_ONIKS","AN1620",1) Global("ANPiratChest_RUBIN","AN1620",1) Global("ANPiratChest_SEREBRO","AN1620",1) Global("ANPiratChest_GOLD","AN1620",1) OR(5) !Global("ANPiratChest_RIGHT1","AN1620",1) !Global("ANPiratChest_RIGHT2","AN1620",1) !Global("ANPiratChest_RIGHT3","AN1620",1) !Global("ANPiratChest_RIGHT4","AN1620",1) !Global("ANPiratChest_RIGHT5","AN1620",1)~ THEN GOTO ANpiratchestNoFINISH
IF ~Global("ANPiratChest_RIGHT1","AN1620",1) Global("ANPiratChest_RIGHT2","AN1620",1) Global("ANPiratChest_RIGHT3","AN1620",1) Global("ANPiratChest_RIGHT4","AN1620",1) Global("ANPiratChest_RIGHT5","AN1620",1)~ THEN GOTO ANpiratchestFINISH
END

IF ~~ THEN BEGIN ANpiratchestPlayer1TalkBOLSHOY
  SAY @99
=@115 
IF ~Global("ANPiratChest_OPAL","AN1620",0)~ THEN DO ~SetGlobal("ANPiratChest_OPAL","AN1620",1)~ REPLY @108 GOTO ANpiratchestPlayer1TalkOPAL
IF ~Global("ANPiratChest_ONIKS","AN1620",0)~ THEN DO ~SetGlobal("ANPiratChest_ONIKS","AN1620",1)~ REPLY @109 GOTO ANpiratchestPlayer1TalkONIKS
IF ~Global("ANPiratChest_RUBIN","AN1620",0)~ THEN DO ~SetGlobal("ANPiratChest_RUBIN","AN1620",1)~ REPLY @110 GOTO ANpiratchestPlayer1TalkRUBIN
IF ~Global("ANPiratChest_SEREBRO","AN1620",0)~ THEN DO ~SetGlobal("ANPiratChest_SEREBRO","AN1620",1)~ REPLY @111 GOTO ANpiratchestPlayer1TalkSEREBRO
IF ~Global("ANPiratChest_GOLD","AN1620",0)~ THEN DO ~SetGlobal("ANPiratChest_GOLD","AN1620",1)~ REPLY @112 GOTO ANpiratchestPlayer1TalkGOLD
IF ~~ THEN DO ~%chest_dlg_string%~ REPLY @107 EXIT
IF ~Global("ANPiratChest_OPAL","AN1620",1) Global("ANPiratChest_ONIKS","AN1620",1) Global("ANPiratChest_RUBIN","AN1620",1) Global("ANPiratChest_SEREBRO","AN1620",1) Global("ANPiratChest_GOLD","AN1620",1) OR(5) !Global("ANPiratChest_RIGHT1","AN1620",1) !Global("ANPiratChest_RIGHT2","AN1620",1) !Global("ANPiratChest_RIGHT3","AN1620",1) !Global("ANPiratChest_RIGHT4","AN1620",1) !Global("ANPiratChest_RIGHT5","AN1620",1)~ THEN GOTO ANpiratchestNoFINISH
IF ~Global("ANPiratChest_RIGHT1","AN1620",1) Global("ANPiratChest_RIGHT2","AN1620",1) Global("ANPiratChest_RIGHT3","AN1620",1) Global("ANPiratChest_RIGHT4","AN1620",1) Global("ANPiratChest_RIGHT5","AN1620",1)~ THEN GOTO ANpiratchestFINISH
END

IF ~~ THEN BEGIN ANpiratchestNoFINISH
  SAY @106
IF ~~ THEN DO ~SetGlobal("ANPiratChest_OPAL","AN1620",0) SetGlobal("ANPiratChest_ONIKS","AN1620",0) SetGlobal("ANPiratChest_RUBIN","AN1620",0) SetGlobal("ANPiratChest_SEREBRO","AN1620",0) SetGlobal("ANPiratChest_GOLD","AN1620",0) SetGlobal("ANPiratChest_RIGHT1","AN1620",0) SetGlobal("ANPiratChest_RIGHT2","AN1620",0) SetGlobal("ANPiratChest_RIGHT3","AN1620",0) SetGlobal("ANPiratChest_RIGHT4","AN1620",0) SetGlobal("ANPiratChest_RIGHT5","AN1620",0)~ EXIT
END

IF ~~ THEN BEGIN ANpiratchestFINISH
  SAY @105
IF ~~ THEN DO ~SetGlobal("ANPiratChestClick","AN1620",2) Unlock("Chest") AddexperienceParty(10000) AddJournalEntry(@1069,QUEST_DONE) SetGlobal("ANPiratChestOPEN","AN1620",1) SetGlobal("ANpiratQuest","GLOBAL",8)~ EXIT
END

END

CHAIN
IF WEIGHT #-10 ~AreaCheck("AN0720") OR(2) Global("ANpiratQuest","GLOBAL",7) Global("ANpiratQuest","GLOBAL",8)~ THEN ANOwni ANOwniPiratQuestFinal
@116 DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANpiratQuest","GLOBAL",9)~
== PLAYER1 @117
== ANOwni @118
== PLAYER1 @119
== ANOwni @120
== PLAYER1 @121
== ANOwni @122 
== PLAYER1 @123
== ANOwni @124
EXIT

BEGIN ANsahua1

IF ~~ THEN BEGIN ANsahuaginTalk1_1
  SAY @166
IF ~~ THEN EXTERN ANsahua2 ANsahuaginTalk1_2
END

IF ~~ THEN BEGIN ANsahuaginTalk1_3
  SAY @168
IF ~~ THEN REPLY @169 GOTO ANsahuaginTalk2
END

IF ~~ THEN BEGIN ANsahuaginTalk2
  SAY @170
=@171
=@172
IF ~~ THEN REPLY @173 GOTO ANsahuaginTalk2_1
IF ~~ THEN REPLY @174 GOTO ANsahuaginTalk3
IF ~~ THEN REPLY @175 EXTERN ANsahua2 ANsahuaginTalkEnd
END

IF ~~ THEN BEGIN ANsahuaginTalk2_1
  SAY @176
IF ~~ THEN GOTO ANsahuaginTalk3
END

IF ~~ THEN BEGIN ANsahuaginTalk3
  SAY @177
=@178  
IF ~~ THEN DO ~SetGlobal("ANsahuagin","AN1620",5)~ REPLY @179 GOTO ANsahuaginTalk4
IF ~~ THEN REPLY @180 EXTERN ANsahua2 ANsahuaginTalkEnd
END

IF ~~ THEN BEGIN ANsahuaginTalk4
  SAY @181
IF ~~ THEN EXIT
END

IF ~Global("ANsahuagin","AN1620",5)~ THEN BEGIN ANsahuagin1TalkWait
  SAY @1000
IF ~~ THEN EXIT
END


BEGIN ANsahua2

IF ~~ THEN BEGIN ANsahuaginTalk1_2
  SAY @167
IF ~~ THEN EXTERN ANsahua1 ANsahuaginTalk1_3
END

IF ~Global("ANsahuagin","AN1620",5)~ THEN BEGIN ANsahuagin2TalkWait
  SAY @1000
IF ~~ THEN EXIT
END

CHAIN
IF ~Global("ANsahuagin","AN1620",1)~ THEN ANsahua2 ANsahuaginTalk 
@151 DO ~SetGlobal("ANsahuagin","AN1620",2)~
== ANsahua1 @152
== ANsahua2 @153
== ANsahua1 @154
EXIT

CHAIN
IF ~Global("ANsahuagin","AN1620",3)~ THEN ANsahua1 ANsahuaginTalk1
@155 DO ~SetGlobal("ANsahuagin","AN1620",4)~
== PLAYER1 @156
== ANsahua1 @157
== ANsahua2 @158
END
IF ~~ THEN REPLY @159 EXTERN ANsahua1 ANsahuaginTalk1_1
IF ~~ THEN REPLY @160 EXTERN ANsahua1 ANsahuaginTalk2
IF ~~ THEN REPLY @161 EXTERN ANsahua2 ANsahuaginTalkEnd

CHAIN
IF ~Global("ANsahuagin","AN1620",4)~ THEN ANsahua2 ANsahuaginTalkEnd
@162 DO ~SetGlobal("ANsahuagin","AN1620",99)~
== ANsahua1 @163
== ANsahua2 @164 DO ~ChangeEnemyAlly(Myself,ENEMY) Enemy()~
== ANsahua1 @165 DO ~ChangeEnemyAlly(Myself,ENEMY) Enemy()~
EXIT

CHAIN
IF ~Global("ANsahuagin","AN1620",6)~ THEN ANsahua1 ANsahuaginTalkFinal
@182 DO ~SetGlobal("ANsahuagin","AN1620",7)~
== PLAYER1 @183
== ANsahua1 @184
== ANsahua2 @185
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @191
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @191
== ANsahua2 IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @192
== ANsahua2 IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @192
== PLAYER1 @186
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @187
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @189
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) OR(2) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @189
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @188
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @190
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) OR(2) !InParty("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @190
== IF_FILE_EXISTS NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @194
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @195
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(2) !InParty("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @195
== PLAYER1 @193 DO ~ActionOverride("ANsahua1",EscapeArea()) ActionOverride("ANsahua2",EscapeArea()) AddexperienceParty(5000)~
EXIT

APPEND JAHEIRAJ 

IF ~~ THEN BEGIN ANLornaTalk5Jaheira
  SAY @209
IF ~~ THEN EXIT
END

END