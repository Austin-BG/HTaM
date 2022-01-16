// Yantina
APPEND ANyant

IF ~AreaCheck("AN0720") !Global("AnOwniBankTalk","GLOBAL",4) !Global("AnOwniBankTalk","GLOBAL",8) OR(2) Global("AnOwniBankTalk","GLOBAL",0) Global("AnOwniBankTalkThink","GLOBAL",1) !Global("AnOwniBankTalkThink","GLOBAL",2) !Global("AnOwniBankTalk","GLOBAL",3) !Global("AnOwniBankTalk","GLOBAL",9)~ THEN BEGIN ANyantBankTalk1
  SAY @0
IF ~OR(4) !InParty("Jaheira") !InMyArea("Jaheira") Dead("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN EXIT
IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("ANyantJaheiraTalk","AN0720",0)~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ EXTERN JAHEIRAJ ANyantJaheiraBank
IF ~Global("ANyantJaheiraTalk","AN0720",1)~ THEN EXIT
END

IF ~Global("AnOwniBankTalk","GLOBAL",4)~ THEN BEGIN ANyantBankTalk2
  SAY @23
IF ~OR(2) !InParty("Jaheira") Global("ANyantJaheiraTalk","AN0720",1)~ THEN REPLY @151 GOTO ANyantBankTalkMyself
IF ~OR(2) !InParty("Jaheira") Global("ANyantJaheiraTalk","AN0720",1)~ THEN REPLY @152 GOTO ANyantBankTalkOwni
IF ~OR(2) !InParty("Jaheira") Global("ANyantJaheiraTalk","AN0720",1)~ THEN REPLY @153 GOTO ANyantBankTalkJob
IF ~OR(2) !InParty("Jaheira") Global("ANyantJaheiraTalk","AN0720",1)~ THEN REPLY @154 GOTO ANyantBankTalkBye1
IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("ANyantJaheiraTalk","AN0720",0)~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ EXTERN JAHEIRAJ ANyantJaheiraBank  
END 

IF ~!AreaCheck("AR0808") !AreaCheck("AR0809") Global("AnOwniBankTalk","GLOBAL",8)~ THEN BEGIN ANyantBankTalk2Later
  SAY @150
IF ~OR(2) !InParty("Jaheira") Global("ANyantJaheiraTalk","AN0720",1)~ THEN REPLY @151 GOTO ANyantBankTalkMyself
IF ~OR(2) !InParty("Jaheira") Global("ANyantJaheiraTalk","AN0720",1)~ THEN REPLY @152 GOTO ANyantBankTalkOwni
IF ~OR(2) !InParty("Jaheira") Global("ANyantJaheiraTalk","AN0720",1)~ THEN REPLY @153 GOTO ANyantBankTalkJob
IF ~OR(2) !InParty("Jaheira") Global("ANyantJaheiraTalk","AN0720",1)~ THEN REPLY @154 GOTO ANyantBankTalkBye1
IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("ANyantJaheiraTalk","AN0720",0)~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ EXTERN JAHEIRAJ ANyantJaheiraBank  
END 

IF ~OR(3) Global("AnOwniBankTalkThink","GLOBAL",2) Global("AnOwniBankTalk","GLOBAL",3) Global("AnOwniBankTalk","GLOBAL",9)~ THEN BEGIN ANyantBankTalk3
  SAY @84
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN ANyantBankTalkMyself
  SAY @155
=@156  
IF ~~ THEN REPLY @161 GOTO ANyantBankTalkBye2Myself
END 

IF ~~ THEN BEGIN ANyantBankTalkOwni
  SAY @157
IF ~~ THEN REPLY @158 GOTO ANyantBankTalkBye2Owni
END 

IF ~~ THEN BEGIN ANyantBankTalkJob
  SAY @159
IF ~~ THEN REPLY @160 GOTO ANyantBankTalkBye2Job
END 

IF ~~ THEN BEGIN ANyantBankTalkBye1
  SAY @164
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN ANyantBankTalkBye2Myself
  SAY @162
IF ~~ THEN REPLY @152 GOTO ANyantBankTalkOwni
IF ~~ THEN REPLY @153 GOTO ANyantBankTalkJob  
IF ~~ THEN REPLY @163 GOTO ANyantBankTalkBye1
END 

IF ~~ THEN BEGIN ANyantBankTalkBye2Owni
  SAY @162
IF ~~ THEN REPLY @151 GOTO ANyantBankTalkMyself
IF ~~ THEN REPLY @153 GOTO ANyantBankTalkJob  
IF ~~ THEN REPLY @163 GOTO ANyantBankTalkBye1
END 

IF ~~ THEN BEGIN ANyantBankTalkBye2Job
  SAY @162
IF ~~ THEN REPLY @151 GOTO ANyantBankTalkMyself
IF ~~ THEN REPLY @152 GOTO ANyantBankTalkOwni
IF ~~ THEN REPLY @163 GOTO ANyantBankTalkBye1
END 


END

CHAIN 
IF ~~ THEN JAHEIRAJ ANyantJaheiraBank
@1 DO ~SetGlobal("ANyantJaheiraTalk","AN0720",1)~
== ANyant @2 
== JAHEIRAJ @3
== ANyant @4 
== JAHEIRAJ @5
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @12
END
IF ~~ THEN REPLY @6 EXTERN JAHEIRAJ ANyantJaheiraBank_1

CHAIN JAHEIRAJ ANyantJaheiraBank_1 
@7
END
IF ~~ THEN REPLY @8 EXTERN JAHEIRAJ ANyantJaheiraBank_2

CHAIN JAHEIRAJ ANyantJaheiraBank_2
@9
END
IF ~~ THEN REPLY @10 EXTERN JAHEIRAJ ANyantJaheiraBank_3

CHAIN JAHEIRAJ ANyantJaheiraBank_3
@11
EXIT

// Esra
APPEND ANesra
IF ~AreaCheck("AN0720") Global("AnOwniBankTalk","GLOBAL",0) Global("AnEsraFirstBankTalk","LOCALS",0)~ THEN BEGIN ANesraBankTalk1
  SAY @13
=@14
IF ~~ THEN DO ~SetGlobal("AnEsraFirstBankTalk","LOCALS",1)~ EXIT
END

IF ~!Global("AnOwniBankTalk","GLOBAL",4) !Dead("ANowni") !Global("AnOwniBankTalk","GLOBAL",8) Global("AnEsraFirstBankTalk","LOCALS",1) !Global("AnOwniBankTalkThink","GLOBAL",2) !Global("AnOwniBankTalk","GLOBAL",3) !Global("AnOwniBankTalk","GLOBAL",9)~ THEN BEGIN ANesraBankTalkThink
  SAY @168
IF ~~ THEN EXIT
END

IF ~Global("AnOwniBankTalk","GLOBAL",4)~ THEN BEGIN ANesraBankTalk2
  SAY @24
IF ~~ THEN REPLY @166 GOTO ANEsraBankTalkMyself
IF ~~ THEN REPLY @167 GOTO ANEsraBankTalkOwni
IF ~~ THEN REPLY @153 GOTO ANEsraBankTalkJob
IF ~~ THEN REPLY @169 GOTO ANEsraBankTalkBye1
END

IF ~Global("AnOwniBankTalk","GLOBAL",8)~ THEN BEGIN ANesraBankTalkLater
  SAY @165
IF ~~ THEN REPLY @166 GOTO ANEsraBankTalkMyself
IF ~~ THEN REPLY @167 GOTO ANEsraBankTalkOwni
IF ~~ THEN REPLY @153 GOTO ANEsraBankTalkJob
IF ~~ THEN REPLY @169 GOTO ANEsraBankTalkBye1                                  
END

IF ~~ THEN BEGIN ANEsraBankTalkMyself
  SAY @170
IF ~~ THEN REPLY @175 GOTO ANEsraBankTalkBye2Myself
END 

IF ~~ THEN BEGIN ANEsraBankTalkOwni
  SAY @171
IF ~~ THEN REPLY @172 GOTO ANEsraBankTalkBye2Owni
END 

IF ~~ THEN BEGIN ANEsraBankTalkJob
  SAY @173
IF ~~ THEN REPLY @174 GOTO ANEsraBankTalkBye2Job
END 

IF ~~ THEN BEGIN ANEsraBankTalkBye1
  SAY @164
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN ANEsraBankTalkBye2Myself
  SAY @176
IF ~~ THEN REPLY @167 GOTO ANEsraBankTalkOwni
IF ~~ THEN REPLY @153 GOTO ANEsraBankTalkJob
IF ~~ THEN REPLY @177 GOTO ANEsraBankTalkBye1
END 

IF ~~ THEN BEGIN ANEsraBankTalkBye2Owni
  SAY @176
IF ~~ THEN REPLY @166 GOTO ANEsraBankTalkMyself
IF ~~ THEN REPLY @153 GOTO ANEsraBankTalkJob
IF ~~ THEN REPLY @177 GOTO ANEsraBankTalkBye1
END 

IF ~~ THEN BEGIN ANEsraBankTalkBye2Job
  SAY @176
IF ~~ THEN REPLY @166 GOTO ANEsraBankTalkMyself
IF ~~ THEN REPLY @167 GOTO ANEsraBankTalkOwni
IF ~~ THEN REPLY @177 GOTO ANEsraBankTalkBye1
END 

IF ~OR(3) Global("AnOwniBankTalkThink","GLOBAL",2) Global("AnOwniBankTalk","GLOBAL",3) Global("AnOwniBankTalk","GLOBAL",9)~ THEN BEGIN ANesraBankTalk3
  SAY @84
IF ~~ THEN EXIT
END 

IF ~Global("AnOwniBankTalkPay","GLOBAL",1000) Global("AnOwniDeadBank","GLOBAL",1) OR(2) Global("ANdruidDead","GLOBAL",1) Global("ANdruidDead","GLOBAL",2)~ THEN BEGIN ANesraBankTalk1000
  SAY @147
IF ~~ THEN DO ~SetGlobal("ANdruidDead","GLOBAL",3) GiveGoldForce(1000) AddexperienceParty(2000) AddJournalEntry(@1027,QUEST_DONE) EscapeArea()~ EXIT
END

IF ~Global("AnOwniBankTalkPay","GLOBAL",1200) Global("AnOwniDeadBank","GLOBAL",1) OR(2) Global("ANdruidDead","GLOBAL",1) Global("ANdruidDead","GLOBAL",2)~ THEN BEGIN ANesraBankTalk1200
  SAY @147
IF ~~ THEN DO ~SetGlobal("ANdruidDead","GLOBAL",3) GiveGoldForce(1200) AddexperienceParty(2000) AddJournalEntry(@1027,QUEST_DONE) EscapeArea()~ EXIT
END

IF ~Global("AnOwniBankTalkPay","GLOBAL",1500) Global("AnOwniDeadBank","GLOBAL",1) OR(2) Global("ANdruidDead","GLOBAL",1) Global("ANdruidDead","GLOBAL",2)~ THEN BEGIN ANesraBankTalk1500
  SAY @147
IF ~~ THEN DO ~SetGlobal("ANdruidDead","GLOBAL",3) GiveGoldForce(1500) AddexperienceParty(2000) AddJournalEntry(@1027,QUEST_DONE) EscapeArea()~ EXIT
END

IF ~Global("AnOwniBankTalkPay","GLOBAL",1000) Global("ANallGroupDead","GLOBAL",1) OR(2) Global("ANdruidDead","GLOBAL",1) Global("ANdruidDead","GLOBAL",2)~ THEN BEGIN ANesraBank1Talk1000
  SAY @149
IF ~~ THEN DO ~SetGlobal("ANdruidDead","GLOBAL",3) GiveGoldForce(1000) AddJournalEntry(@1028,QUEST_DONE) AddexperienceParty(2000) EscapeArea()~ EXIT
END

IF ~Global("AnOwniBankTalkPay","GLOBAL",1200) Global("ANallGroupDead","GLOBAL",1) OR(2) Global("ANdruidDead","GLOBAL",1) Global("ANdruidDead","GLOBAL",2)~ THEN BEGIN ANesraBank1Talk1200
  SAY @149
IF ~~ THEN DO ~SetGlobal("ANdruidDead","GLOBAL",3) GiveGoldForce(1200) AddJournalEntry(@1028,QUEST_DONE) AddexperienceParty(2000) EscapeArea() ~ EXIT
END

IF ~Global("AnOwniBankTalkPay","GLOBAL",1500) Global("ANallGroupDead","GLOBAL",1) OR(2) Global("ANdruidDead","GLOBAL",1) Global("ANdruidDead","GLOBAL",2)~ THEN BEGIN ANesraBank1Talk1500
  SAY @149
IF ~~ THEN DO ~SetGlobal("ANdruidDead","GLOBAL",3) GiveGoldForce(1500) AddJournalEntry(@1028,QUEST_DONE) AddexperienceParty(2000) EscapeArea()~ EXIT
END


END

// Jalut
APPEND ANjalut
IF ~AreaCheck("AN0721") !Global("AnOwniBankTalk","GLOBAL",4) !Global("AnOwniBankTalk","GLOBAL",8) OR(2) Global("AnOwniBankTalk","GLOBAL",0) Global("AnOwniBankTalkThink","GLOBAL",1) !Global("AnOwniBankTalkThink","GLOBAL",2) !Global("AnOwniBankTalk","GLOBAL",3) !Global("AnOwniBankTalk","GLOBAL",9)~ THEN BEGIN ANjalutBankTalk1
  SAY @15
IF ~~ THEN EXIT
END

IF ~Global("AnOwniBankTalk","GLOBAL",4)~ THEN BEGIN ANjalutBankTalk2
  SAY @16
IF ~~ THEN REPLY @17 + ANjalutBankTalk2.1
IF ~~ THEN REPLY @180 GOTO ANjalutBankTalkMyself
IF ~~ THEN REPLY @181 GOTO ANjalutBankTalkOwni
IF ~~ THEN REPLY @182 GOTO ANjalutBankTalkJob
IF ~~ THEN REPLY @183 GOTO ANjalutBankTalkBye1 
END

IF ~~ THEN BEGIN ANjalutBankTalk2.1
  SAY @18
IF ~~ THEN REPLY @19 + ANjalutBankTalk2.2
END

IF ~~ THEN BEGIN ANjalutBankTalk2.2
  SAY @20
IF ~~ THEN EXIT
END

IF ~!AreaCheck("AR0808") !AreaCheck("AR0809") Global("AnOwniBankTalk","GLOBAL",8)~ THEN BEGIN ANjalutBankTalkLater
  SAY @179
IF ~~ THEN REPLY @180 GOTO ANjalutBankTalkMyself
IF ~~ THEN REPLY @181 GOTO ANjalutBankTalkOwni
IF ~~ THEN REPLY @182 GOTO ANjalutBankTalkJob
IF ~~ THEN REPLY @183 GOTO ANjalutBankTalkBye1                                  
END

IF ~~ THEN BEGIN ANjalutBankTalkMyself
  SAY @184
=@187   
IF ~~ THEN REPLY @181 GOTO ANjalutBankTalkOwni
IF ~~ THEN REPLY @182 GOTO ANjalutBankTalkJob
IF ~~ THEN REPLY @188 GOTO ANjalutBankTalkBye1   
END 

IF ~~ THEN BEGIN ANjalutBankTalkOwni
  SAY @185
=@187   
IF ~~ THEN REPLY @180 GOTO ANjalutBankTalkMyself
IF ~~ THEN REPLY @182 GOTO ANjalutBankTalkJob
IF ~~ THEN REPLY @188 GOTO ANjalutBankTalkBye1 
END 

IF ~~ THEN BEGIN ANjalutBankTalkJob
  SAY @186
=@187  
IF ~~ THEN REPLY @180 GOTO ANjalutBankTalkMyself
IF ~~ THEN REPLY @181 GOTO ANjalutBankTalkOwni
IF ~~ THEN REPLY @188 GOTO ANjalutBankTalkBye1 
END 

IF ~~ THEN BEGIN ANjalutBankTalkBye1
  SAY @189
IF ~~ THEN EXIT
END 


IF ~OR(3) Global("AnOwniBankTalkThink","GLOBAL",2) Global("AnOwniBankTalk","GLOBAL",3) Global("AnOwniBankTalk","GLOBAL",9)~ THEN BEGIN ANjalutBankTalk3
  SAY @84
IF ~~ THEN EXIT
END 

IF ~Global("AnOwniBankTalkPay","GLOBAL",1000) Global("AnOwniDeadBank","GLOBAL",1) OR(2) Global("ANdruidDead","GLOBAL",1) Global("ANdruidDead","GLOBAL",2)~ THEN BEGIN ANjalutBankTalk1000
  SAY @147
IF ~~ THEN DO ~SetGlobal("ANdruidDead","GLOBAL",3) GiveGoldForce(1000) AddexperienceParty(2000) AddJournalEntry(@1027,QUEST_DONE)~ EXIT
END

IF ~Global("AnOwniBankTalkPay","GLOBAL",1200) Global("AnOwniDeadBank","GLOBAL",1) OR(2) Global("ANdruidDead","GLOBAL",1) Global("ANdruidDead","GLOBAL",2)~ THEN BEGIN ANjalutBankTalk1200
  SAY @147
IF ~~ THEN DO ~SetGlobal("ANdruidDead","GLOBAL",3) GiveGoldForce(1200) AddexperienceParty(2000) AddJournalEntry(@1027,QUEST_DONE)~ EXIT
END

IF ~Global("AnOwniBankTalkPay","GLOBAL",1500) Global("AnOwniDeadBank","GLOBAL",1) OR(2) Global("ANdruidDead","GLOBAL",1) Global("ANdruidDead","GLOBAL",2)~ THEN BEGIN ANjalutBankTalk1500
  SAY @147
IF ~~ THEN DO ~SetGlobal("ANdruidDead","GLOBAL",3) GiveGoldForce(1500) AddexperienceParty(2000) AddJournalEntry(@1027,QUEST_DONE)~ EXIT
END

IF ~OR(2) AreaCheck("AR0808") AreaCheck("AR0809")~ THEN BEGIN ANJalutTalkBodhi
  SAY @235
IF ~~ THEN EXIT
END 

END


// Jock
APPEND ANJock
IF ~AreaCheck("AN0721") !Global("AnOwniBankTalk","GLOBAL",4) !Global("AnOwniBankTalk","GLOBAL",8) OR(2) Global("AnOwniBankTalk","GLOBAL",0) Global("AnOwniBankTalkThink","GLOBAL",1) !Global("AnOwniBankTalkThink","GLOBAL",2) !Global("AnOwniBankTalk","GLOBAL",3) !Global("AnOwniBankTalk","GLOBAL",9)~ THEN BEGIN ANjockBankTalk1
  SAY @21
IF ~~ THEN EXIT 
END

IF ~Global("AnOwniBankTalk","GLOBAL",4)~ THEN BEGIN ANjockBankTalk2
  SAY @22
IF ~~ THEN REPLY @190 GOTO ANJockBankTalkMyself
IF ~~ THEN REPLY @191 GOTO ANJockBankTalkOwni
IF ~~ THEN REPLY @192 GOTO ANJockBankTalkJob
IF ~~ THEN REPLY @193 GOTO ANJockBankTalkBye1    
END

IF ~OR(3) Global("AnOwniBankTalkThink","GLOBAL",2) Global("AnOwniBankTalk","GLOBAL",3) Global("AnOwniBankTalk","GLOBAL",9)~ THEN BEGIN ANjockBankTalk3
  SAY @84
IF ~~ THEN EXIT
END 

IF ~!AreaCheck("AR0808") !AreaCheck("AR0809") Global("AnOwniBankTalk","GLOBAL",8)~ THEN BEGIN ANJockBankTalkLater
  SAY @22
IF ~~ THEN REPLY @190 GOTO ANJockBankTalkMyself
IF ~~ THEN REPLY @191 GOTO ANJockBankTalkOwni
IF ~~ THEN REPLY @192 GOTO ANJockBankTalkJob
IF ~~ THEN REPLY @193 GOTO ANJockBankTalkBye1                                  
END

IF ~~ THEN BEGIN ANJockBankTalkMyself
  SAY @194
=@197   
IF ~~ THEN REPLY @191 GOTO ANJockBankTalkOwni
IF ~~ THEN REPLY @192 GOTO ANJockBankTalkJob
IF ~~ THEN REPLY @198 GOTO ANJockBankTalkBye1   
END 

IF ~~ THEN BEGIN ANJockBankTalkOwni
  SAY @195
=@197   
IF ~~ THEN REPLY @190 GOTO ANJockBankTalkMyself
IF ~~ THEN REPLY @192 GOTO ANJockBankTalkJob
IF ~~ THEN REPLY @198 GOTO ANJockBankTalkBye1 
END 

IF ~~ THEN BEGIN ANJockBankTalkJob
  SAY @196
=@197  
IF ~~ THEN REPLY @190 GOTO ANJockBankTalkMyself
IF ~~ THEN REPLY @191 GOTO ANJockBankTalkOwni
IF ~~ THEN REPLY @198 GOTO ANJockBankTalkBye1 
END 

IF ~~ THEN BEGIN ANJockBankTalkBye1
  SAY @199
IF ~~ THEN EXIT
END 

IF ~Global("AnOwniBankTalkPay","GLOBAL",1000) Global("AnOwniDeadBank","GLOBAL",1) OR(2) Global("ANdruidDead","GLOBAL",1) Global("ANdruidDead","GLOBAL",2)~ THEN BEGIN ANjockBankTalk1000
  SAY @148
IF ~~ THEN DO ~SetGlobal("ANdruidDead","GLOBAL",3) GiveGoldForce(1000) AddexperienceParty(2000) AddJournalEntry(@1027,QUEST_DONE)~ EXIT
END

IF ~Global("AnOwniBankTalkPay","GLOBAL",1200) Global("AnOwniDeadBank","GLOBAL",1) OR(2) Global("ANdruidDead","GLOBAL",1) Global("ANdruidDead","GLOBAL",2)~ THEN BEGIN ANjockBankTalk1200
  SAY @148
IF ~~ THEN DO ~SetGlobal("ANdruidDead","GLOBAL",3) GiveGoldForce(1200) AddexperienceParty(2000) AddJournalEntry(@1027,QUEST_DONE)~ EXIT
END

IF ~Global("AnOwniBankTalkPay","GLOBAL",1500) Global("AnOwniDeadBank","GLOBAL",1) OR(2) Global("ANdruidDead","GLOBAL",1) Global("ANdruidDead","GLOBAL",2)~ THEN BEGIN ANjockBankTalk1500
  SAY @148
IF ~~ THEN DO ~SetGlobal("ANdruidDead","GLOBAL",3) GiveGoldForce(1500) AddexperienceParty(2000) AddJournalEntry(@1027,QUEST_DONE)~ EXIT
END

IF ~OR(2) AreaCheck("AR0808") AreaCheck("AR0809")~ THEN BEGIN ANJockTalkBodhi
  SAY @236
IF ~~ THEN EXIT
END 
END


// Owni
APPEND ANOwni

IF ~AreaCheck("AN0720") Global("AnOwniBankTalk","GLOBAL",0)~ THEN BEGIN ANOwniBankTalk1
  SAY @25
IF ~~ THEN DO ~SetGlobal("AnOwniBankTalk","GLOBAL",1) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @26 + ANOwniBankTalk1.1
END

IF ~~ THEN BEGIN ANOwniBankTalk1.1
  SAY @27
IF ~~ THEN REPLY @28 + ANOwniBankTalk1.2
IF ~~ THEN REPLY @262 + ANOwniBankTalk1.2
END

IF ~~ THEN BEGIN ANOwniBankTalk1.2
  SAY @29
IF ~~ THEN REPLY @30 + ANOwniBankTalk1.3
IF ~~ THEN REPLY @31 + ANOwniBankTalk1.4
END

IF ~~ THEN BEGIN ANOwniBankTalk1.3
  SAY @32
IF ~~ THEN GOTO ANOwniBankTalk1.5
END

IF ~~ THEN BEGIN ANOwniBankTalk1.4
  SAY @33
IF ~~ THEN GOTO ANOwniBankTalk1.5
END

IF ~~ THEN BEGIN ANOwniBankTalk1.5
  SAY @34
IF ~~ THEN DO ~SetGlobal("AnOwniBankTalkAboutDruids","AN0720",1)~ REPLY @35 + ANOwniBankTalk1.6
IF ~~ THEN DO ~SetGlobal("AnOwniBankTalkAboutDruids","AN0720",1)~ REPLY @263 + ANOwniBankTalk1.6
IF ~~ THEN REPLY @36 + ANOwniBankTalk1.7
IF ~~ THEN REPLY @264 + ANOwniBankTalk1.7
END

IF ~~ THEN BEGIN ANOwniBankTalk1.8
  SAY @73
IF ~~ THEN DO ~SetGlobal("AnOwniBankTalkPay","GLOBAL",1000) AddJournalEntry(@1031,QUEST)~ REPLY @76 + ANOwniBankTalk1.8.1
IF ~CheckStatGT(Player1,14,CHR)~ THEN DO ~SetGlobal("AnOwniBankTalkPay","GLOBAL",1200)~ REPLY @77 + ANOwniBankTalk1.8.1
IF ~CheckStatLT(Player1,14,CHR)~ THEN DO ~SetGlobal("AnOwniBankTalkPay","GLOBAL",1000)~ REPLY @77 + ANOwniBankTalk1.8.1.No1
IF ~CheckStatGT(Player1,18,CHR)~ THEN DO ~SetGlobal("AnOwniBankTalkPay","GLOBAL",1500)~ REPLY @78 + ANOwniBankTalk1.8.1
IF ~CheckStatLT(Player1,18,CHR)~ THEN DO ~SetGlobal("AnOwniBankTalkPay","GLOBAL",1200)~ REPLY @78 + ANOwniBankTalk1.8.1.No2
END

IF ~~ THEN BEGIN ANOwniBankTalk1.8.1
  SAY @87
IF ~~ THEN DO ~SetGlobal("AnOwniBankTalk","GLOBAL",2) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @88 + ANOwniBankTalk2
END

IF ~~ THEN BEGIN ANOwniBankTalk1.8.1.No1
  SAY @85
IF ~~ THEN DO ~SetGlobal("AnOwniBankTalk","GLOBAL",2) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @88 + ANOwniBankTalk2
END

IF ~~ THEN BEGIN ANOwniBankTalk1.8.1.No2
  SAY @86
IF ~~ THEN DO ~SetGlobal("AnOwniBankTalk","GLOBAL",2) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @88 + ANOwniBankTalk2
END

IF ~~ THEN BEGIN ANOwniBankTalk1.9
  SAY @74
IF ~~ THEN DO ~SetGlobal("AnOwniBankTalk","GLOBAL",3) AddJournalEntry(@1032,QUEST_DONE) SetGlobalTimer("AnOwniBankBattleTimerSkipping","GLOBAL",TWENTY_HOURS)~ REPLY @79 + ANOwniBankTalk1Otkaz
END

IF ~~ THEN BEGIN ANOwniBankTalk1Otkaz
  SAY @81
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANOwniBankTalk1.10
  SAY @75
IF ~~ THEN REPLY @80 + ANOwniBankTalkThink1
END

IF ~~ THEN BEGIN ANOwniBankTalkThink1
  SAY @81
IF ~~ THEN DO ~SetGlobal("AnOwniBankTalkThink","GLOBAL",1) AddJournalEntry(@1030,QUEST) SetGlobalTimer("AnOwniBankBattleTimer","GLOBAL",TWENTY_HOURS)~ EXIT
END

IF ~Global("AnOwniBankTalkThink","GLOBAL",1) !Global("AnOwniBankTalk","GLOBAL",3) !Global("AnOwniBankTalk","GLOBAL",4) !GlobalTimerExpired("AnOwniBankBattleTimer","GLOBAL")~ THEN BEGIN ANOwniBankTalkThink2
  SAY @82
IF ~~ THEN DO ~SetGlobal("AnOwniBankTalkThink","GLOBAL",2) SetGlobal("AnOwniBankTalkPay","GLOBAL",1000) AddJournalEntry(@1031,QUEST)~ REPLY @268 + ANOwniBankTalk1.8.1  
IF ~~ THEN DO ~SetGlobal("AnOwniBankTalkThink","GLOBAL",2)~ REPLY @70 + ANOwniBankTalk1.8
IF ~~ THEN DO ~SetGlobal("AnOwniBankTalkThink","GLOBAL",2)~ REPLY @269 + ANOwniBankTalk1.9
END

IF ~Global("AnOwniBankTalk","GLOBAL",4) GlobalTimerExpired("AnOwniBankBattleTimer","GLOBAL")~ THEN BEGIN ANOwniBankBattleSkip
  SAY @83
IF ~~ THEN DO ~SetGlobal("AnOwniBankTalk","GLOBAL",9) AddJournalEntry(@1033,QUEST_DONE)~ EXIT
END


IF ~!Global("AnOwniBankTalk","GLOBAL",8) OR(3) GlobalTimerExpired("AnOwniBankBattleTimer","GLOBAL") Global("AnOwniBankTalk","GLOBAL",3) Global("AnOwniBankTalk","GLOBAL",9)~ THEN BEGIN ANOwniBankTalkThink4
  SAY @84
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANOwniBankTalkTactics1
  SAY @111
=@114  
IF ~~ THEN DO ~SetGlobal("AnOwniBankTalk","GLOBAL",6)~ EXIT
END

IF ~Global("AnOwniBankTalk","GLOBAL",2)~ THEN BEGIN ANOwniBankTalk2
  SAY @112
IF ~~ THEN DO ~SetGlobal("AnOwniBankTalk","GLOBAL",4) SetGlobalTimer("AnOwniBankBattleTimer","GLOBAL",TWENTY_HOURS)~ EXIT
END

IF ~Global("AnOwniBankTalk","GLOBAL",4)~ THEN BEGIN ANOwniBankTalk2_Repeat
  SAY @112
IF ~~ THEN REPLY @201 GOTO ANOwniBankTalkMyself
IF ~~ THEN REPLY @202 GOTO ANOwniBankTalkCleric
IF ~~ THEN REPLY @203 GOTO ANOwniBankTalkJob
IF ~~ THEN REPLY @204 GOTO ANOwniBankTalkBye1  
END

IF ~!AreaCheck("AR0808") !AreaCheck("AR0809") Global("AnOwniBankTalk","GLOBAL",8) !Global("ANdruidDead","GLOBAL",2)~ THEN BEGIN ANOwniBankTalkLater
  SAY @200
IF ~Global("Chapter","GLOBAL",%bg2_chapter_6%) Global("OwniFightBodhi","GLOBAL",0) !Dead("c6bodhi")~ THEN REPLY @229 GOTO ANOwniBankTalkBodhi 
IF ~Global("ANpiratOwni","AN0720",0) OR(2) Global("Chapter","GLOBAL",%bg2_chapter_2%) Global("Chapter","GLOBAL",%bg2_chapter_3%)~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANpiratOwni","AN0720",1)~ REPLY @237 EXTERN ANOwni ANpiratOwniDialog
IF ~Global("ANpiratOwni","AN0720",3)~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANpiratOwni","AN0720",4)~ REPLY @238 EXTERN ANOwni ANpiratOwniDialogReplay
IF ~~ THEN REPLY @201 GOTO ANOwniBankTalkMyself
IF ~~ THEN REPLY @202 GOTO ANOwniBankTalkCleric
IF ~~ THEN REPLY @203 GOTO ANOwniBankTalkJob
IF ~~ THEN REPLY @204 GOTO ANOwniBankTalkBye1                                  
END

IF ~~ THEN BEGIN ANOwniBankTalkMyself
  SAY @205
 =@206 
 =@209 
IF ~~ THEN REPLY @216 GOTO ANOwniBankTalkTethyr
IF ~Global("ANpiratOwni","AN0720",0)~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANpiratOwni","AN0720",1)~ REPLY @237 EXTERN ANOwni ANpiratOwniDialog
IF ~Global("ANpiratOwni","AN0720",3)~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANpiratOwni","AN0720",4)~ REPLY @238 EXTERN ANOwni ANpiratOwniDialogReplay
IF ~~ THEN REPLY @202 GOTO ANOwniBankTalkCleric
IF ~~ THEN REPLY @203 GOTO ANOwniBankTalkJob
IF ~~ THEN REPLY @210 GOTO ANOwniBankTalkBye1   
END 

IF ~~ THEN BEGIN ANOwniBankTalkCleric
  SAY @207
=@209  
IF ~Global("ANpiratOwni","AN0720",0)~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANpiratOwni","AN0720",1)~ REPLY @237 EXTERN ANOwni ANpiratOwniDialog
IF ~Global("ANpiratOwni","AN0720",3)~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANpiratOwni","AN0720",4)~ REPLY @238 EXTERN ANOwni ANpiratOwniDialogReplay
IF ~~ THEN REPLY @201 GOTO ANOwniBankTalkMyself
IF ~~ THEN REPLY @203 GOTO ANOwniBankTalkJob
IF ~~ THEN REPLY @210 GOTO ANOwniBankTalkBye1 
END 

IF ~~ THEN BEGIN ANOwniBankTalkJob
  SAY @208
 =@209   
IF ~Global("ANpiratOwni","AN0720",0)~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANpiratOwni","AN0720",1)~ REPLY @237 EXTERN ANOwni ANpiratOwniDialog
IF ~Global("ANpiratOwni","AN0720",3)~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANpiratOwni","AN0720",4)~ REPLY @238 EXTERN ANOwni ANpiratOwniDialogReplay
IF ~~ THEN REPLY @201 GOTO ANOwniBankTalkMyself
IF ~~ THEN REPLY @202 GOTO ANOwniBankTalkCleric
IF ~~ THEN REPLY @210 GOTO ANOwniBankTalkBye1  
END 

IF ~~ THEN BEGIN ANOwniBankTalkTethyr
  SAY @217
 =@209     
IF ~Global("ANpiratOwni","AN0720",0)~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANpiratOwni","AN0720",1)~ REPLY @237 EXTERN ANOwni ANpiratOwniDialog
IF ~Global("ANpiratOwni","AN0720",3)~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANpiratOwni","AN0720",4)~ REPLY @238 EXTERN ANOwni ANpiratOwniDialogReplay
IF ~~ THEN REPLY @202 GOTO ANOwniBankTalkCleric
IF ~~ THEN REPLY @203 GOTO ANOwniBankTalkJob
IF ~~ THEN REPLY @210 GOTO ANOwniBankTalkBye1 
END 

IF ~~ THEN BEGIN ANOwniBankTalkBodhi
  SAY @230
IF ~~ THEN REPLY @231 GOTO ANOwniBankTalkBodhi1
END 

IF ~~ THEN BEGIN ANOwniBankTalkBodhi1
  SAY @232
IF ~~ THEN DO ~SetGlobal("OwniFightBodhi","GLOBAL",1)~ REPLY @233 GOTO ANOwniBankTalkBye1 
END 

IF ~~ THEN BEGIN ANOwniBankTalkBye1
  SAY @211
IF ~~ THEN EXIT
END 

IF ~OR(2) AreaCheck("AR0808") AreaCheck("AR0809")~ THEN BEGIN ANOwniTalkBodhi
  SAY @234
IF ~~ THEN EXIT
END 

END

CHAIN 
IF ~AreaCheck("AN0720") Global("AnOwniBankTalk","GLOBAL",1) Global("AnOwniBankTalkThink","GLOBAL",0)~ THEN ANOwni ANOwniBankTalk1.7
@38 DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~
END
IF ~~ THEN REPLY @39 EXTERN ANOwni ANOwniBankTalk1.7_1
IF ~~ THEN REPLY @265 EXTERN ANOwni ANOwniBankTalk1.7_1

CHAIN ANOwni ANOwniBankTalk1.7_1
@40
=@41
=@42
END
IF ~~ THEN REPLY @43 EXTERN ANOwni ANOwniBankTalk1.7_2

CHAIN ANOwni ANOwniBankTalk1.7_2
@44
=@45
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @46
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("Viconia") !InMyArea("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @46
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) OR(3) !InParty("Viconia") !InMyArea("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID) OR(4) !InParty("Valygar") !InMyArea("Valygar") Dead("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @46
END
IF ~OR(3) !InParty("Korgan") !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID) OR(3) !InParty("Viconia") !InMyArea("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID) OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN REPLY @46 EXTERN ANOwni ANOwniBankTalk1.7_3
IF ~OR(3) InParty("Korgan") InParty("Viconia") InParty("Valygar") OR(3) !StateCheck("Korgan",CD_STATE_NOTVALID) !StateCheck("Viconia",CD_STATE_NOTVALID) !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN EXTERN ANOwni ANOwniBankTalk1.7_3

APPEND EDWINJ
IF ~~ THEN BEGIN ANOwniBankTalk1.7_3Edwin
  SAY @48
IF ~~ THEN EXTERN ANOwni ANOwniBankTalk1.7_4
END 
END


CHAIN ANOwni ANOwniBankTalk1.7_3
@47
END
IF ~OR(2) !InParty("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN REPLY @48 EXTERN ANOwni ANOwniBankTalk1.7_4 
IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN EXTERN EDWINJ ANOwniBankTalk1.7_3Edwin

CHAIN ANOwni ANOwniBankTalk1.7_4
@49
END
IF ~~ THEN REPLY @50 EXTERN ANOwni ANOwniBankTalk1.7_5

CHAIN ANOwni ANOwniBankTalk1.7_5
@51
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @52
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @52
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @52
END
IF ~OR(3) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN REPLY @52 EXTERN ANOwni ANOwniBankTalk1.7_6
IF ~OR(3) InParty("Nalia") InParty("Mazzy") InParty("Valygar") OR(3) !StateCheck("Nalia",CD_STATE_NOTVALID) !StateCheck("Mazzy",CD_STATE_NOTVALID) !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN EXTERN ANOwni ANOwniBankTalk1.7_6

CHAIN ANOwni ANOwniBankTalk1.7_6
@53
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @54
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) OR(2) !InParty("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @54
END
IF ~OR(2) !InParty("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID) OR(2) !InParty("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN REPLY @54 EXTERN ANOwni ANOwniBankTalk1.7_7
IF ~OR(2) InParty("Anomen") InParty("Edwin") OR(2) !StateCheck("Anomen",CD_STATE_NOTVALID) !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN EXTERN ANOwni ANOwniBankTalk1.7_7

CHAIN ANOwni ANOwniBankTalk1.7_7
@55
END
IF ~~ THEN REPLY @56 EXTERN ANOwni ANOwniBankTalk1.7_8

APPEND EDWINJ
IF ~~ THEN BEGIN ANOwniBankTalk1.7_8Edwin
  SAY @59
IF ~~ THEN EXTERN ANOwni ANOwniBankTalk1.7_9
END 
END

CHAIN ANOwni ANOwniBankTalk1.7_8
@57
= @58
END
IF ~OR(2) !InParty("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN REPLY @59 EXTERN ANOwni ANOwniBankTalk1.7_9
IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN EXTERN EDWINJ ANOwniBankTalk1.7_8Edwin

CHAIN ANOwni ANOwniBankTalk1.7_9
@60
= @61
END
IF ~~ THEN REPLY @62 EXTERN ANOwni ANOwniBankTalk1.7_10
IF ~~ THEN REPLY @266 EXTERN ANOwni ANOwniBankTalk1.7_10

CHAIN ANOwni ANOwniBankTalk1.7_10
@63
= @64
= @65
= @66
= @67
= @68
= @69
END
IF ~~ THEN REPLY @70 + ANOwniBankTalk1.8
IF ~~ THEN DO ~SetGlobal("AnOwniBankTalkPay","GLOBAL",1000) AddJournalEntry(@1031,QUEST)~ REPLY @268 + ANOwniBankTalk1.8.1
IF ~~ THEN REPLY @71 + ANOwniBankTalk1.9What
IF ~~ THEN REPLY @72 + ANOwniBankTalk1.10

CHAIN ANOwni ANOwniBankTalk1.9What
@270
END
IF ~~ THEN REPLY @70 + ANOwniBankTalk1.8
IF ~~ THEN DO ~SetGlobal("AnOwniBankTalkPay","GLOBAL",1000) AddJournalEntry(@1031,QUEST)~ REPLY @268 + ANOwniBankTalk1.8.1
IF ~~ THEN REPLY @269 + ANOwniBankTalk1.9
IF ~~ THEN REPLY @72 + ANOwniBankTalk1.10


CHAIN 
IF ~AreaCheck("AN0720") Global("AnOwniBankTalk","GLOBAL",5) !GlobalTimerExpired("AnOwniBankBattleTimer","GLOBAL") OR(2) TimeOfDay(NIGHT) TimeOfDay(DUSK)~ THEN ANOwni ANOwniBankTalkTactics
@113 DO ~SetGlobal("AnOwniBankTalk","GLOBAL",6)~
=@89
END
IF ~~ THEN REPLY @90 EXTERN ANOwni ANOwniBankTalkTactics_1
IF ~~ THEN REPLY @267 EXTERN ANOwni ANOwniBankTalkTactics_1

CHAIN ANOwni ANOwniBankTalkTactics_1
@91
=@92
END
IF ~~ THEN REPLY @93 EXTERN ANOwni ANOwniBankTalkTactics_2

CHAIN ANOwni ANOwniBankTalkTactics_2
@94
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @95
END
IF ~OR(2) !InParty("Jan") StateCheck("Jan",CD_STATE_NOTVALID)~ THEN EXTERN ANOwni ANOwniBankTalkTactics_3
IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN EXTERN JANJ ANOwniBankTalkTactics_2Jan

APPEND JANJ 
IF ~~ THEN BEGIN ANOwniBankTalkTactics_2Jan
  SAY @225
IF ~~ THEN REPLY @226 GOTO ANOwniBankTalkTactics_2Jan1
END 

IF ~~ THEN BEGIN ANOwniBankTalkTactics_2Jan1
  SAY @227
IF ~~ THEN REPLY @228 EXTERN ANOwni ANOwniBankTalkTactics_3
END 
END

CHAIN ANOwni ANOwniBankTalkTactics_3
@96
END
IF ~~ THEN REPLY @97 EXTERN ANOwni ANOwniBankTalkTactics_4

CHAIN ANOwni ANOwniBankTalkTactics_4
@98
=@99
END
IF ~~ THEN REPLY @100 EXTERN ANOwni ANOwniBankTalkTactics_5

CHAIN ANOwni ANOwniBankTalkTactics_5
@101
== YOSHJ IF ~IsValidForPartyDialog("Yoshimo")~ THEN @218
== ANOwni IF ~IsValidForPartyDialog("Yoshimo")~ THEN @219
== KORGANJ IF ~IsValidForPartyDialog("Korgan") IsValidForPartyDialog("Yoshimo")~ THEN @224
== KORGANJ IF ~IsValidForPartyDialog("Korgan") !IsValidForPartyDialog("Yoshimo")~ THEN @220
== ANOwni IF ~IsValidForPartyDialog("Korgan")~ THEN @221
== KORGANJ IF ~IsValidForPartyDialog("Korgan")~ THEN @222
END
IF ~!IsValidForPartyDialog("Korgan") !Global("AnOwniBankTalkAboutDruids","AN0720",0)~ THEN EXTERN ANOwni ANOwniBankTalkTactics_7
IF ~!IsValidForPartyDialog("Korgan") Global("AnOwniBankTalkAboutDruids","AN0720",0)~ THEN DO ~SetGlobal("AnOwniBankTalkAboutDruids","AN0720",1)~ REPLY @102 EXTERN ANOwni ANOwniBankTalkTactics_6
IF ~IsValidForPartyDialog("Korgan")~ THEN REPLY @223 EXTERN KORGANJ ANOwniBankTalkTactics_5Korgan

APPEND KORGANJ
IF ~~ THEN BEGIN ANOwniBankTalkTactics_5Korgan
  SAY @256
IF ~!Global("AnOwniBankTalkAboutDruids","AN0720",0)~ THEN EXTERN ANOwni ANOwniBankTalkTactics_7 
IF ~Global("AnOwniBankTalkAboutDruids","AN0720",0)~ THEN DO ~SetGlobal("AnOwniBankTalkAboutDruids","AN0720",1)~ REPLY @102 EXTERN ANOwni ANOwniBankTalkTactics_6
END 
END

CHAIN ANOwni ANOwniBankTalkTactics_6
@103
== IF_FILE_EXISTS 7XFALDJ IF ~InParty("7XFALD") InMyArea("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @255
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira")~ THEN @212
== ANOwni IF ~IsValidForPartyDialog("Jaheira")~ THEN @213
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira")~ THEN @214
== CERNDJ IF ~IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN @212
== ANOwni IF ~IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN @213
== CERNDJ IF ~IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN @214
END
IF ~!IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira") !Class(Player1,DRUID_ALL)~ THEN EXTERN ANOwni ANOwniBankTalkTactics_7
IF ~!IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira") Class(Player1,DRUID_ALL)~ THEN REPLY @212 EXTERN ANOwni ANOwniBankTalkTactics_7_1
IF ~OR(2) IsValidForPartyDialog("Cernd") IsValidForPartyDialog("Jaheira")~ THEN REPLY @212 EXTERN ANOwni ANOwniBankTalkTactics_7_1

CHAIN ANOwni ANOwniBankTalkTactics_7_1
@213
END
IF ~~ THEN REPLY @214 EXTERN ANOwni ANOwniBankTalkTactics_7_2

CHAIN ANOwni ANOwniBankTalkTactics_7_2
@215
END
IF ~~ THEN EXTERN ANOwni ANOwniBankTalkTactics_7

CHAIN ANOwni ANOwniBankTalkTactics_7
@104
END
IF ~~ THEN DO ~GiveItemCreate("BULL03",Player1,20,0,0)~ REPLY @105 + ANOwniBankTalkTactics1
IF ~~ THEN DO ~GiveItemCreate("DART04",Player1,20,0,0)~ REPLY @106 + ANOwniBankTalkTactics1
IF ~~ THEN DO ~GiveItemCreate("AROW11",Player1,20,0,0)~ REPLY @107 + ANOwniBankTalkTactics1
IF ~~ THEN DO ~GiveItemCreate("BOLT06",Player1,20,0,0)~ REPLY @108 + ANOwniBankTalkTactics1
IF ~~ THEN DO ~GiveItemCreate("POTN55",Player1,2,0,0)~ REPLY @109 + ANOwniBankTalkTactics1
IF ~~ THEN DO ~GiveItemCreate("SCRL62",Player1,1,0,0)~ REPLY @110 + ANOwniBankTalkTactics1

// Victory
CHAIN 
IF ~AreaCheck("AN0721") Global("ANdruidDead","GLOBAL",1) !Global("Player1OwniRevive","GLOBAL",2) !Global("Player1OwniRevive","GLOBAL",3)~ THEN ANOwni ANOwniBankTalkFinal
@115 DO ~SetGlobal("AnOwniBankTalk","GLOBAL",8) SetGlobal("ANdruidDead","GLOBAL",2) 
ChangeEnemyAlly("ANOwni",NEUTRAL) 
ChangeEnemyAlly("ANjalut",NEUTRAL) 
ChangeEnemyAlly("ANJock",NEUTRAL)
ChangeEnemyAlly("ANyant",NEUTRAL)~
== ANOwni IF ~OR(4) Dead("ANJock") Dead("ANyant") Dead("ANesra") Dead("ANjalut")~ THEN @118 DO ~SetGlobal("SPRITE_IS_DEADANesra","GLOBAL",0) SetGlobal("SPRITE_IS_DEADANyant","GLOBAL",0) SetGlobal("SPRITE_IS_DEADANjalut","GLOBAL",0) SetGlobal("SPRITE_IS_DEADANJock","GLOBAL",0)~
== ANOwni @116 DO ~AddJournalEntry(@1034,QUEST) GiveGoldForce(600) ActionOverride("ANjalut",EscapeArea()) ActionOverride("ANesra",EscapeArea()) ActionOverride("ANyant",EscapeArea()) ActionOverride("ANJock",EscapeArea()) RealSetGlobalTimer("ANbankdruidlootTimer","AN0721",20) EscapeArea()~
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @119
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @120
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @121
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @122
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @123
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !Dead("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @124
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !Dead("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) OR(4) !InParty("Cernd") !InMyArea("Cernd") Dead("Cernd") StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @124
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) OR(4) !InParty("Cernd") !InMyArea("Cernd") Dead("Cernd") StateCheck("Cernd",CD_STATE_NOTVALID) OR(4) !InParty("Valygar") !InMyArea("Valygar") Dead("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @124
END
IF ~OR(2) !InParty("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) OR(2) !InParty("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(2) !InParty("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN REPLY @124 EXIT
IF ~OR(3) InParty("Nalia") InParty("Mazzy") InParty("Valygar") OR(3) !StateCheck("Mazzy",CD_STATE_NOTVALID) !StateCheck("Valygar",CD_STATE_NOTVALID) !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN EXIT


CHAIN 
IF ~Global("ANdruidDead","GLOBAL",2) Global("AnOwniBankTalk","GLOBAL",8) Global("AnOwniBankTalkPay","GLOBAL",1000)~ THEN ANOwni ANOwniBankTalkFinal_400
@125 
=@126 DO ~SetGlobal("ANdruidDead","GLOBAL",3) GiveGoldForce(400) AddexperienceParty(8000) AddJournalEntry(@1035,QUEST_DONE)~
== ANOwni IF ~Global("Player1OwniRevive","GLOBAL",4)~ THEN @140 DO ~GiveGoldForce(900)~
== ANOwni @127
== ANOwni @1281
EXIT

CHAIN 
IF ~Global("ANdruidDead","GLOBAL",2) Global("AnOwniBankTalk","GLOBAL",8) Global("AnOwniBankTalkPay","GLOBAL",1200)~ THEN ANOwni ANOwniBankTalkFinal_600
@125 
=@126 DO ~SetGlobal("ANdruidDead","GLOBAL",3) GiveGoldForce(600) AddexperienceParty(8000) AddJournalEntry(@1035,QUEST_DONE)~
== ANOwni IF ~Global("Player1OwniRevive","GLOBAL",4)~ THEN @140 DO ~GiveGoldForce(900)~
=@127
EXIT

CHAIN 
IF ~Global("ANdruidDead","GLOBAL",2) Global("AnOwniBankTalk","GLOBAL",8) Global("AnOwniBankTalkPay","GLOBAL",1500)~ THEN ANOwni ANOwniBankTalkFinal_900
@125 
=@126 DO ~SetGlobal("ANdruidDead","GLOBAL",3) GiveGoldForce(900) AddexperienceParty(8000) AddJournalEntry(@1035,QUEST_DONE)~
== ANOwni IF ~Global("Player1OwniRevive","GLOBAL",4)~ THEN @140 DO ~GiveGoldForce(900)~
=@127
EXIT

// Owni dead
// Yantina
CHAIN 
IF ~AreaCheck("AN0721") Global("Player1OwniRevive","GLOBAL",1) Dead("ANdruid1") Class(Player1,CLERIC_ALL)~ THEN ANyant ANyantOwniDeadCleric
@129 DO ~ChangeEnemyAlly("ANjalut",NEUTRAL) 
ChangeEnemyAlly("ANJock",NEUTRAL)
ChangeEnemyAlly("ANyant",NEUTRAL)~
== ANyant @130 
END
IF ~~ THEN REPLY @135 DO ~SetGlobal("Player1OwniRevive","GLOBAL",2)~ EXIT

CHAIN 
IF ~AreaCheck("AN0721") Global("Player1OwniRevive","GLOBAL",1) Dead("ANdruid1") !Class(Player1,CLERIC_ALL)~ THEN ANyant ANyantOwniDeadNoCleric
@129 DO ~ChangeEnemyAlly("ANjalut",NEUTRAL) 
ChangeEnemyAlly("ANJock",NEUTRAL)
ChangeEnemyAlly("ANyant",NEUTRAL)~
== JAHEIRAJ IF ~!Class(Player1,CLERIC_ALL) InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @145
== ANyant IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @146
== ANyant IF ~~ THEN @142 DO ~AddJournalEntry(@1036,QUEST) SetGlobal("AnOwniDeadBank","GLOBAL",1) ActionOverride("ANjalut",EscapeArea()) ActionOverride("ANesra",EscapeArea()) ActionOverride("ANyant",EscapeArea()) ActionOverride("ANJock",EscapeArea()) EscapeArea()~
EXIT

// Jalut
CHAIN 
IF ~AreaCheck("AN0721") Global("Player1OwniRevive","GLOBAL",1) Dead("ANdruid1") Class(Player1,CLERIC_ALL)~ THEN ANjalut ANjalutOwniDeadCleric
@131 DO ~ChangeEnemyAlly("ANjalut",NEUTRAL) 
ChangeEnemyAlly("ANJock",NEUTRAL)
ChangeEnemyAlly("ANyant",NEUTRAL)~
=@132
END
IF ~~ THEN REPLY @135 DO ~SetGlobal("Player1OwniRevive","GLOBAL",2)~ EXIT

CHAIN 
IF ~AreaCheck("AN0721") Global("Player1OwniRevive","GLOBAL",1) Dead("ANdruid1") !Class(Player1,CLERIC_ALL)~ THEN ANjalut ANjalutOwniDeadNoCleric
@131 DO ~ChangeEnemyAlly("ANjalut",NEUTRAL) 
ChangeEnemyAlly("ANJock",NEUTRAL)
ChangeEnemyAlly("ANyant",NEUTRAL)~
== ANjalut @143 DO ~AddJournalEntry(@1036,QUEST) SetGlobal("AnOwniDeadBank","GLOBAL",1) ActionOverride("ANjalut",EscapeArea()) ActionOverride("ANesra",EscapeArea()) ActionOverride("ANyant",EscapeArea()) ActionOverride("ANJock",EscapeArea()) EscapeArea()~
EXIT

// Jock
CHAIN 
IF ~AreaCheck("AN0721") Global("Player1OwniRevive","GLOBAL",1) Dead("ANdruid1")~ THEN ANJock ANJockOwniDeadCleric
@133 DO ~ChangeEnemyAlly("ANjalut",NEUTRAL) 
ChangeEnemyAlly("ANJock",NEUTRAL)
ChangeEnemyAlly("ANyant",NEUTRAL)~
=@134
END
IF ~~ THEN REPLY @135 DO ~SetGlobal("Player1OwniRevive","GLOBAL",2)~ EXIT 

CHAIN 
IF ~AreaCheck("AN0721") Global("Player1OwniRevive","GLOBAL",1) Dead("ANdruid1")~ THEN ANJock ANJockOwniDeadNoCleric
@133 DO ~ChangeEnemyAlly("ANjalut",NEUTRAL) 
ChangeEnemyAlly("ANJock",NEUTRAL)
ChangeEnemyAlly("ANyant",NEUTRAL)~
=@144 DO ~AddJournalEntry(@1037,QUEST) SetGlobal("AnOwniDeadBank","GLOBAL",1) ActionOverride("ANjalut",EscapeArea()) ActionOverride("ANesra",EscapeArea()) ActionOverride("ANyant",EscapeArea()) ActionOverride("ANJock",EscapeArea()) EscapeArea()~
EXIT


// Owni Revive
CHAIN 
IF ~Dead("ANdruid1") AreaCheck("AN0721") OR(2) Global("Player1OwniRevive","GLOBAL",2) Global("Player1OwniRevive","GLOBAL",3)~ THEN ANowni ANOwniRevive
@137 DO ~SetGlobal("Player1OwniRevive","GLOBAL",4)~
== ANyant IF ~!Dead("ANyant")~ THEN @138
== ANjalut IF ~!Dead("ANjalut")~ THEN @139
== ANJock IF ~!Dead("ANJock")~ THEN @141
EXIT


// Druids
CHAIN 
IF ~~ THEN ANOwni ANOwniBankTalk1.6
@37 DO ~SetGlobal("AnOwniBankTalkAboutDruids","AN0720",1)~
== IF_FILE_EXISTS 7XFALDJ IF ~InParty("7XFALD") InMyArea("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @255
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira")~ THEN @212
== ANOwni IF ~IsValidForPartyDialog("Jaheira")~ THEN @213
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira")~ THEN @214
== CERNDJ IF ~IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN @212
== ANOwni IF ~IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN @213
== CERNDJ IF ~IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN @214
END
IF ~!IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira") !Class(Player1,DRUID_ALL)~ THEN EXTERN ANOwni ANOwniBankTalk1.7
IF ~!IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira") Class(Player1,DRUID_ALL)~ THEN REPLY @212 EXTERN ANOwni ANOwniBankTalk1.6_1
IF ~OR(2) IsValidForPartyDialog("Cernd") IsValidForPartyDialog("Jaheira")~ THEN EXTERN ANOwni ANOwniBankTalk1.6_1

CHAIN ANOwni ANOwniBankTalk1.6_1
@215
END
IF ~~ THEN EXTERN ANOwni ANOwniBankTalk1.7

//Оуни
// Дополнения, для квеста "Пиратское наследие"
CHAIN
IF ~Global("ANpiratOwni","AN0720",1) !AreaCheck("AR0808") !AreaCheck("AR0809") Global("AnOwniBankTalk","GLOBAL",8) !Global("ANdruidDead","GLOBAL",2)~ THEN ANOwni ANpiratOwniDialog
@239 DO ~SetGlobal("ANpiratOwni","AN0720",2)~
=@240
=@241
END
IF ~~ THEN REPLY @242 EXTERN ANOwni ANpiratOwniDialog_1
IF ~~ THEN REPLY @257 EXTERN ANOwni ANpiratOwniDialog_1
IF ~~ THEN REPLY @258 EXTERN ANOwni ANpiratOwniDialog_1

CHAIN ANOwni ANpiratOwniDialog_1
@243
END
IF ~~ THEN REPLY @244 EXTERN ANOwni ANpiratOwniDialog_2
IF ~~ THEN REPLY @259 EXTERN ANOwni ANpiratOwniDialog_2
IF ~~ THEN REPLY @260 EXTERN ANOwni ANpiratOwniDialog_2

CHAIN ANOwni ANpiratOwniDialog_2
@245
=@246
=@247
END
IF ~~ THEN REPLY @248 EXTERN ANOwni ANpiratOwniDialog_3
IF ~~ THEN REPLY @261 EXTERN ANOwni ANpiratOwniDialog_3

CHAIN ANOwni ANpiratOwniDialog_3
@249
END
IF ~~ THEN DO ~AddJournalEntry(@1065,QUEST) SetGlobal("ANpiratOwni","AN0720",4) SetGlobal("ANpiratQuest","GLOBAL",1)~ REPLY @250 GOTO ANpiratOwniDialogYes
IF ~~ THEN DO ~SetGlobal("ANpiratOwni","AN0720",3)~ REPLY @251 GOTO ANpiratOwniDialogNo

APPEND ANOwni

IF ~~ THEN BEGIN ANpiratOwniDialogYes
  SAY @252
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN ANpiratOwniDialogNo
  SAY @253
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN ANpiratOwniDialogReplay
  SAY @254
IF ~~ THEN DO ~SetGlobal("ANpiratQuest","GLOBAL",1)~ EXIT
END 

END