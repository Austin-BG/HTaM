BEGIN ANmess2

IF ~Global("ThiefSpawn0","GLOBAL",2)~ BEGIN ANmess2Talk
  SAY @0 
IF ~~ THEN DO ~SetGlobal("ThiefSpawn0","GLOBAL",3) EscapeArea() AddJournalEntry(@1107,QUEST)~ REPLY @1 GOTO ANmess2Talk1
IF ~~ THEN DO ~SetGlobal("ThiefSpawn0","GLOBAL",3) EscapeArea() AddJournalEntry(@1107,QUEST)~ REPLY @2 GOTO ANmess2Talk1
END

IF ~~ BEGIN ANmess2Talk1
  SAY @3 
IF ~~ THEN EXIT
END

APPEND PLAYER1
IF WEIGHT #-99 ~Global("BeshabaCurse","GLOBAL",0) OR(2) AreaCheck("AR0305") AreaCheck("AR0306") Global("ThiefSpawn0","GLOBAL",3)~ BEGIN ANbeshabaGuild
  SAY @4 
IF ~~ THEN DO ~SetGlobal("BeshabaCurse","GLOBAL",1)~ EXIT
END
END

CHAIN
IF WEIGHT #-99 ~Global("BeshabaCurse","GLOBAL",1) Global("RenalJob","GLOBAL",4)~ THEN RENAL ANBeshabaRenalTalk
@5 DO ~SetGlobal("BeshabaCurse","GLOBAL",2)~
=@6
END
IF ~~ THEN REPLY @7 EXTERN RENAL ANBeshabaRenalTalk1
IF ~~ THEN REPLY @9 EXTERN RENAL ANBeshabaRenalTalk2
IF ~~ THEN REPLY @11 EXTERN RENAL ANBeshabaRenalTalk3

APPEND RENAL

IF ~~ BEGIN ANBeshabaRenalTalk1
  SAY @8 
IF ~Global("PlayerThiefGuild","GLOBAL",1)~ THEN GOTO ANBeshabaRenalTalk4_1
IF ~!Global("PlayerThiefGuild","GLOBAL",1)~ THEN GOTO ANBeshabaRenalTalk4_2
END

IF ~~ BEGIN ANBeshabaRenalTalk2
  SAY @10 
IF ~Global("PlayerThiefGuild","GLOBAL",1)~ THEN GOTO ANBeshabaRenalTalk4_1
IF ~!Global("PlayerThiefGuild","GLOBAL",1)~ THEN GOTO ANBeshabaRenalTalk4_2
END

IF ~~ BEGIN ANBeshabaRenalTalk3
  SAY @12 
IF ~Global("PlayerThiefGuild","GLOBAL",1)~ THEN GOTO ANBeshabaRenalTalk4_1
IF ~!Global("PlayerThiefGuild","GLOBAL",1)~ THEN GOTO ANBeshabaRenalTalk4_2
END

IF ~~ BEGIN ANBeshabaRenalTalk4_1
  SAY @13 
IF ~~ THEN GOTO ANBeshabaRenalTalk5
END

IF ~~ BEGIN ANBeshabaRenalTalk4_2
  SAY @14 
IF ~~ THEN GOTO ANBeshabaRenalTalk5
END

END

CHAIN RENAL ANBeshabaRenalTalk5
@15 
END
IF ~~ THEN REPLY @16 EXTERN RENAL ANBeshabaRenalTalk5-1
IF ~~ THEN REPLY @18 EXTERN RENAL ANBeshabaRenalTalk5-2
IF ~~ THEN REPLY @20 EXTERN RENAL ANBeshabaRenalTalk5-3

APPEND RENAL

IF ~~ BEGIN ANBeshabaRenalTalk5-1
  SAY @17
IF ~~ THEN GOTO ANBeshabaRenalTalk6 
END

IF ~~ BEGIN ANBeshabaRenalTalk5-2
  SAY @19 
IF ~~ THEN GOTO ANBeshabaRenalTalk6 
END

IF ~~ BEGIN ANBeshabaRenalTalk5-3
  SAY @21
IF ~~ THEN GOTO ANBeshabaRenalTalk6 
END

END

CHAIN RENAL ANBeshabaRenalTalk6 
@22
== IF_FILE_EXISTS O#BranJ IF ~InParty("O#Bran") InMyArea("O#Bran") !StateCheck("O#Bran",CD_STATE_NOTVALID)~ THEN @189
== IF_FILE_EXISTS 7XBRANJ IF ~InParty("7XBRAN") InMyArea("7XBRAN") !StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @189
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @190
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @190
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @191
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @192
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @193
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @194
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @194
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @195
== IF_FILE_EXISTS NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @196
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @197
== RENAL IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @198
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @199
== RENAL IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @200
== IF_FILE_EXISTS 7XMONTJ IF ~InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @201
== IF_FILE_EXISTS 7XsharJ IF ~InParty("7XSHAR") InMyArea("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN @202
END
IF ~~ THEN REPLY @23 EXTERN RENAL ANBeshabaRenalTalk6-1
IF ~~ THEN REPLY @25 EXTERN RENAL ANBeshabaRenalTalk6-2
IF ~~ THEN REPLY @27 EXTERN RENAL ANBeshabaRenalTalk6-3


APPEND RENAL

IF ~~ BEGIN ANBeshabaRenalTalk6-1
  SAY @24
IF ~~ THEN GOTO ANBeshabaRenalTalk7 
END

IF ~~ BEGIN ANBeshabaRenalTalk6-2
  SAY @26 
IF ~~ THEN GOTO ANBeshabaRenalTalk7 
END

IF ~~ BEGIN ANBeshabaRenalTalk6-3
  SAY @28
IF ~~ THEN GOTO ANBeshabaRenalTalk7 
END

IF ~~ BEGIN ANBeshabaRenalTalk7
  SAY @29
IF ~~ THEN DO ~AddJournalEntry(@1108,QUEST)~ EXIT
END

END

APPEND PLAYER1
IF WEIGHT #-99 ~Global("BeshabaCurse","GLOBAL",3) AreaType(OUTDOOR)~ BEGIN ANbeshabaGuildAfter
  SAY @30 
IF ~~ THEN DO ~SetGlobal("BeshabaCurse","GLOBAL",4)~ EXIT
END
END

BEGIN ANwoman1
IF ~Global("ANbeshabaWomanExists","AR0902",1)~ BEGIN ANbeshabaWomanTalk
  SAY @31 
IF ~~ THEN DO ~SetGlobal("ANbeshabaWomanExists","AR0902",2)~ REPLY @32 GOTO ANbeshabaWomanTalk-1
IF ~~ THEN DO ~SetGlobal("ANbeshabaWomanExists","AR0902",2)~ REPLY @34 GOTO ANbeshabaWomanTalk-2
IF ~~ THEN DO ~SetGlobal("ANbeshabaWomanExists","AR0902",2)~ REPLY @36 GOTO ANbeshabaWomanTalk-3
END

IF ~~ BEGIN ANbeshabaWomanTalk-1
  SAY @33
IF ~~ THEN DO ~EscapeArea()~ GOTO ANbeshabaWomanTalk-4 
END

IF ~~ BEGIN ANbeshabaWomanTalk-2
  SAY @35 
IF ~~ THEN DO ~EscapeArea()~ GOTO ANbeshabaWomanTalk-4 
END

IF ~~ BEGIN ANbeshabaWomanTalk-3
  SAY @37
IF ~~ THEN DO ~EscapeArea()~ GOTO ANbeshabaWomanTalk-4  
END

IF ~~ BEGIN ANbeshabaWomanTalk-4
  SAY @38
IF ~~ THEN EXIT 
END

BEGIN ANbesha1

IF ~Global("ANbeshabaPaladinExists","AR0900",3)~ BEGIN ANbeshabaManTalk
  SAY @39
=@40
IF ~~ THEN DO ~SetGlobal("ANbeshabaPaladinExists","AR0900",4)~ EXIT 
END

APPEND PLAYER1
IF WEIGHT #-99 ~Global("ANbeshabaPaladinExists","AR0900",5)  AreaCheck("AR0900")~ BEGIN ANbeshabaManSee
  SAY @41 
IF ~~ THEN DO ~SetGlobal("ANbeshabaPaladinExists","AR0900",6)~ REPLY @42 GOTO ANbeshabaManSee1
IF ~~ THEN DO ~SetGlobal("ANbeshabaPaladinExists","AR0900",6)~ REPLY @44 GOTO ANbeshabaManSee2
IF ~~ THEN DO ~SetGlobal("ANbeshabaPaladinExists","AR0900",6)~ REPLY @46 GOTO ANbeshabaManSee3
END

IF ~~ BEGIN ANbeshabaManSee1
  SAY @43
IF ~~ THEN EXTERN ANpalad1 ANbeshabaManSee4
END

IF ~~ BEGIN ANbeshabaManSee2
  SAY @45 
IF ~~ THEN EXTERN ANpalad1 ANbeshabaManSee4 
END

IF ~~ BEGIN ANbeshabaManSee3
  SAY @47
IF ~~ THEN EXTERN ANpalad1 ANbeshabaManSee4 
END

END

BEGIN ANpalad1
IF ~~ BEGIN ANbeshabaManSee4
  SAY @48
IF ~~ THEN REPLY @49 GOTO ANbeshabaManSee4-1
IF ~~ THEN REPLY @51 GOTO ANbeshabaManSee4-2
IF ~~ THEN REPLY @53 GOTO ANbeshabaManSee4-3
END

IF ~~ BEGIN ANbeshabaManSee4-1
  SAY @50
IF ~OR(3) Class(Player1,CLERIC_ALL) CheckStatGT(Player1,12,WIS) CheckStatGT(Player1,12,INT)~ THEN REPLY @55 GOTO ANbeshabaManSee5-1
IF ~~ THEN REPLY @57 GOTO ANbeshabaManSee5-2
IF ~~ THEN REPLY @59 GOTO ANbeshabaManSee5-3
END

IF ~~ BEGIN ANbeshabaManSee4-2
  SAY @52 
IF ~OR(3) Class(Player1,CLERIC_ALL) CheckStatGT(Player1,12,WIS) CheckStatGT(Player1,12,INT)~ THEN REPLY @55 GOTO ANbeshabaManSee5-1
IF ~~ THEN REPLY @57 GOTO ANbeshabaManSee5-2
IF ~~ THEN REPLY @59 GOTO ANbeshabaManSee5-3
END

IF ~~ BEGIN ANbeshabaManSee4-3
  SAY @54
IF ~OR(3) Class(Player1,CLERIC_ALL) CheckStatGT(Player1,12,WIS) CheckStatGT(Player1,12,INT)~ THEN REPLY @55 GOTO ANbeshabaManSee5-1
IF ~~ THEN REPLY @57 GOTO ANbeshabaManSee5-2
IF ~~ THEN REPLY @59 GOTO ANbeshabaManSee5-3
END

IF ~~ BEGIN ANbeshabaManSee5-1
  SAY @56
IF ~~ THEN GOTO ANbeshabaManSee6
END

IF ~~ BEGIN ANbeshabaManSee5-2
  SAY @58 
IF ~~ THEN GOTO ANbeshabaManSee6 
END

IF ~~ BEGIN ANbeshabaManSee5-3
  SAY @60
IF ~~ THEN GOTO ANbeshabaManSee6 
END

IF ~~ BEGIN ANbeshabaManSee6
  SAY @61
=@62  
IF ~~ THEN REPLY @63 GOTO ANbeshabaManSee6-1
IF ~~ THEN REPLY @65 GOTO ANbeshabaManSee6-2
IF ~~ THEN REPLY @67 GOTO ANbeshabaManSee6-3
END

IF ~~ BEGIN ANbeshabaManSee6-1
  SAY @64
IF ~~ THEN GOTO ANbeshabaManSee7
END

IF ~~ BEGIN ANbeshabaManSee6-2
  SAY @66 
IF ~~ THEN GOTO ANbeshabaManSee7
END

IF ~~ BEGIN ANbeshabaManSee6-3
  SAY @68
IF ~~ THEN GOTO ANbeshabaManSee7
END

IF ~~ BEGIN ANbeshabaManSee7
  SAY @69
=@70  
IF ~~ THEN REPLY @71 GOTO ANbeshabaManSee7-1
IF ~~ THEN REPLY @73 GOTO ANbeshabaManSee7-2
END

IF ~~ BEGIN ANbeshabaManSee7-1
  SAY @72
IF ~~ THEN GOTO ANbeshabaManSee8
END

IF ~~ BEGIN ANbeshabaManSee7-2
  SAY @74 
IF ~~ THEN GOTO ANbeshabaManSee8
END

IF ~~ BEGIN ANbeshabaManSee8
  SAY @75 
IF ~~ THEN REPLY @76 DO ~SetGlobal("BeshabaCurse","GLOBAL",5) EscapeArea() AddJournalEntry(@1109,QUEST)~ GOTO ANbeshabaManSee8-1
IF ~~ THEN REPLY @78 DO ~SetGlobal("BeshabaCurse","GLOBAL",5) EscapeArea() AddJournalEntry(@1109,QUEST)~ GOTO ANbeshabaManSee8-2
IF ~~ THEN REPLY @80 DO ~SetGlobal("BeshabaCurse","GLOBAL",5) EscapeArea() AddJournalEntry(@1109,QUEST)~ GOTO ANbeshabaManSee8-3
END

IF ~~ BEGIN ANbeshabaManSee8-1
  SAY @77
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANbeshabaManSee8-2
  SAY @79 
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANbeshabaManSee8-3
  SAY @81
IF ~~ THEN EXIT
END

APPEND RENAL
IF WEIGHT #-98 ~OR(2) Global("BeshabaCurse","GLOBAL",3) Global("BeshabaCurse","GLOBAL",4)~ BEGIN ANBeshabaRenalTalkNoInfo
  SAY @82
IF ~~ THEN REPLY @83 GOTO ANBeshabaRenalTalkNoInfo1
END

IF ~~ BEGIN ANBeshabaRenalTalkNoInfo1
  SAY @84
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANbeshabaGieRenal_1
  SAY @87
IF ~~ THEN REPLY @88 GOTO ANbeshabaGieRenal_2
IF ~~ THEN REPLY @90 GOTO ANbeshabaGieRenal_3
END

IF ~~ BEGIN ANbeshabaGieRenal_2
  SAY @89
IF ~~ THEN EXTERN PLAYER1 ANbeshabaGieRenal_4
END

IF ~~ BEGIN ANbeshabaGieRenal_3
  SAY @91
IF ~~ THEN EXTERN PLAYER1 ANbeshabaGieRenal_4
END

END

BEGIN ANgie1
IF ~Global("BeshabaCurse","GLOBAL",6)~ BEGIN ANbeshabaGieRenal
  SAY @85
=@86  
IF ~~ THEN EXTERN RENAL ANbeshabaGieRenal_1
END

CHAIN PLAYER1 ANbeshabaGieRenal_4
@92
== RENAL @93
== PLAYER1 @94
== ANgie1 @95
END
IF ~~ THEN REPLY @96 EXTERN RENAL ANbeshabaGieRenal_5
IF ~~ THEN REPLY @97 EXTERN RENAL ANbeshabaGieRenal_5
IF ~~ THEN REPLY @98 EXTERN RENAL ANbeshabaGieRenal_5

CHAIN RENAL ANbeshabaGieRenal_5
@99
== ANgie1 @100
=@101
== RENAL @102
== ANgie1 @103
== RENAL @104
== ANgie1 @105 DO ~EscapeArea()~
== RENAL @106
=@107
END
IF ~~ THEN DO ~SetGlobal("BeshabaCurse","GLOBAL",7) AddJournalEntry(@1110,QUEST)~ REPLY @108 EXTERN RENAL ANbeshabaGieRenal_6
IF ~~ THEN DO ~SetGlobal("BeshabaCurse","GLOBAL",7) AddJournalEntry(@1110,QUEST)~ REPLY @109 EXTERN RENAL ANbeshabaGieRenal_6
IF ~~ THEN DO ~SetGlobal("BeshabaCurse","GLOBAL",99) AddJournalEntry(@1111,QUEST_DONE) GiveGoldForce(2000) AddexperienceParty(1000)~ REPLY @111 EXTERN RENAL ANbeshabaGieRenal_7
IF ~~ THEN DO ~SetGlobal("BeshabaCurse","GLOBAL",99) AddJournalEntry(@1111,QUEST_DONE) GiveGoldForce(2000) AddexperienceParty(1000)~ REPLY @112 EXTERN RENAL ANbeshabaGieRenal_7

APPEND RENAL
IF ~~ BEGIN ANbeshabaGieRenal_6
  SAY @110
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANbeshabaGieRenal_7
  SAY @113
IF ~~ THEN EXIT
END

END

APPEND ARAN
IF WEIGHT #-99 ~Global("BeshabaCurse","GLOBAL",7) NumTimesTalkedToGT(0)~ BEGIN ANBeshabaAranTalk
  SAY @114
IF ~~ THEN DO ~SetGlobal("BeshabaCurse","GLOBAL",8)~ REPLY @115 GOTO ANBeshabaAranTalk1
IF ~~ THEN DO ~SetGlobal("BeshabaCurse","GLOBAL",8)~ REPLY @116 GOTO ANBeshabaAranTalk1
END

IF ~~ BEGIN ANBeshabaAranTalk1
  SAY @117
=@118
=@119
IF ~~ THEN REPLY @120 GOTO ANBeshabaAranTalk2
IF ~~ THEN REPLY @121 GOTO ANBeshabaAranTalk3
IF ~~ THEN REPLY @123 GOTO ANBeshabaAranTalk4
END

IF ~~ BEGIN ANBeshabaAranTalk2
  SAY @203
IF ~~ THEN GOTO ANBeshabaAranTalk5
END

IF ~~ BEGIN ANBeshabaAranTalk3
  SAY @122
IF ~~ THEN GOTO ANBeshabaAranTalk5
END

IF ~~ BEGIN ANBeshabaAranTalk4
  SAY @124
IF ~~ THEN GOTO ANBeshabaAranTalk5
END

IF ~~ BEGIN ANBeshabaAranTalk5
  SAY @125
IF ~~ THEN REPLY @126 GOTO ANBeshabaAranTalk5_1
IF ~~ THEN REPLY @127 GOTO ANBeshabaAranTalk5_1
IF ~~ THEN REPLY @130 GOTO ANBeshabaAranTalk5_2
END

IF ~~ BEGIN ANBeshabaAranTalk5_1
  SAY @128
=@129
IF ~~ THEN REPLY @133 GOTO ANBeshabaAranTalk6
IF ~~ THEN REPLY @134 GOTO ANBeshabaAranTalk6
END

IF ~~ BEGIN ANBeshabaAranTalk5_2
  SAY @131
=@132  
IF ~~ THEN REPLY @133 GOTO ANBeshabaAranTalk6
IF ~~ THEN REPLY @134 GOTO ANBeshabaAranTalk6
END

IF ~~ BEGIN ANBeshabaAranTalk6
  SAY @135
IF ~~ THEN REPLY @137 GOTO ANBeshabaAranTalk7
IF ~~ THEN REPLY @138 GOTO ANBeshabaAranTalk7  
IF ~~ THEN DO ~SetGlobal("BeshabaCurse","GLOBAL",99) AddJournalEntry(@1111,QUEST_DONE) GiveGoldForce(2000) AddexperienceParty(1000)~ REPLY @145 GOTO ANBeshabaAranTalk8 
IF ~OR(3) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) OR(2) Class(Player1,THIEF) Class(Player1,THIEF_ALL) Gender(Player1,FEMALE) CheckStatGT(Player1,8,CHR) CheckStatGT(Player1,12,INT)~ THEN GOTO ANBeshabaAranTalk7Romance
END

IF ~~ BEGIN ANBeshabaAranTalk7Romance
  SAY @135
IF ~~ THEN REPLY @140 GOTO ANBeshabaAranTalk7Romance1
IF ~~ THEN REPLY @137 GOTO ANBeshabaAranTalk7
IF ~~ THEN REPLY @138 GOTO ANBeshabaAranTalk7
IF ~~ THEN DO ~SetGlobal("BeshabaCurse","GLOBAL",99) AddJournalEntry(@1111,QUEST_DONE) GiveGoldForce(2000) AddexperienceParty(1000)~ REPLY @145 GOTO ANBeshabaAranTalk8 
END

IF ~~ BEGIN ANBeshabaAranTalk7
  SAY @139
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANBeshabaAranTalk7Romance1
  SAY @141
=@142
=@143
=@144
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANBeshabaAranTalk8
  SAY @146
IF ~~ THEN EXIT
END

END

APPEND PLAYER1
IF WEIGHT #-99 ~Global("BeshabaCurse","GLOBAL",8)~ BEGIN ANBeshabaAfterAranTalk
  SAY @147
IF ~~ THEN DO ~AddJournalEntry(@1112,QUEST) SetGlobal("BeshabaCurse","GLOBAL",9)~ EXIT
END
END

APPEND RENAL
IF WEIGHT #-99 ~Global("BeshabaCurse","GLOBAL",9)~ BEGIN ANBeshabaRenalTalkAfterAran
  SAY @148
IF ~~ THEN DO ~SetGlobal("BeshabaCurse","GLOBAL",10) AddJournalEntry(@1113,QUEST)~ REPLY @149 GOTO ANBeshabaRenalTalkAfterAran1
END

IF ~~ BEGIN ANBeshabaRenalTalkAfterAran1
  SAY @150
 =@151 
IF ~~ THEN EXIT
END
END

BEGIN Anlania
IF ~Global("BeshabaCurse","GLOBAL",10)~ BEGIN ANBeshabaLaniaTalk
  SAY @152
IF ~~ THEN REPLY @153 GOTO ANBeshabaLaniaTalk1
IF ~~ THEN REPLY @154 GOTO ANBeshabaLaniaTalk1
END

IF ~~ BEGIN ANBeshabaLaniaTalk1
  SAY @155
IF ~~ THEN REPLY @156 GOTO ANBeshabaLaniaTalk2
IF ~~ THEN REPLY @160 GOTO ANBeshabaLaniaTalk3
IF ~~ THEN REPLY @164 GOTO ANBeshabaLaniaTalk4
END

IF ~~ BEGIN ANBeshabaLaniaTalk2
  SAY @157
IF ~~ THEN REPLY @158 GOTO ANBeshabaLaniaTalk2_1
END

IF ~~ BEGIN ANBeshabaLaniaTalk2_1
  SAY @159
IF ~~ THEN REPLY @168 GOTO ANBeshabaLaniaTalk5
IF ~~ THEN REPLY @169 GOTO ANBeshabaLaniaTalk5
IF ~~ THEN REPLY @170 GOTO ANBeshabaLaniaTalk5
END

IF ~~ BEGIN ANBeshabaLaniaTalk3
  SAY @161
IF ~~ THEN REPLY @162 GOTO ANBeshabaLaniaTalk3_1
END

IF ~~ BEGIN ANBeshabaLaniaTalk3_1
  SAY @163
IF ~~ THEN REPLY @168 GOTO ANBeshabaLaniaTalk5
IF ~~ THEN REPLY @169 GOTO ANBeshabaLaniaTalk5
IF ~~ THEN REPLY @170 GOTO ANBeshabaLaniaTalk5
END

IF ~~ BEGIN ANBeshabaLaniaTalk4
  SAY @165
IF ~~ THEN REPLY @166 GOTO ANBeshabaLaniaTalk4_1
END

IF ~~ BEGIN ANBeshabaLaniaTalk4_1
  SAY @167
IF ~~ THEN REPLY @168 GOTO ANBeshabaLaniaTalk5
IF ~~ THEN REPLY @169 GOTO ANBeshabaLaniaTalk5
IF ~~ THEN REPLY @170 GOTO ANBeshabaLaniaTalk5
END

IF ~~ BEGIN ANBeshabaLaniaTalk5
  SAY @171
IF ~~ THEN REPLY @172 GOTO ANBeshabaLaniaTalk6
IF ~~ THEN REPLY @173 GOTO ANBeshabaLaniaTalk6
END

IF ~~ BEGIN ANBeshabaLaniaTalk6
  SAY @174
=@175
IF ~~ THEN DO ~SetGlobal("BeshabaCurse","GLOBAL",11) EscapeArea()~ REPLY @176 GOTO ANBeshabaLaniaTalk7
IF ~~ THEN REPLY @178 GOTO ANBeshabaLaniaTalk8
END

IF ~~ BEGIN ANBeshabaLaniaTalk7
  SAY @177
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANBeshabaLaniaTalk8
  SAY @179
IF ~~ THEN DO ~SetGlobal("BeshabaCurse","GLOBAL",12) Kill(Myself)~ REPLY @180 GOTO ANBeshabaLaniaTalk9
IF ~~ THEN DO ~SetGlobal("BeshabaCurse","GLOBAL",11) EscapeArea()~ REPLY @181 GOTO ANBeshabaLaniaTalk10
END

IF ~~ BEGIN ANBeshabaLaniaTalk10
  SAY @183
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANBeshabaLaniaTalk9
  SAY @182
IF ~~ THEN EXIT
END

APPEND RENAL
IF WEIGHT #-99 ~OR(2) Global("BeshabaCurse","GLOBAL",11) Global("BeshabaCurse","GLOBAL",15) Global("BeshabaCurseRenalFinal","AR0306",0)~ BEGIN ANBeshabaRenalFinalTalk1
  SAY @184
IF ~~ THEN DO ~SetGlobal("BeshabaCurseRenalFinal","AR0306",1)~ EXIT
END

IF WEIGHT #-99 ~OR(2) Global("BeshabaCurse","GLOBAL",12) Global("BeshabaCurse","GLOBAL",15) Global("BeshabaCurseRenalFinal","AR0306",0)~ BEGIN ANBeshabaRenalFinalTalk2
  SAY @185
IF ~~ THEN DO ~SetGlobal("BeshabaCurseRenalFinal","AR0306",1)~ EXIT
END
END

APPEND ARAN
IF WEIGHT #-99 ~OR(2) Global("BeshabaCurse","GLOBAL",11) Global("BeshabaCurse","GLOBAL",12)~ BEGIN ANBeshabaAranFinalTalk
  SAY @186
IF ~~ THEN DO ~SetGlobal("BeshabaCurse","GLOBAL",15) AddJournalEntry(@1114,QUEST_DONE) GiveGoldForce(3000) AddexperienceParty(2000)~ GOTO ANBeshabaAranFinalTalk1
END

IF ~~ BEGIN ANBeshabaAranFinalTalk1
  SAY @187
IF ~~ THEN EXIT  
IF ~OR(3) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) OR(2) Class(Player1,THIEF) Class(Player1,THIEF_ALL) Gender(Player1,FEMALE) CheckStatGT(Player1,8,CHR) CheckStatGT(Player1,12,INT)~ THEN GOTO ANBeshabaAranFinalTalk2
END

IF ~~ BEGIN ANBeshabaAranFinalTalk2
  SAY @188
IF ~~ THEN EXIT
END
END