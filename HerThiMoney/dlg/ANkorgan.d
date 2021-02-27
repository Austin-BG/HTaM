ALTER_TRANS KORGANJ
BEGIN 202 END //STATE # - после которого надо вставить реплику
BEGIN 0  END //RESPONSE # - 0 - первый ответ(т.к. следующая реплика принадлежит тому же персонажу, всегда 0)
BEGIN "TRIGGER" ~Global("ANkors","GLOBAL",0)~ "ACTION" ~ActionOverride(Player1,SetDialog("PLAYER1"))~ "EPILOGUE" ~GOTO ANkorganBank~  END //вставка нового STATE

APPEND KORGANJ

IF ~GlobalTimerExpired("KorganContract","GLOBAL") Global("KorMentionedContract","LOCALS",1) Global("ANkors","GLOBAL",0)~ THEN BEGIN ANkorganBankAlternateStart
  SAY @36
=@0  
= @1   
IF ~~ THEN DO ~SetGlobal("KorMentionedContract","LOCALS",2)~ EXTERN PLAYER1 ANkorganBank1
END

IF ~~ THEN BEGIN ANkorganBank
  SAY @0
= @1   
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ EXTERN PLAYER1 ANkorganBank1
END

IF ~~ THEN BEGIN ANkorganBank2
  SAY @4 
IF ~~ THEN REPLY @5 + ANkorganBank2.1
IF ~~ THEN REPLY @6 + ANkorganBank2.2
IF ~~ THEN REPLY @7 + ANkorganBank2.3
IF ~~ THEN REPLY @8 + ANkorganBank2.4
IF ~~ THEN REPLY @9 + ANkorganBank2.5
END

IF ~~ THEN BEGIN ANkorganBank2.1
  SAY @10 
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ EXTERN PLAYER1 ANkorganBankEnd
END

IF ~~ THEN BEGIN ANkorganBank2.2
  SAY @12 
IF ~!IsValidForPartyDialog("Minsc")~ THEN REPLY @13 + ANkorganBank2.2.1
IF ~!IsValidForPartyDialog("Minsc")~ THEN REPLY @14 + ANkorganBank2.2.2
IF ~IsValidForPartyDialog("Minsc") Global("ANkorganMinscCreditTalk","GLOBAL",0)~ THEN EXTERN MINSCJ ANkorganBankMinsc
END

IF ~~ THEN BEGIN ANkorganBank2.2.1
  SAY @15 
IF ~~ THEN DO ~ChangeAIScript("",DEFAULT) SetLeavePartyDialogueFile() LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ANkorganBank2.2.2
  SAY @16 
IF ~!IsValidForPartyDialog("Jaheira")~ THEN DO ~AddJournalEntry(@1014,QUEST) SetGlobal("ANDwarfCreditPay","GLOBAL",1)~ EXIT
IF ~IsValidForPartyDialog("Jaheira")~ THEN EXTERN JAHEIRAJ ANkorganBankJaheira
END

IF ~~ THEN BEGIN ANkorganBank2.3
  SAY @19 
IF ~~ THEN DO ~ChangeAIScript("",DEFAULT) SetLeavePartyDialogueFile() LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ANkorganBank2.4
  SAY @17 
IF ~~ THEN DO ~ChangeAIScript("",DEFAULT) SetLeavePartyDialogueFile() LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ANkorganBank2.5
  SAY @18 
IF ~~ THEN DO ~AddJournalEntry(@1013,QUEST) SetGlobal("ANDwarfCreditNoPay","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN ANkorganBankMinsc1
  SAY @137
IF ~~ THEN REPLY @13 + ANkorganBank2.2.1
IF ~~ THEN REPLY @14 + ANkorganBank2.2.2
END

IF ~~ THEN BEGIN ANkorganBankJaheira1
  SAY @136
IF ~~ THEN DO ~AddJournalEntry(@1014,QUEST) SetGlobal("ANDwarfCreditPay","GLOBAL",1)~ EXIT
END

END

APPEND MINSCJ
IF ~~ THEN BEGIN ANkorganBankMinsc
  SAY @135
IF ~~ THEN EXTERN KORGANJ ANkorganBankMinsc1
END
END

APPEND JAHEIRAJ
IF ~~ THEN BEGIN ANkorganBankJaheira
  SAY @134
IF ~~ THEN EXTERN KORGANJ ANkorganBankJaheira1
END
END

APPEND PLAYER1

IF ~~ THEN BEGIN ANkorganBank1
  SAY @3 
IF ~~ THEN EXTERN KORGANJ ANkorganBank2
END 

IF ~~ THEN BEGIN ANkorganBankEnd
  SAY @11 
IF ~~ THEN 
DO ~ActionOverride("Korgan",ChangeAIScript("",DEFAULT)) 
ActionOverride("Korgan",SetLeavePartyDialogueFile()) 
ActionOverride("Korgan",LeaveParty())
ActionOverride("Korgan",EscapeArea())~ EXIT
END 

END

BEGIN ANyant
BEGIN ANJock
BEGIN ANesra

BEGIN ANjalut
IF ~~ THEN BEGIN ANOwniPayFriend_2
  SAY @82 
IF ~~ THEN EXTERN ANOwni ANOwniPayFriend_3
END

CHAIN 
IF ~Global("ANcollectorOwniDead","GLOBAL",1)~ THEN ANjalut ANOwniJalutDeadTalk
@104 DO ~SetGlobal("ANcollectorOwniDead","GLOBAL",2) SetGlobal("ANDwarfCreditNoEscape","AN0060",1) GiveItemCreate("ANveksl",Player1,1,0,0) SetGlobal("ANDwarfCreditPay","GLOBAL",3) AddJournalEntry(@1021,QUEST_DONE)~
EXIT

CHAIN 
IF ~Global("ANcollectorOwniDead","GLOBAL",1)~ THEN ANJock ANOwniJockDeadTalk
@127 DO ~SetGlobal("ANcollectorOwniDead","GLOBAL",2) SetGlobal("ANDwarfCreditNoEscape","AN0060",1) GiveItemCreate("ANveksl",Player1,1,0,0) SetGlobal("ANDwarfCreditPay","GLOBAL",3) AddJournalEntry(@1021,QUEST_DONE)~
EXIT

CHAIN 
IF ~Global("ANcollectorOwniDead","GLOBAL",1)~ THEN ANesra ANOwniEsraDeadTalk
@129 DO ~SetGlobal("ANcollectorOwniDead","GLOBAL",2) SetGlobal("ANDwarfCreditNoEscape","AN0060",1) GiveItemCreate("ANveksl",Player1,1,0,0) SetGlobal("ANDwarfCreditPay","GLOBAL",3) AddJournalEntry(@1021,QUEST_DONE)~
EXIT

CHAIN 
IF ~Global("ANcollectorOwniDead","GLOBAL",1)~ THEN ANyant ANOwniYantDeadTalk
@128
=@129 DO ~SetGlobal("ANcollectorOwniDead","GLOBAL",2) SetGlobal("ANDwarfCreditNoEscape","AN0060",1) GiveItemCreate("ANveksl",Player1,1,0,0) SetGlobal("ANDwarfCreditPay","GLOBAL",3) AddJournalEntry(@1021,QUEST_DONE)~
EXIT

BEGIN ANcoll1

// Оуни 
BEGIN ANOwni

// Первая встреча

IF ~~ THEN BEGIN ANOwniPayFriend_1
  SAY @73
IF ~Dead("ANjalut")~ THEN GOTO ANOwniPayFriend_3
IF ~!Dead("ANjalut")~ THEN EXTERN ANjalut ANOwniPayFriend_2
END

IF ~AreaCheck("AN0060") OR(2) Global("ANDwarfCreditPay","GLOBAL",3) Global("ANDwarfCreditPay","GLOBAL",4) OR(4) Dead("ANJock") Dead("ANyant") Dead("ANesra") Dead("ANjalut")~ THEN BEGIN ANOwniPartyDead
  SAY @105
IF ~~ THEN EXIT
END

CHAIN  
IF ~Global("ANowniFirstTalk","AN0060",1) Global("ANDwarfCreditPayPart","GLOBAL",0)~ 
THEN ANOwni ANOwniTalk1
@20 DO ~ActionOverride(Player1,SetDialog("Player1")) SetGlobal("ANowniFirstTalk","AN0060",2)~
== KORGANJ @21
== PLAYER1 @22
=@23
== ANOwni @24
= @83
== PLAYER1 @25
== ANOwni @26
== PLAYER1 @27
== ANOwni @28
END
IF ~Global("ANDwarfCreditNoPay","GLOBAL",1)~ THEN DO ~SetGlobal("ANDwarfCreditNoPay","GLOBAL",2) ActionOverride(Player1,SetDialog("Player1"))~ REPLY @29 + ANOwniBattle
IF ~Global("ANDwarfCreditPay","GLOBAL",1)~ THEN DO ~SetGlobal("ANDwarfCreditPay","GLOBAL",2) ActionOverride(Player1,SetDialog("Player1"))~ REPLY @30 + ANOwniTalk2

CHAIN 
IF ~~ THEN ANOwni ANOwniTalk2
@35
== PLAYER1 @36 DO ~SetGlobal("ANOwniCharnameName","AN0060",1)~
== ANOwni @37
= @38
== KORGANJ @39
== PLAYER1 @40
== KORGANJ @41
== ANOwni @42
END
IF ~PartyGoldGT(4999)~ THEN REPLY @43 + ANOwniPayAll1
IF ~PartyGoldGT(999)~ THEN REPLY @44 + ANOwniPayPart1
IF ~~ THEN REPLY @48 + ANOwniBattle2
IF ~~ THEN REPLY @50 + ANOwniBattle2


// Драка (до ранения)
CHAIN 
IF ~~ THEN ANOwni ANOwniBattle
@31
== PLAYER1 @32 
== ANOwni @33 DO ~ChangeEnemyAlly(Myself,EVILCUTOFF) Enemy()~
== PLAYER1 @34 
EXIT

CHAIN 
IF ~~ THEN ANOwni ANOwniBattle2
@49 DO ~ChangeEnemyAlly(Myself,EVILCUTOFF) Enemy()~
EXIT

// Драка (насмерть)
CHAIN 
IF ~~ THEN ANOwni ANOwniBattle3
@49 DO ~SetGlobal("ANownyStop","GLOBAL",3) ChangeEnemyAlly(Myself,EVILCUTOFF) Enemy()~
EXIT


// Недельные выплаты
CHAIN 
IF ~~ THEN ANOwni ANOwniPayPart1
@45
== PLAYER1 @46
== ANOwni @52
== PLAYER1 @53
== ANOwni @55
== PLAYER1 @56
== ANOwni @57
== PLAYER1 @58
== ANOwni @59
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @60
== ANOwni @61
= @62
== PLAYER1 IF ~InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @63
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @64
= @65
== PLAYER1 IF ~InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @66
== ANOwni @67
END
IF ~~ THEN REPLY @68 + ANOwniPayFriend_1
IF ~~ THEN REPLY @69 + ANOwniPayPart2

CHAIN 
IF ~~ THEN ANOwni ANOwniPayPart2
@70
== PLAYER1 @71
= @54 DO ~TakePartyGold(1000) SetGlobal("ANDwarfCreditPayPart","GLOBAL",1) SetGlobal("ANDwarfCreditPayPart1","AN0060",1) AddJournalEntry(@1017,QUEST)~ 
== ANOwni @51 DO ~EscapeArea() ActionOverride("ANjalut",EscapeArea()) ActionOverride("ANesra",EscapeArea()) ActionOverride("ANyant",EscapeArea()) ActionOverride("ANJock",EscapeArea()) SetGlobal("ANDwarfCreditNoEscape","AN0060",1) SetGlobal("ANOwniExists","AN0060",2) SetGlobal("ANDwarfCreditPayPartExist","GLOBAL",1)~
EXIT

CHAIN 
IF ~~ THEN ANOwni ANOwniPayPart2_week2
@108
== PLAYER1 @54 DO ~TakePartyGold(1000) IncrementGlobal("ANDwarfCreditPayPart","GLOBAL",1) SetGlobal("ANDwarfCreditPayPart2","AN0060",1) SetGlobal("ANDwarfCreditNoEscape","AN0060",0)~ 
== ANOwni @109 DO ~EscapeArea() ActionOverride("ANjalut",EscapeArea()) ActionOverride("ANesra",EscapeArea()) ActionOverride("ANyant",EscapeArea()) ActionOverride("ANJock",EscapeArea()) SetGlobal("ANDwarfCreditNoEscape","AN0060",1) SetGlobal("ANOwniExists","AN0060",4) SetGlobal("ANCreditPayPartTalk","GLOBAL",0)~
EXIT

CHAIN 
IF ~~ THEN ANOwni ANOwniPayPart2_week3
@110
== PLAYER1 @54 DO ~TakePartyGold(1000) IncrementGlobal("ANDwarfCreditPayPart","GLOBAL",1) SetGlobal("ANDwarfCreditPayPart3","AN0060",1) SetGlobal("ANDwarfCreditNoEscape","AN0060",0)~ 
== ANOwni @109 DO ~EscapeArea() ActionOverride("ANjalut",EscapeArea()) ActionOverride("ANesra",EscapeArea()) ActionOverride("ANyant",EscapeArea()) ActionOverride("ANJock",EscapeArea()) SetGlobal("ANDwarfCreditNoEscape","AN0060",1) SetGlobal("ANOwniExists","AN0060",6) SetGlobal("ANCreditPayPartTalk","GLOBAL",0)~
EXIT

CHAIN 
IF ~~ THEN ANOwni ANOwniPayPart2_week4
@110
== PLAYER1 @54 DO ~TakePartyGold(1000) IncrementGlobal("ANDwarfCreditPayPart","GLOBAL",1) SetGlobal("ANDwarfCreditPayPart4","AN0060",1) SetGlobal("ANDwarfCreditNoEscape","AN0060",0)~ 
== ANOwni @109 DO ~EscapeArea() ActionOverride("ANjalut",EscapeArea()) ActionOverride("ANesra",EscapeArea()) ActionOverride("ANyant",EscapeArea()) ActionOverride("ANJock",EscapeArea()) SetGlobal("ANDwarfCreditNoEscape","AN0060",1) SetGlobal("ANOwniExists","AN0060",8) SetGlobal("ANCreditPayPartTalk","GLOBAL",0)~
EXIT

CHAIN 
IF ~Global("ANDwarfCreditPayPart","GLOBAL",1)~ THEN ANOwni ANOwniTalkPaypart3
@106
END
IF ~PartyGoldGT(3999)~ THEN DO ~SetGlobal("ANCreditPayPartTalk","GLOBAL",1)~ REPLY @43 + ANOwniPayAll3_1
IF ~PartyGoldGT(999)~ THEN DO ~SetGlobal("ANCreditPayPartTalk","GLOBAL",1)~ REPLY @107 + ANOwniPayPart2_week2
IF ~~ THEN DO ~SetGlobal("ANCreditPayPartTalk","GLOBAL",1)~ REPLY @48 + ANOwniBattle3
IF ~~ THEN DO ~SetGlobal("ANCreditPayPartTalk","GLOBAL",1)~ REPLY @50 + ANOwniBattle3

CHAIN 
IF ~Global("ANDwarfCreditPayPart","GLOBAL",2)~ THEN ANOwni ANOwniTalkPaypart4
@106
END
IF ~PartyGoldGT(2999)~ THEN DO ~SetGlobal("ANCreditPayPartTalk","GLOBAL",1)~ REPLY @43 + ANOwniPayAll3_2
IF ~PartyGoldGT(999)~ THEN DO ~SetGlobal("ANCreditPayPartTalk","GLOBAL",1)~ REPLY @107 + ANOwniPayPart2_week3
IF ~~ THEN DO ~SetGlobal("ANCreditPayPartTalk","GLOBAL",1)~ REPLY @48 + ANOwniBattle3
IF ~~ THEN DO ~SetGlobal("ANCreditPayPartTalk","GLOBAL",1)~ REPLY @50 + ANOwniBattle3

CHAIN 
IF ~Global("ANDwarfCreditPayPart","GLOBAL",3)~ THEN ANOwni ANOwniTalkPaypart5
@106
END
IF ~PartyGoldGT(1999)~ THEN DO ~SetGlobal("ANCreditPayPartTalk","GLOBAL",1)~ REPLY @43 + ANOwniPayAll3_3
IF ~PartyGoldGT(999)~ THEN DO ~SetGlobal("ANCreditPayPartTalk","GLOBAL",1)~ REPLY @107 + ANOwniPayPart2_week4
IF ~~ THEN DO ~SetGlobal("ANCreditPayPartTalk","GLOBAL",1)~ REPLY @48 + ANOwniBattle3
IF ~~ THEN DO ~SetGlobal("ANCreditPayPartTalk","GLOBAL",1)~ REPLY @50 + ANOwniBattle3

CHAIN 
IF ~Global("ANDwarfCreditPayPart","GLOBAL",4)~ THEN ANOwni ANOwniTalkPaypart6
@106
END
IF ~PartyGoldGT(999)~ THEN DO ~SetGlobal("ANCreditPayPartTalk","GLOBAL",1)~ REPLY @43 + ANOwniPayAll3
IF ~~ THEN DO ~SetGlobal("ANCreditPayPartTalk","GLOBAL",1)~ REPLY @48 + ANOwniBattle3
IF ~~ THEN DO ~SetGlobal("ANCreditPayPartTalk","GLOBAL",1)~ REPLY @50 + ANOwniBattle3


// Сделка 
CHAIN 
IF ~~ THEN ANOwni ANOwniPayFriend_3
@74
== PLAYER1 @75
== ANOwni @76
== KORGANJ @77
END
IF ~~ THEN DO ~SetGlobal("ANOwniPayFriend","GLOBAL",1) AddJournalEntry(@1018,QUEST)~ REPLY @78 + ANOwniPayFriend1
IF ~~ THEN DO ~SetGlobal("ANOwniPayFriend","GLOBAL",1) AddJournalEntry(@1018,QUEST)~ REPLY @79 + ANOwniPayFriend2

CHAIN 
IF ~~ THEN ANOwni ANOwniPayFriend1
@125
== PLAYER1 @126 
EXIT

CHAIN 
IF ~~ THEN ANOwni ANOwniPayFriend2
@80
= @125
== PLAYER1 @126 
EXIT


// Выплата полностью
CHAIN 
IF ~~ THEN ANOwni ANOwniPayAll1
@52
== PLAYER1 @53
== ANOwni @55
== PLAYER1 @56
== ANOwni @57
== PLAYER1 @58
== ANOwni @59
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @60
== ANOwni @61
= @62
== PLAYER1 IF ~InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @63
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @64
= @65
== PLAYER1 IF ~InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @66
== ANOwni @67
END
IF ~~ THEN DO ~ChangeEnemyAlly("ANOwni",GOODBUTBLUE) ChangeEnemyAlly("ANjalut",GOODBUTBLUE) ChangeEnemyAlly("ANyant",GOODBUTBLUE) ChangeEnemyAlly("ANJock",GOODBUTBLUE) ChangeEnemyAlly("ANesra",GOODBUTBLUE)~ REPLY @68 + ANOwniPayFriend_1
IF ~~ THEN REPLY @69 + ANOwniPayAll2

CHAIN 
IF ~~ THEN ANOwni ANOwniPayAll2
@70
== PLAYER1 @71 DO ~TakePartyGold(5000) GiveItemCreate("ANveksl",Player1,1,0,0) SetGlobal("ANDwarfCreditPay","GLOBAL",3) SetGlobal("ANDwarfCreditNoEscape","AN0060",1) AddJournalEntry(@1016,QUEST_DONE)~ 
== ANOwni @47 DO ~EscapeArea() ActionOverride("ANjalut",EscapeArea()) ActionOverride("ANesra",EscapeArea()) ActionOverride("ANyant",EscapeArea()) ActionOverride("ANJock",EscapeArea())~
EXIT

CHAIN 
IF ~~ THEN ANOwni ANOwniPayAll3_1
@47 DO ~TakePartyGold(4000)~
== PLAYER1 @81 DO ~GiveItemCreate("ANveksl",Player1,1,0,0) SetGlobal("ANDwarfCreditPay","GLOBAL",3) AddJournalEntry(@1022,QUEST_DONE) ActionOverride("ANOwni",EscapeArea()) ActionOverride("ANjalut",EscapeArea()) ActionOverride("ANesra",EscapeArea()) ActionOverride("ANyant",EscapeArea()) ActionOverride("ANJock",EscapeArea())~ 
EXIT

CHAIN 
IF ~~ THEN ANOwni ANOwniPayAll3_2
@47 DO ~TakePartyGold(3000)~
== PLAYER1 @81 DO ~GiveItemCreate("ANveksl",Player1,1,0,0) SetGlobal("ANDwarfCreditPay","GLOBAL",3) AddJournalEntry(@1022,QUEST_DONE) ActionOverride("ANOwni",EscapeArea()) ActionOverride("ANjalut",EscapeArea()) ActionOverride("ANesra",EscapeArea()) ActionOverride("ANyant",EscapeArea()) ActionOverride("ANJock",EscapeArea())~ 
EXIT

CHAIN 
IF ~~ THEN ANOwni ANOwniPayAll3_3
@47 DO ~TakePartyGold(2000)~
== PLAYER1 @81 DO ~GiveItemCreate("ANveksl",Player1,1,0,0) SetGlobal("ANDwarfCreditPay","GLOBAL",3) AddJournalEntry(@1022,QUEST_DONE) ActionOverride("ANOwni",EscapeArea()) ActionOverride("ANjalut",EscapeArea()) ActionOverride("ANesra",EscapeArea()) ActionOverride("ANyant",EscapeArea()) ActionOverride("ANJock",EscapeArea())~ 
EXIT

CHAIN 
IF ~~ THEN ANOwni ANOwniPayAll3
@47 DO ~TakePartyGold(1000)~
== PLAYER1 @81 DO ~GiveItemCreate("ANveksl",Player1,1,0,0) SetGlobal("ANDwarfCreditPay","GLOBAL",3) AddJournalEntry(@1022,QUEST_DONE) ActionOverride("ANOwni",EscapeArea()) ActionOverride("ANjalut",EscapeArea()) ActionOverride("ANesra",EscapeArea()) ActionOverride("ANyant",EscapeArea()) ActionOverride("ANJock",EscapeArea())~ 
EXIT


// Остановка драки при серьёзном ранении
CHAIN 
IF ~Global("ANownyStop","GLOBAL",1)~ THEN ANOwni ANOwniStop
@84
END
IF ~~ THEN DO ~SetGlobal("ANownyStop","GLOBAL",3) AddJournalEntry(@1015,QUEST)~ REPLY @85 EXIT
IF ~~ THEN DO ~SetGlobal("ANownyStop","GLOBAL",2)~ REPLY @86 + ANOwniStop1

CHAIN 
IF ~~ THEN ANOwni ANOwniStop1
@52 DO ~ClearAllActions()~
== PLAYER1 @53
== ANOwni @55
== PLAYER1 @56
== ANOwni @57
== PLAYER1 @58
== ANOwni @59
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @60
== ANOwni @61
= @62
== PLAYER1 IF ~InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @63
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @64
= @65
== PLAYER1 IF ~InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @66
== ANOwni @67
END
IF ~~ THEN DO ~ChangeEnemyAlly("ANOwni",GOODBUTBLUE) ChangeEnemyAlly("ANjalut",GOODBUTBLUE) ChangeEnemyAlly("ANyant",GOODBUTBLUE) ChangeEnemyAlly("ANJock",GOODBUTBLUE) ChangeEnemyAlly("ANesra",GOODBUTBLUE)~ REPLY @68 + ANOwniPayFriend_1
IF ~~ THEN REPLY @87 EXIT


// Встреча со Сборщиком
CHAIN 
IF ~Global("ANOwniPayFriend","GLOBAL",2) Global("ANcollectorDead","GLOBAL",0)~ THEN ANOwni ANOwniCollector
@88 DO ~ActionOverride(Player1,SetDialog("Player1"))~
== ANcoll1 @89
=@90
=@91
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @92
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @93
== IF_FILE_EXISTS WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !Dead("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @94
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @95
== ANOwni @96
== ANcoll1 @97
= @98 DO ~ChangeEnemyAlly("ANcoll1",ENEMY) ChangeEnemyAlly("ANcoll2",ENEMY) ChangeEnemyAlly("ANcoll3",ENEMY) ChangeEnemyAlly("ANcoll4",ENEMY) ActionOverride("ANcoll1",Enemy())  ActionOverride("ANcoll2",Enemy())  ActionOverride("ANcoll3",Enemy()) ActionOverride("ANcoll4",Enemy())~
= @99 DO ~ActionOverride("ANcoll2",ApplySpell(Myself,WIZARD_STONE_SKIN)) ActionOverride("ANcoll2",ForceSpell(Player1,CLERIC_FLAME_STRIKE))~
== PLAYER1 @100
EXIT


// Победа над Сборщиком
CHAIN 
IF ~Global("ANcollectorDead","GLOBAL",1)~ THEN ANOwni ANOwniTalkCollectorDead
@101 DO ~AddexperienceParty(8000) SetGlobal("ANcollectorDead","GLOBAL",2) ActionOverride(Player1,SetDialog("Player1")) ChangeEnemyAlly("ANOwni",GOODBUTBLUE) ChangeEnemyAlly("ANjalut",GOODBUTBLUE) ChangeEnemyAlly("ANyant",GOODBUTBLUE) ChangeEnemyAlly("ANJock",GOODBUTBLUE) ChangeEnemyAlly("ANesra",GOODBUTBLUE) GiveItem("ANveksl",Player1) SetGlobal("ANDwarfCreditNoEscape","AN0060",1)~
== ANOwni IF ~!Global("ANOwniCharnameName","AN0060",1)~ THEN @102
== PLAYER1 IF ~!Global("ANOwniCharnameName","AN0060",1)~ THEN @36
== ANOwni IF ~!Dead("ANJock") !Dead("ANyant") !Dead("ANesra") !Dead("ANjalut")~ THEN @103 DO ~SetGlobal("ANDwarfCreditPay","GLOBAL",3) GiveItemCreate("ANveksl",Player1,1,0,0) EscapeArea()~
== ANOwni IF ~OR(4) Dead("ANJock") Dead("ANyant") Dead("ANesra") Dead("ANjalut")~ THEN @105 DO ~SetGlobal("ANDwarfCreditPay","GLOBAL",3) SetGlobal("ANDwarfOwniGroupRevive","AN0600",1) GiveItemCreate("ANveksl",Player1,1,0,0) AddJournalEntry(@1019,QUEST_DONE)~
EXIT

// Корган - финальный разговор

CHAIN 
IF ~Global("ANDwarfCreditPay","GLOBAL",3)~ THEN PLAYER1 ANkorganPayFinal
@111 DO ~SetGlobal("ANDwarfCreditPay","GLOBAL",4)~
== KORGANJ @112
= @113
== PLAYER1 @114
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @115
== KORGANJ IF ~InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @124
== JANJ IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @116
== KORGANJ IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @117
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) !InParty("Nalia")~ THEN @115
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !Dead("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) !InParty("Nalia") !InParty("Jaheira")~ THEN @115
== KORGANJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) !InParty("Nalia")~ THEN @118
== KORGANJ IF ~InParty("Mazzy") InMyArea("Mazzy") !Dead("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) !InParty("Nalia") !InParty("Jaheira")~ THEN @118
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @119
== KORGANJ IF ~InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @120
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) !InParty("Nalia")~ THEN @119
== KORGANJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) !InParty("Nalia")~ THEN @120
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !Dead("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) !InParty("Nalia") !InParty("Jaheira")~ THEN @119
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !Dead("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @121
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !Dead("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) !InParty("Nalia")~ THEN @121
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !Dead("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @121
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !Dead("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) !InParty("Nalia")~ THEN @121
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) !InParty("Nalia") !InParty("Anomen") !InParty("Valygar")~ THEN @121
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @122
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !Dead("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) !InParty("Keldorn")~ THEN @122
== PLAYER1 @123
EXIT

CHAIN 
IF ~Dead("ANOwni") !Global("ANOwniPayFriend","GLOBAL",2) Global("ANKorganVeksel","AN0060",1)~ THEN KORGANJ ANKorganVekselTalk
@130 DO ~SetGlobal("ANKorganVeksel","AN0060",2) SetGlobal("ANDwarfCreditNoEscape","AN0060",1)~
= @131 DO ~GiveItemCreate("ANveksl",Player1,1,0,0) AddJournalEntry(@1024,QUEST)~
== PLAYER1 @132
EXIT

CHAIN 
IF ~Dead("ANOwni") !Global("ANOwniPayFriend","GLOBAL",2) Global("ANowniDeadvekselNoKorgan","AN0060",1)~ THEN PLAYER1 ANowniDeadvekselTalkPlayer1
@133 DO ~GiveItemCreate("ANveksl",Player1,1,0,0) AddJournalEntry(@1024,QUEST) SetGlobal("ANowniDeadvekselNoKorgan","AN0060",2) SetGlobal("ANDwarfCreditNoEscape","AN0060",1)~
EXIT

CHAIN 
IF ~Dead("ANOwni") Global("ANcollectorDead","GLOBAL",1) Global("ANowniDeadvekselNoKorgan","AN0060",1)~ THEN PLAYER1 ANowniDeadvekselTalkPlayer1
@133 DO ~GiveItemCreate("ANveksl",Player1,1,0,0) AddJournalEntry(@1024,QUEST) SetGlobal("ANowniDeadvekselNoKorgan","AN0060",2) SetGlobal("ANDwarfCreditNoEscape","AN0060",1)~
EXIT