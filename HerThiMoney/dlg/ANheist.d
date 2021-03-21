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
== PLAYER1 @6
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @12
== JAHEIRAJ @7
== PLAYER1 @8
== JAHEIRAJ @9
== PLAYER1 @10
== JAHEIRAJ @11
EXIT

// Esra
APPEND ANesra
IF ~AreaCheck("AN0720") Global("AnOwniBankTalk","GLOBAL",0) Global("AnEsraFirstBankTalk","LOCALS",0)~ THEN BEGIN ANesraBankTalk1
  SAY @13
=@14
IF ~~ THEN DO ~SetGlobal("AnEsraFirstBankTalk","LOCALS",1)~ EXIT
END

IF ~!Global("AnOwniBankTalk","GLOBAL",4) !Global("AnOwniBankTalk","GLOBAL",8) Global("AnEsraFirstBankTalk","LOCALS",1) !Global("AnOwniBankTalkThink","GLOBAL",2) !Global("AnOwniBankTalk","GLOBAL",3) !Global("AnOwniBankTalk","GLOBAL",9)~ THEN BEGIN ANesraBankTalkThink
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
IF ~~ THEN DO ~SetGlobal("ANdruidDead","GLOBAL",3) GiveGoldForce(1000) AddexperienceParty(2000) AddJournalEntry(@1027,QUEST_DONE)~ EXIT
END

IF ~Global("AnOwniBankTalkPay","GLOBAL",1200) Global("AnOwniDeadBank","GLOBAL",1) OR(2) Global("ANdruidDead","GLOBAL",1) Global("ANdruidDead","GLOBAL",2)~ THEN BEGIN ANesraBankTalk1200
  SAY @147
IF ~~ THEN DO ~SetGlobal("ANdruidDead","GLOBAL",3) GiveGoldForce(1200) AddexperienceParty(2000) AddJournalEntry(@1027,QUEST_DONE)~ EXIT
END

IF ~Global("AnOwniBankTalkPay","GLOBAL",1500) Global("AnOwniDeadBank","GLOBAL",1) OR(2) Global("ANdruidDead","GLOBAL",1) Global("ANdruidDead","GLOBAL",2)~ THEN BEGIN ANesraBankTalk1500
  SAY @147
IF ~~ THEN DO ~SetGlobal("ANdruidDead","GLOBAL",3) GiveGoldForce(1500) AddexperienceParty(2000) AddJournalEntry(@1027,QUEST_DONE)~ EXIT
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
IF ~~ THEN DO ~SetGlobal("AnOwniBankTalkDruids","LOCALS",1) SetGlobal("AnOwniBankTalkAboutDruids","LOCALS",1) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @35 + ANOwniBankTalk1.6
IF ~~ THEN REPLY @36 + ANOwniBankTalk1.7
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
IF ~~ THEN DO ~SetGlobal("AnOwniBankTalkThink","GLOBAL",1) AddJournalEntry(@1030,QUEST) SetGlobalTimer("AnOwniBankThinkTimer","GLOBAL",TEN_HOURS)~ EXIT
END

IF ~Global("AnOwniBankTalkThink","GLOBAL",1) !Global("AnOwniBankTalk","GLOBAL",3) !Global("AnOwniBankTalk","GLOBAL",4) !GlobalTimerExpired("AnOwniBankThinkTimer","GLOBAL")~ THEN BEGIN ANOwniBankTalkThink2
  SAY @82
IF ~~ THEN REPLY @70 + ANOwniBankTalk1.8
IF ~~ THEN REPLY @71 + ANOwniBankTalk1.9
END

IF ~Global("AnOwniBankTalkThink","GLOBAL",1) GlobalTimerExpired("AnOwniBankThinkTimer","GLOBAL")~ THEN BEGIN ANOwniBankTalkThink3
  SAY @83
IF ~~ THEN DO ~SetGlobal("AnOwniBankTalkThink","GLOBAL",2) AddJournalEntry(@1033,QUEST_DONE)~ EXIT
END


IF ~Global("AnOwniBankTalk","GLOBAL",4) GlobalTimerExpired("AnOwniBankBattleTimer","GLOBAL")~ THEN BEGIN ANOwniBankBattleSkip
  SAY @83
IF ~~ THEN DO ~SetGlobal("AnOwniBankTalk","GLOBAL",9)~ EXIT
END


IF ~OR(3) Global("AnOwniBankTalkThink","GLOBAL",2) Global("AnOwniBankTalk","GLOBAL",3) Global("AnOwniBankTalk","GLOBAL",9)~ THEN BEGIN ANOwniBankTalkThink4
  SAY @84
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANOwniBankTalkTactics1
  SAY @111
=@114  
IF ~~ THEN DO ~ChangeEnemyAlly("ANOwni",GOODBUTBLUE) ChangeEnemyAlly("ANjalut",GOODBUTBLUE) ChangeEnemyAlly("ANyant",GOODBUTBLUE) ChangeEnemyAlly("ANJock",GOODBUTBLUE) SetGlobal("AnOwniBankTalk","GLOBAL",6)~ EXIT
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
== PLAYER1 @39 
== ANOwni @40
=@41
=@42
== PLAYER1 @43
== ANOwni @44
=@45
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @46
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("Viconia") !InMyArea("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @46
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) OR(3) !InParty("Viconia") !InMyArea("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID) OR(4) !InParty("Valygar") !InMyArea("Valygar") Dead("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @46
== PLAYER1 IF ~OR(3) !InParty("Korgan") !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID) OR(3) !InParty("Viconia") !InMyArea("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID) OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @46
== ANOwni @47
== EDWINJ IF ~IsValidForPartyDialog("Edwin")~ THEN @48
== PLAYER1 IF ~!IsValidForPartyDialog("Edwin")~ THEN @48
== ANOwni @49
== PLAYER1 @50
== ANOwni @51
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @52
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @52
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @52
== PLAYER1 IF ~OR(3) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @52
== ANOwni @53
== ANOMENJ IF ~IsValidForPartyDialog("Anomen")~ THEN @54
== EDWINJ IF ~IsValidForPartyDialog("Edwin") !IsValidForPartyDialog("Anomen")~ THEN @54
== PLAYER1 IF ~!IsValidForPartyDialog("Anomen") !IsValidForPartyDialog("Edwin")~ THEN @54
== ANOwni @55
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !Dead("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @56
== PLAYER1 IF ~OR(4) !InParty("Aerie") !InMyArea("Aerie") Dead("Aerie") StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @56
== ANOwni @57
= @58
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @59
== PLAYER1 IF ~OR(4) !InParty("Edwin") !InMyArea("Edwin") Dead("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @59
== ANOwni @60
= @61
== PLAYER1 @62
== ANOwni @63
= @64
= @65
= @66
= @67
= @68
= @69
END
IF ~~ THEN REPLY @70 + ANOwniBankTalk1.8
IF ~~ THEN REPLY @71 + ANOwniBankTalk1.9
IF ~~ THEN REPLY @72 + ANOwniBankTalk1.10


CHAIN 
IF ~AreaCheck("AN0720") Global("AnOwniBankTalk","GLOBAL",5) !GlobalTimerExpired("AnOwniBankBattleTimer","GLOBAL") OR(2) TimeOfDay(NIGHT) TimeOfDay(DUSK)~ THEN ANOwni ANOwniBankTalkTactics
@113 DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("AnOwniBankTalk","GLOBAL",6)~
=@89
== PLAYER1 @90
== ANOwni @91
=@92
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !Dead("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @93
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !Dead("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) OR(4) !InParty("Mazzy") !InMyArea("Mazzy") Dead("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @93
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) OR(4) !InParty("Mazzy") !InMyArea("Mazzy") Dead("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(4) !InParty("Valygar") !InMyArea("Valygar") Dead("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @93
== PLAYER1 IF ~OR(4) !InParty("Nalia") !InMyArea("Nalia") Dead("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) OR(4) !InParty("Mazzy") !InMyArea("Mazzy") Dead("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(4) !InParty("Valygar") !InMyArea("Valygar") Dead("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @93
== ANOwni @94
== PLAYER1 @95
== JANJ IF ~IsValidForPartyDialog("Jan")~ THEN @225
== PLAYER1 IF ~IsValidForPartyDialog("Jan")~ THEN @226
== JANJ IF ~IsValidForPartyDialog("Jan")~ THEN @227
== PLAYER1 IF ~IsValidForPartyDialog("Jan")~ THEN @228
== ANOwni @96
== PLAYER1 @97
== ANOwni @98
=@99
== PLAYER1 @100
== ANOwni @101
== YOSHJ IF ~IsValidForPartyDialog("Yoshimo")~ THEN @218
== ANOwni IF ~IsValidForPartyDialog("Yoshimo")~ THEN @219
== KORGANJ IF ~IsValidForPartyDialog("Korgan") IsValidForPartyDialog("Yoshimo")~ THEN @224
== KORGANJ IF ~IsValidForPartyDialog("Korgan") !IsValidForPartyDialog("Yoshimo")~ THEN @220
== ANOwni IF ~IsValidForPartyDialog("Korgan")~ THEN @221
== KORGANJ IF ~IsValidForPartyDialog("Korgan")~ THEN @222
== PLAYER1 IF ~IsValidForPartyDialog("Korgan")~ THEN @223
== PLAYER1 IF ~Global("AnOwniBankTalkDruids","LOCALS",0)~ THEN @102
== ANOwni IF ~Global("AnOwniBankTalkDruids","LOCALS",0)~ THEN @103
== JAHEIRAJ IF ~!Global("AnOwniBankTalkAboutDruids","LOCALS",2) IsValidForPartyDialog("Jaheira")~ THEN @212
== ANOwni IF ~!Global("AnOwniBankTalkAboutDruids","LOCALS",2) IsValidForPartyDialog("Jaheira")~ THEN @213
== JAHEIRAJ IF ~!Global("AnOwniBankTalkAboutDruids","LOCALS",2) IsValidForPartyDialog("Jaheira")~ THEN @214
== CERNDJ IF ~!Global("AnOwniBankTalkAboutDruids","LOCALS",2) IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN @212
== ANOwni IF ~!Global("AnOwniBankTalkAboutDruids","LOCALS",2) IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN @213
== CERNDJ IF ~!Global("AnOwniBankTalkAboutDruids","LOCALS",2) IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN @214
== PLAYER1 IF ~!Global("AnOwniBankTalkAboutDruids","LOCALS",2) !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira") Class(Player1,DRUID_ALL)~ THEN @212
== ANOwni IF ~!Global("AnOwniBankTalkAboutDruids","LOCALS",2) !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira") Class(Player1,DRUID_ALL)~ THEN @213
== PLAYER1 IF ~!Global("AnOwniBankTalkAboutDruids","LOCALS",2) !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira") Class(Player1,DRUID_ALL)~ THEN @214
== ANOwni IF ~!Global("AnOwniBankTalkAboutDruids","LOCALS",2) OR(3) IsValidForPartyDialog("Cernd") IsValidForPartyDialog("Jaheira") Class(Player1,DRUID_ALL)~ THEN @215
== ANOwni @104
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
@115 DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("AnOwniBankTalk","GLOBAL",8) SetGlobal("ANdruidDead","GLOBAL",2)~
== ANOwni IF ~OR(4) Dead("ANJock") Dead("ANyant") Dead("ANesra") Dead("ANjalut")~ THEN @118 DO ~SetGlobal("SPRITE_IS_DEADANesra","GLOBAL",0) SetGlobal("SPRITE_IS_DEADANyant","GLOBAL",0) SetGlobal("SPRITE_IS_DEADANjalut","GLOBAL",0) SetGlobal("SPRITE_IS_DEADANJock","GLOBAL",0)~
== ANOwni @116 DO ~AddJournalEntry(@1034,QUEST) GiveGoldForce(600) EscapeArea()~
== PLAYER1 @117 DO ~ActionOverride("ANjalut",EscapeArea()) ActionOverride("ANesra",EscapeArea()) ActionOverride("ANyant",EscapeArea()) ActionOverride("ANJock",EscapeArea()) RealSetGlobalTimer("ANbankdruidlootTimer","AN0721",20)~
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @119
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @120
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @121
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @122
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @123
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !Dead("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @124
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !Dead("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) OR(4) !InParty("Cernd") !InMyArea("Cernd") Dead("Cernd") StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @124
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) OR(4) !InParty("Cernd") !InMyArea("Cernd") Dead("Cernd") StateCheck("Cernd",CD_STATE_NOTVALID) OR(4) !InParty("Valygar") !InMyArea("Valygar") Dead("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @124
== PLAYER1 IF ~OR(4) !InParty("Nalia") !InMyArea("Nalia") Dead("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) OR(4) !InParty("Mazzy") !InMyArea("Mazzy") Dead("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(4) !InParty("Valygar") !InMyArea("Valygar") Dead("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @124
EXIT

CHAIN 
IF ~Global("ANdruidDead","GLOBAL",2) Global("AnOwniBankTalk","GLOBAL",8) Global("AnOwniBankTalkPay","GLOBAL",1000)~ THEN ANOwni ANOwniBankTalkFinal_400
@125 
=@126 DO ~SetGlobal("ANdruidDead","GLOBAL",3) GiveGoldForce(400) AddexperienceParty(8000) AddJournalEntry(@1035,QUEST_DONE)~
== ANOwni IF ~Global("Player1OwniRevive","GLOBAL",4)~ THEN @140 DO ~GiveGoldForce(900)~
== ANOwni @127
== ANOwni @1281
== PLAYER1 @128 
EXIT

CHAIN 
IF ~Global("ANdruidDead","GLOBAL",2) Global("AnOwniBankTalk","GLOBAL",8) Global("AnOwniBankTalkPay","GLOBAL",1200)~ THEN ANOwni ANOwniBankTalkFinal_600
@125 
=@126 DO ~SetGlobal("ANdruidDead","GLOBAL",3) GiveGoldForce(600) AddexperienceParty(8000) AddJournalEntry(@1035,QUEST_DONE)~
== ANOwni IF ~Global("Player1OwniRevive","GLOBAL",4)~ THEN @140 DO ~GiveGoldForce(900)~
=@127
== PLAYER1 @128 
EXIT

CHAIN 
IF ~Global("ANdruidDead","GLOBAL",2) Global("AnOwniBankTalk","GLOBAL",8) Global("AnOwniBankTalkPay","GLOBAL",1500)~ THEN ANOwni ANOwniBankTalkFinal_900
@125 
=@126 DO ~SetGlobal("ANdruidDead","GLOBAL",3) GiveGoldForce(900) AddexperienceParty(8000) AddJournalEntry(@1035,QUEST_DONE)~
== ANOwni IF ~Global("Player1OwniRevive","GLOBAL",4)~ THEN @140 DO ~GiveGoldForce(900)~
=@127
== PLAYER1 @128 
EXIT

// Owni dead
// Yantina
CHAIN 
IF ~AreaCheck("AN0721") Global("Player1OwniRevive","GLOBAL",1) Dead("ANdruid1")~ THEN ANyant ANyantOwniDead
@129 
== ANyant IF ~Class(Player1,CLERIC_ALL)~ THEN @130 
== PLAYER1 IF ~Class(Player1,CLERIC_ALL)~ THEN @135 DO ~SetGlobal("Player1OwniRevive","GLOBAL",2)~ 
== JAHEIRAJ IF ~!Class(Player1,CLERIC_ALL) InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @145
== ANyant IF ~!Class(Player1,CLERIC_ALL) InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @146
== ANyant IF ~!Class(Player1,CLERIC_ALL)~ THEN @142 DO ~AddJournalEntry(@1036,QUEST) EscapeArea() SetGlobal("AnOwniDeadBank","GLOBAL",1)~
EXIT

// Jalut
CHAIN 
IF ~AreaCheck("AN0721") Global("Player1OwniRevive","GLOBAL",1) Dead("ANdruid1")~ THEN ANjalut ANjalutOwniDead
@131 
== ANjalut IF ~Class(Player1,CLERIC_ALL)~ THEN @132
== PLAYER1 IF ~Class(Player1,CLERIC_ALL)~ THEN @135 DO ~SetGlobal("Player1OwniRevive","GLOBAL",2)~ 
== ANjalut IF ~!Class(Player1,CLERIC_ALL)~ THEN @143 DO ~AddJournalEntry(@1036,QUEST) EscapeArea() SetGlobal("AnOwniDeadBank","GLOBAL",1)~
EXIT

// Jock
CHAIN 
IF ~AreaCheck("AN0721") Global("Player1OwniRevive","GLOBAL",1) Dead("ANdruid1")~ THEN ANJock ANJockOwniDead
@133 
== ANJock IF ~Class(Player1,CLERIC_ALL)~ THEN @134
== PLAYER1 IF ~Class(Player1,CLERIC_ALL)~ THEN @135 DO ~SetGlobal("Player1OwniRevive","GLOBAL",2)~ 
== ANJock IF ~!Class(Player1,CLERIC_ALL)~ THEN @144 DO ~AddJournalEntry(@1037,QUEST) EscapeArea() SetGlobal("AnOwniDeadBank","GLOBAL",1)~
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
IF ~AreaCheck("AN0720") Global("AnOwniBankTalk","GLOBAL",1) Global("AnOwniBankTalkThink","GLOBAL",0) Global("AnOwniBankTalkAboutDruids","LOCALS",1)~ THEN ANOwni ANOwniBankTalk1.6
@37 DO ~SetGlobal("AnOwniBankTalkAboutDruids","LOCALS",2)~
== IF_FILE_EXISTS 7XFALDJ IF ~InParty("7XFALD") InMyArea("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @255
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira")~ THEN @212
== ANOwni IF ~IsValidForPartyDialog("Jaheira")~ THEN @213
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira")~ THEN @214
== CERNDJ IF ~IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN @212
== ANOwni IF ~IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN @213
== CERNDJ IF ~IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira")~ THEN @214
== PLAYER1 IF ~!IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira") Class(Player1,DRUID_ALL)~ THEN @212
== ANOwni IF ~!IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira") Class(Player1,DRUID_ALL)~ THEN @213
== PLAYER1 IF ~!IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Jaheira") Class(Player1,DRUID_ALL)~ THEN @214
== ANOwni IF ~OR(3) IsValidForPartyDialog("Cernd") IsValidForPartyDialog("Jaheira") Class(Player1,DRUID_ALL)~ THEN @215
EXTERN ANOwni ANOwniBankTalk1.7




//Оуни
// Дополнения, для квеста "Пиратское наследие"
CHAIN
IF ~Global("ANpiratOwni","AN0720",1) !AreaCheck("AR0808") !AreaCheck("AR0809") Global("AnOwniBankTalk","GLOBAL",8) !Global("ANdruidDead","GLOBAL",2)~ THEN ANOwni ANpiratOwniDialog
@239 DO ~SetGlobal("ANpiratOwni","AN0720",2)~
=@240
=@241
== PLAYER1 @242
== ANOwni @243
== PLAYER1 @244
== ANOwni @245
=@246
=@247
== PLAYER1 @248
== ANOwni @249
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