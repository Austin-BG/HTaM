BEGIN ANshakal

IF ~~ THEN BEGIN ANshakalFirstTalkEnd
SAY @9 
 IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ANshakalFirstTalkEnd1
SAY @27 
 IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ANshakalFirstTalkEnd2
SAY @34 
 IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ANshakalFirstTalkYES
SAY @35
=@36
=@37
=@38
=@39
=@40
 IF ~OR(3) !InParty("7XQUAY") !InMyArea("7XQUAY") StateCheck("7XQUAY",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("ANkors","GLOBAL",1) SetGlobal("ANlorens","GLOBAL",1) AddJournalEntry(@1099,QUEST) EscapeArea()~ EXIT
 IF ~InParty("7XQUAY") InMyArea("7XQUAY") !StateCheck("7XQUAY",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("ANkors","GLOBAL",1) SetGlobal("ANlorens","GLOBAL",1) AddJournalEntry(@1099,QUEST) EscapeArea()~ EXTERN IF_FILE_EXISTS 7XQUAYJ ANshakalFirstTalkQuayle
END

IF ~~ THEN BEGIN ANshakalFirstTalk2
SAY @28 
IF ~~ THEN REPLY @29 GOTO ANshakalFirstTalkQuestion
IF ~~ THEN REPLY @30 GOTO ANshakalFirstTalkYES
IF ~~ THEN DO ~SetGlobal("ANshakalEXIT","AR0400",1)~ REPLY @31 GOTO ANshakalFirstTalkEnd2
IF ~~ THEN DO ~SetGlobal("ANshakalEXIT","AR0400",1)~ REPLY @32 GOTO ANshakalFirstTalkEnd2
END

IF ~~ THEN BEGIN ANshakalFirstTalkQuestion
SAY @33 
IF ~~ THEN REPLY @30 GOTO ANshakalFirstTalkYES
IF ~~ THEN DO ~SetGlobal("ANshakalEXIT","AR0400",1)~ REPLY @31 GOTO ANshakalFirstTalkEnd2
IF ~~ THEN DO ~SetGlobal("ANshakalEXIT","AR0400",1)~ REPLY @32 GOTO ANshakalFirstTalkEnd2
END

IF ~Global("ANshakal","GLOBAL",8) OR(2) !Dead("ANcaytig") Global("ANsisterDead","LOCALS",0)~ THEN BEGIN ANshakalFinalCaytigaLive
SAY @93 
IF ~~ THEN REPLY @112 GOTO ANshakalFinalCaytigaLive1
END

IF ~~ THEN BEGIN ANshakalFinalCaytigaLive1
SAY @114 
IF ~~ THEN DO ~AddexperienceParty(5000) GiveGoldForce(1000) EscapeArea()~ EXIT
END

IF ~Global("ANshakal","GLOBAL",8) Dead("ANcaytig")~ THEN BEGIN ANshakalFinalCaytigaDead
SAY @93 
IF ~~ THEN REPLY @113 GOTO ANshakalFinalCaytigaDead1
END

IF ~~ THEN BEGIN ANshakalFinalCaytigaDead1
SAY @115 
IF ~~ THEN DO ~AddexperienceParty(5000) GiveGoldForce(1200) EscapeArea()~ EXIT
END

CHAIN IF ~Global("ANshakalTalk","AR0400",1)~ THEN PLAYER1 ANshakalFirstTalk
@0 DO ~SetGlobal("ANshakalTalk","AR0400",2)~
== ANshakal @1
=@2
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @130
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @130
== PLAYER1 @3
== ANshakal @4
== PLAYER1 @5
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @137
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @137
== ANshakal @6
END
++ @7 DO ~SetGlobal("ANshakalEXIT","AR0400",1)~ EXTERN ANshakal ANshakalFirstTalkEnd
++ @8 EXTERN ANshakal ANshakalFirstTalk1

CHAIN IF ~Global("ANshakalTalk","AR0400",2)~ THEN ANshakal ANshakalFirstTalk1
@10 DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANshakalTalk","AR0400",3)~
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @131
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @131
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @133
== IF_FILE_EXISTS DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID) InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @134
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) OR(3) !InParty("Dorn") !InMyArea("Dorn") StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @134
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @135
== IF_FILE_EXISTS 7XkagaJ IF ~InParty("7Xkaga") InMyArea("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @136
== IF_FILE_EXISTS DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID) OR(3) !InParty("7Xkaga") !InMyArea("7Xkaga") StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @136
== PLAYER1 @11
== ANshakal @12
== PLAYER1 @13
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @132
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) OR(3) !InParty("Yoshimo") !InMyArea("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @132
== ANshakal @14
== PLAYER1 @15
== ANshakal @16
=@147
=@17
== PLAYER1 @18
== ANshakal @19
== PLAYER1 @20
== ANshakal @21
== PLAYER1 @22
== ANshakal @23
== IF_FILE_EXISTS 7XsharJ IF ~InParty("7XSHAR") InMyArea("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN @139
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) InParty("7XSHAR") InMyArea("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN @140
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) OR(3) !InParty("7XSHAR") !InMyArea("7XSHAR") StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN @141
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @142
== ANshakal IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @143
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @144
== ANshakal IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @145
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @138
END
++ @24 DO ~SetGlobal("ANshakalEXIT","AR0400",1)~ EXTERN ANshakal ANshakalFirstTalkEnd1
++ @25 DO ~SetGlobal("ANshakalEXIT","AR0400",1)~ EXTERN ANshakal ANshakalFirstTalkEnd1
++ @26 EXTERN ANshakal ANshakalFirstTalk2

//cross-mod (Smiling Imp's Quayle)
APPEND IF_FILE_EXISTS 7XQUAYJ 
IF ~~ THEN BEGIN ANshakalFirstTalkQuayle
SAY @188 
IF ~~ THEN EXIT
END
END

BEGIN ANlorens

IF ~Global("ANlorens","GLOBAL",1)~ THEN BEGIN ANlorensTalkBridge
SAY @41 
IF ~~ THEN REPLY @42 GOTO ANlorensTalkBridge1
IF ~~ THEN REPLY @43 GOTO ANlorensTalkBridge1
IF ~~ THEN REPLY @44 EXIT
END

IF ~~ THEN BEGIN ANlorensTalkBridge1
SAY @45
=@46 
IF ~~ THEN DO ~SetGlobal("ANlorens","GLOBAL",2)~ REPLY @47 GOTO ANlorensTalkBridge2
IF ~~ THEN DO ~SetGlobal("ANlorens","GLOBAL",2)~ REPLY @48 GOTO ANlorensTalkBridge2
IF ~~ THEN REPLY @49 EXIT
END

IF ~~ THEN BEGIN ANlorensTalkBridge2
SAY @50
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~Global("ANlorens","GLOBAL",4)~ THEN BEGIN ANlorensTalkGrave
SAY @51 
IF ~~ THEN DO ~SetGlobal("ANlorens","GLOBAL",5)~ REPLY @52 GOTO ANlorensTalkGrave1
END

IF ~~ THEN BEGIN ANlorensTalkGrave1
SAY @53 
=@54
IF ~~ THEN REPLY @55 GOTO ANlorensTalkGrave2
IF ~~ THEN REPLY @56 GOTO ANlorensTalkGrave2
END

IF ~~ THEN BEGIN ANlorensTalkGrave2
SAY @57 
IF ~~ THEN REPLY @58 GOTO ANlorensTalkGrave3
IF ~~ THEN REPLY @59 GOTO ANlorensTalkGrave3
END

IF ~~ THEN BEGIN ANlorensTalkGrave3
SAY @61 
IF ~~ THEN EXIT
END

IF ~Global("ANlorens","GLOBAL",6)~ THEN BEGIN ANlorensTalkGrave4
SAY @60 
IF ~~ THEN DO ~SetGlobal("ANlorens","GLOBAL",7) GiveGoldForce(500) AddJournalEntry(@1100,QUEST) EscapeArea()~ EXIT
END

BEGIN ANsheila

IF ~Global("ANkors","GLOBAL",2) PartyGoldGT(199)~ THEN BEGIN ANSheilaTalkRepeatMoney
SAY @62 
IF ~~ THEN DO ~SetGlobal("ANsheilaPay","GLOBAL",2)~ REPLY @91 GOTO ANSheilaTalkFinish1
IF ~~ THEN REPLY @92 EXIT
END

IF ~Global("ANkors","GLOBAL",2) !PartyGoldGT(199)~ THEN BEGIN ANSheilaTalkRepeatNoMoney
SAY @62 
IF ~~ THEN EXIT
END

IF ~Global("ANkors","GLOBAL",3) PartyGoldGT(179)~ THEN BEGIN ANSheilaTalkAfter
SAY @62 
IF ~~ THEN DO ~SetGlobal("ANsheilaPay","GLOBAL",1)~ REPLY @89 GOTO ANSheilaTalkFinish2
IF ~PartyGoldGT(199)~ THEN DO ~SetGlobal("ANsheilaPay","GLOBAL",2)~ REPLY @91 GOTO ANSheilaTalkFinish1
IF ~~ THEN REPLY @92 EXIT
END

IF ~Global("ANkors","GLOBAL",3) !PartyGoldGT(179)~ THEN BEGIN ANSheilaTalkAfterNoMoney
SAY @62 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANSheilaTalkFinish1
SAY @90 
IF ~~ THEN DO ~SetGlobal("ANkors","GLOBAL",8) TakePartyGold(200) ReputationInc(1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ANSheilaTalkFinish2
SAY @90 
IF ~~ THEN DO ~SetGlobal("ANkors","GLOBAL",8) TakePartyGold(180) ReputationInc(1) EscapeArea()~ EXIT
END

IF ~Global("ANsheilaWhoreExists","AR0400",1)~ THEN BEGIN ANSheilaTalkChapter6
SAY @176
=@177 
=@178
=@179
=@180
=@181
IF ~PartyGoldGT(99)~ THEN DO ~SetGlobal("ANsheilaWhoreExists","AR0400",2) TakePartyGold(100)~ REPLY @182 GOTO ANSheilaTalkChapter6_1
IF ~~ THEN DO ~SetGlobal("ANsheilaWhoreExists","AR0400",2)~ REPLY @183 GOTO ANSheilaTalkChapter6_4
IF ~~ THEN DO ~SetGlobal("ANsheilaWhoreExists","AR0400",2)~ REPLY @184 GOTO ANSheilaTalkChapter6_2
END

IF ~~ THEN BEGIN ANSheilaTalkChapter6_1
SAY @185 
IF ~~ THEN GOTO ANSheilaTalkChapter6_4
END

IF ~~ THEN BEGIN ANSheilaTalkChapter6_2
SAY @186 
IF ~~ THEN GOTO ANSheilaTalkChapter6_4
END

IF ~~ THEN BEGIN ANSheilaTalkChapter6_4
SAY @187 
IF ~~ THEN DO ~EscapeArea()~ EXIT
END


CHAIN IF ~Global("ANkors","GLOBAL",1)~ THEN ANsheila ANSheilaTalk
@62 DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANkors","GLOBAL",2)~
== PLAYER1 @63
== ANsheila @64
== PLAYER1 @65
== ANsheila @66
=@67
=@68
=@69
== PLAYER1 IF ~OR(3) Alignment(Player1,LAWFUL_EVIL) Alignment(Player1,NEUTRAL_EVIL) Alignment(Player1,CHAOTIC_EVIL)~ THEN @71
== PLAYER1 IF ~!Alignment(Player1,LAWFUL_EVIL) !Alignment(Player1,NEUTRAL_EVIL) !Alignment(Player1,CHAOTIC_EVIL)~ THEN @70
== ANsheila @72
=@73
== PLAYER1 @74
EXIT

BEGIN ANband1
IF ~!Global("ANkors","GLOBAL",2)~ THEN BEGIN ANBandit1
SAY @88 
IF ~~ THEN EXIT
END

BEGIN ANband2
IF ~True()~ THEN BEGIN ANBandit2
SAY @88 
IF ~~ THEN EXIT
END

BEGIN ANcaytig
IF ~Global("ANshakal","GLOBAL",6)~ THEN BEGIN ANColDeadTalk
SAY @127 
IF ~~ THEN DO ~SetGlobal("ANshakal","GLOBAL",7) AddJournalEntry(@1104,QUEST_DONE) EscapeArea()~ EXIT
END

BEGIN ANorc1
BEGIN ANorc2

CHAIN IF ~Global("ANkors","GLOBAL",2)~ THEN ANband1 ANbanditTalk
@75 DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANkors","GLOBAL",3)~
=@76
== PLAYER1 @77
== ANband1 @78
== PLAYER1 @79
== ANband1 @80
== PLAYER1 @81
== ANband1 @82
== ANband2 @83
== ANband1 @84
=@85
=@86
=@87 DO ~GiveGoldForce(180) Polymorph(SLEEPING_MAN_HUMAN)~
EXIT

CHAIN IF ~GlobalGT("ANkors","GLOBAL",2) Global("ANshakal","GLOBAL",0) PartyGoldGT(699)~ THEN ANshakal ANShakalAfterTalk
@93 DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANshakal","GLOBAL",1)~
=@129
== PLAYER1 @94 DO ~AddexperienceParty(4000) TakePartyGold(700)~
== ANshakal @95
=@96
== PLAYER1 @97
== ANshakal @98
== PLAYER1 @99
== ANshakal @100
=@101
END
++ @102 DO ~SetGlobal("ANsisterDead","LOCALS",1)~ EXTERN ANshakal ANShakalAfterTalk1
++ @103 EXTERN ANshakal ANShakalAfterTalk2

CHAIN ANshakal ANShakalAfterTalk1
@104
=@106
== PLAYER1 @107
== ANcaytig @108 DO ~EscapeArea()~
== PLAYER1 @109
== ANorc1 @110 DO ~SetGlobal("ANshakal","GLOBAL",2) EscapeArea()~
== ANorc2 @110 DO ~EscapeArea()~
== PLAYER1 @111
EXIT

CHAIN ANshakal ANShakalAfterTalk2
@105
=@106
== PLAYER1 @107
== ANcaytig @108 DO ~EscapeArea()~
== PLAYER1 @109
== ANorc1 @110 DO ~SetGlobal("ANshakal","GLOBAL",2) EscapeArea()~
== ANorc2 @110 DO ~EscapeArea()~
== PLAYER1 @111
EXIT

// Встреча со Сборщиком
CHAIN 
IF ~Global("ANshakal","GLOBAL",5)~ THEN ANcaytig ANcaytigCollector
@116 DO ~SetGlobal("ANshakal","GLOBAL",6)~
== ANcoll1 @117
=@118
== PLAYER1 @119
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @120
== IF_FILE_EXISTS WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @121
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @122
== PLAYER1 @123
== ANcoll1 @124
=@125 DO ~ChangeEnemyAlly("ANcoll1",ENEMY) ChangeEnemyAlly("ANcoll2",ENEMY) ChangeEnemyAlly("ANcoll3",ENEMY) ChangeEnemyAlly("ANcoll4",ENEMY) ActionOverride("ANcoll1",Enemy())  ActionOverride("ANcoll2",Enemy())  ActionOverride("ANcoll3",Enemy()) ActionOverride("ANcoll4",Enemy())~
== IF_FILE_EXISTS 7XGarJ IF ~InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @146
== PLAYER1 @126 DO ~ActionOverride("ANcoll2",ApplySpell(Myself,WIZARD_STONE_SKIN)) ActionOverride("ANcoll2",ForceSpell(Player1,CLERIC_FLAME_STRIKE))~
EXIT

APPEND PLAYER1

IF ~Global("ANshakal","GLOBAL",6)~ THEN BEGIN ANColDeadTalk
SAY @128 
IF ~~ THEN DO ~SetGlobal("ANshakal","GLOBAL",7) AddJournalEntry(@1104,QUEST_DONE)~ EXIT
END

END

BEGIN ANmess1
IF ~Global("ANshakal","GLOBAL",10)~ THEN BEGIN ANbankcurier
SAY @148
IF ~~ THEN DO ~AddJournalEntry(@1106,QUEST) SetGlobal("ANshakal","GLOBAL",11) EscapeArea()~ EXIT
END

BEGIN ANshahba

IF ~~ THEN BEGIN ANshahbazPirateTalkYES
SAY @161 
IF ~~ THEN DO ~AddJournalEntry(@1105,QUEST) SetGlobal("ANpiratQuest","GLOBAL",1) SetGlobal("ANshakal","GLOBAL",13)~ EXIT
END

IF ~~ THEN BEGIN ANshahbazPirateTalk2
SAY @162 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANshahbazPirateTalk3
SAY @163
=@164 
IF ~~ THEN EXIT
END

IF ~OR(2) Global("ANshakal","GLOBAL",12) Global("ANshakal","GLOBAL",13)~ THEN BEGIN ANshahbazPirateTalkRethink
SAY @166 
IF ~Global("ANshakal","GLOBAL",12)~ THEN REPLY @165 GOTO ANshahbazPirateTalkYES
IF ~~ THEN REPLY @167 EXIT
END

CHAIN 
IF ~Global("ANshakal","GLOBAL",11)~ THEN ANshahba ANshahbazPirateTalk1
@149 DO ~EraseJournalEntry(@1106) SetGlobal("ANshakal","GLOBAL",12)~
== PLAYER1 @150
== ANshahba @151
== PLAYER1 @152
== ANshahba @153
== PLAYER1 @154
== ANshahba @155
== PLAYER1 @156
== ANshahba @157
END
IF ~~ THEN REPLY @158 EXTERN ANshahba ANshahbazPirateTalkYES
IF ~~ THEN REPLY @159 EXTERN ANshahba ANshahbazPirateTalk2
IF ~~ THEN REPLY @160 EXTERN ANshahba ANshahbazPirateTalk3

CHAIN
IF ~OR(2) Global("ANpiratQuest","GLOBAL",7) Global("ANpiratQuest","GLOBAL",8)~ THEN ANshahba ANshahbazPiratQuestFinal
@175 DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANpiratQuest","GLOBAL",9)~
=@168
== PLAYER1 @169
== ANshahba @170
== PLAYER1 @171
== ANshahba @172
== PLAYER1 @173
== ANshahba @174 DO ~EscapeArea()~
EXIT