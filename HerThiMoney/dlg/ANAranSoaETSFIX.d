// Латан, если установлен мод Expanded Thief Stronghold
APPEND TSGLT2

IF WEIGHT #-20 ~Global("ANAranLamp","GLOBAL",4) Global("ANAranLampLatan","GLOBAL",1) Global("PlayerThiefGuild","GLOBAL",1)~ BEGIN ANAranLampLatanTalkGuild
  SAY @531
IF ~~ THEN DO ~SetGlobal("ANAranLampLatan","GLOBAL",2)~ REPLY @532 GOTO ANAranLampLatanTalkGuild2
END

IF WEIGHT #-21 ~Global("ANAranLamp","GLOBAL",4) Global("ANAranLampLatan","GLOBAL",1) Global("PGFailed","GLOBAL",1)~ BEGIN ANAranLampLatanTalkNoGuild
  SAY @531
IF ~~ THEN DO ~SetGlobal("ANAranLampLatan","GLOBAL",2)~ REPLY @533 GOTO ANAranLampLatanTalkNoGuild2
END

IF ~~ BEGIN ANAranLampLatanTalkGuild2
  SAY @534
IF ~~ THEN GOTO ANAranLampLatanTalkGuild3
END

IF ~~ BEGIN ANAranLampLatanTalkNoGuild2
  SAY @535
IF ~~ THEN GOTO ANAranLampLatanTalkGuild3
END

IF ~~ BEGIN ANAranLampLatanTalkGuild3
  SAY @536
IF ~~ THEN DO ~AddJournalEntry(@1058,QUEST)~ REPLY @537 GOTO ANAranLampLatanTalkGuild4
END

IF ~~ BEGIN ANAranLampLatanTalkGuild4
  SAY @538
IF ~~ THEN EXIT
END

END