APPEND 7XQUAYJ
IF ~~ THEN BEGIN ANtrollTalkQuayleImp
  SAY @235
IF ~~ THEN REPLY @194 EXTERN ANtroll ANtrollTalk2  
IF ~~ THEN DO ~SetGlobal("ANTroll","GLOBAL",12) SetGlobal("ANTrollEscape","GLOBAL",2) TakePartyItem("ANcook") TakePartyItem("ANverev")~ REPLY @193 EXTERN ANtroll ANtrollTalk1
IF ~~ THEN DO ~GiveItemCreate("ANhead",Player1,1,0,0) AddJournalEntry(@1078,QUEST) SetGlobal("ANTroll","GLOBAL",13)~ REPLY @195 EXTERN ANtroll ANtrollTalk3
IF ~~ THEN DO ~AddJournalEntry(@1079,QUEST) SetGlobal("ANTroll","GLOBAL",14)~ REPLY @196 EXTERN ANtroll ANtrollTalk4
END
END