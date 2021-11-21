// Тони

BEGIN ANTony

IF ~Global("AranLovePrologue","GLOBAL",2)~ BEGIN ANtonyPrologueTalk
  SAY @427 
IF ~~ THEN DO ~SetGlobal("AranLovePrologue","GLOBAL",3) EscapeArea()~ EXIT
END

IF ~Global("AranLove","GLOBAL",1) GlobalTimerExpired("ANAranLetter1Timer","GLOBAL")~ BEGIN ANtonyFirstTalk
  SAY @0 
IF ~~ THEN DO ~SetGlobal("AranLove","GLOBAL",2) EscapeArea()~ EXIT
END

IF ~Global("AranLove","GLOBAL",12) GlobalTimerExpired("ANAranLetter2Timer","GLOBAL")~ BEGIN ANtonySecondTalk
  SAY @73 
IF ~~ THEN DO ~SetGlobal("AranLove","GLOBAL",13) EscapeArea()~ EXIT
END

IF ~Global("AranLove","GLOBAL",24)~ BEGIN ANtonyDocksTalk
  SAY @128 
IF ~~ THEN REPLY @129 GOTO ANtonyDocksTalk1
END

IF ~~ BEGIN ANtonyDocksTalk1
  SAY @130 
IF ~~ THEN DO ~AddJournalEntry(@1048,QUEST) SetGlobal("AranLove","GLOBAL",25) EscapeArea()~ EXIT
END

IF ~Global("AranLove","GLOBAL",29) GlobalTimerExpired("ANAranLetter3Timer","GLOBAL")~ BEGIN ANtonyThreeTalk
  SAY @189 
IF ~~ THEN DO ~SetGlobal("AranLove","GLOBAL",30) EscapeArea()~ EXIT
END

IF ~Global("TonySpawn4","GLOBAL",1)~ BEGIN ANtonyFourTalk
  SAY @380 
IF ~~ THEN DO ~SetGlobal("TonySpawn4","GLOBAL",2) EscapeArea()~ EXIT
END

IF ~Global("TonySpawn5","GLOBAL",1)~ BEGIN ANtonyFiveTalk
  SAY @480 
IF ~~ THEN REPLY @481 DO ~SetGlobal("TonySpawn5","GLOBAL",2) SetGlobal("ANAranLamp","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~Global("TonySpawnAlternate","GLOBAL",2)~ BEGIN ANtonyAlternateLampTalk
  SAY @892
IF ~~ THEN REPLY @481 DO ~SetGlobal("TonySpawnAlternate","GLOBAL",3) SetGlobal("ANAranLamp","GLOBAL",1) EscapeArea()~ EXIT
END






IF ~Global("ANAranLampTony","GLOBAL",1)~ BEGIN ANtonyLampTalk
  SAY @540 
IF ~~ THEN DO ~AddJournalEntry(@1060,QUEST) SetGlobal("ANAranLampTony","GLOBAL",2) SetGlobal("ANAranLamp","GLOBAL",5) EscapeArea()~ EXTERN PLAYER1 ANtonyLampTalk1
END

IF ~Global("TonySpawnMALE","GLOBAL",1)~ BEGIN ANtonyMALETalk1
  SAY @480 
IF ~~ THEN REPLY @481 DO ~SetGlobal("TonySpawnMALE","GLOBAL",2) SetGlobal("ANAranLamp","GLOBAL",1) EscapeArea()~ EXIT
END



CHAIN
IF ~Global("AranLovePrologue","GLOBAL",4)~ THEN PLAYER1 ANtonyPrologueTalk1
@428 DO ~SetGlobal("AranLovePrologue","GLOBAL",5)~
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @4
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @4
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) StateCheck("Jaheira",CD_STATE_NOTVALID) StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @4
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) OR(3) !StateCheck("Jaheira",CD_STATE_NOTVALID) !StateCheck("Nalia",CD_STATE_NOTVALID) !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @5
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @7
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) StateCheck("Anomen",CD_STATE_NOTVALID) StateCheck("Jaheira",CD_STATE_NOTVALID) StateCheck("Nalia",CD_STATE_NOTVALID) StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @7
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) StateCheck("Anomen",CD_STATE_NOTVALID) StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @7
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @6
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(2) !InParty("Cernd") StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @6
== IF_FILE_EXISTS RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) OR(2) !InParty("Cernd") StateCheck("Cernd",CD_STATE_NOTVALID) OR(2) !InParty("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @6
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @857
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @857
EXIT

CHAIN
IF ~Global("AranLove","GLOBAL",3)~ THEN PLAYER1 ANtonyFirstTalk1
@1 DO ~SetGlobal("AranLove","GLOBAL",4)~
= @2
= @3
= @8 DO ~AddJournalEntry(@1040,QUEST)~
EXIT


CHAIN
IF ~Global("AranLove","GLOBAL",14)~ THEN PLAYER1 ANtonySecondTalk1
@1 DO ~SetGlobal("AranLove","GLOBAL",15)~
= @74
EXIT


// Аран 
APPEND ARAN

IF WEIGHT #-40 ~Global("ANAranTethyr","GLOBAL",24)~ BEGIN ANAranTethyrTalkLater
  SAY @579 
IF ~~ THEN DO ~SetGlobal("ANAranTethyr","GLOBAL",25)~ EXIT
END


IF WEIGHT #-16 ~Global("AranLovePrologue","GLOBAL",6)~ BEGIN ANAranPrologueTalk1
  SAY @429 
=@430  
IF ~~ THEN DO ~SetGlobal("AranLovePrologue","GLOBAL",7)~ REPLY @431 GOTO ANAranPrologueTalk2
END

IF ~~ BEGIN ANAranPrologueTalk2
  SAY @432
IF ~~ THEN REPLY @433 GOTO ANAranPrologueTalk3
IF ~~ THEN REPLY @434 GOTO ANAranPrologueTalk3
IF ~~ THEN REPLY @435 GOTO ANAranPrologueTalk3
IF ~~ THEN REPLY @436 GOTO ANAranPrologueTalk3
IF ~~ THEN REPLY @437 GOTO ANAranPrologueTalk3
END

IF ~~ BEGIN ANAranPrologueTalk3
  SAY @438
IF ~~ THEN REPLY @439 GOTO ANAranPrologueTalk4_1
IF ~~ THEN REPLY @440 GOTO ANAranPrologueTalk4_2
IF ~~ THEN REPLY @441 GOTO ANAranPrologueTalk4_3
END

IF ~~ BEGIN ANAranPrologueTalk4_1
  SAY @442
IF ~Class(Player1,THIEF_ALL)~ THEN GOTO ANAranPrologueTalk5_1  
IF ~Class(Player1,THIEF) Global("PlayerThiefGuild","GLOBAL",0)~ THEN GOTO ANAranPrologueTalk5_2  
IF ~Class(Player1,THIEF) Global("PlayerThiefGuild","GLOBAL",1)~ THEN GOTO ANAranPrologueTalk5_3
END

IF ~~ BEGIN ANAranPrologueTalk4_2
  SAY @443
IF ~Class(Player1,THIEF_ALL)~ THEN GOTO ANAranPrologueTalk5_1  
IF ~Class(Player1,THIEF) Global("PlayerThiefGuild","GLOBAL",0)~ THEN GOTO ANAranPrologueTalk5_2  
IF ~Class(Player1,THIEF) Global("PlayerThiefGuild","GLOBAL",1)~ THEN GOTO ANAranPrologueTalk5_3
END

IF ~~ BEGIN ANAranPrologueTalk4_3
  SAY @444
IF ~Class(Player1,THIEF_ALL)~ THEN GOTO ANAranPrologueTalk5_1  
IF ~Class(Player1,THIEF) Global("PlayerThiefGuild","GLOBAL",0)~ THEN GOTO ANAranPrologueTalk5_2  
IF ~Class(Player1,THIEF) Global("PlayerThiefGuild","GLOBAL",1)~ THEN GOTO ANAranPrologueTalk5_3
END

IF ~~ BEGIN ANAranPrologueTalk5_1
  SAY @445
IF ~~ THEN REPLY @448 GOTO ANAranPrologueTalk6_1
IF ~~ THEN REPLY @449 GOTO ANAranPrologueTalk6_2 
END

IF ~~ BEGIN ANAranPrologueTalk5_2
  SAY @446
IF ~~ THEN REPLY @448 GOTO ANAranPrologueTalk6_1
IF ~~ THEN REPLY @449 GOTO ANAranPrologueTalk6_2 
END

IF ~~ BEGIN ANAranPrologueTalk5_3
  SAY @447
IF ~~ THEN REPLY @453 GOTO ANAranPrologueTalk6_3
IF ~~ THEN REPLY @455 GOTO ANAranPrologueTalk6_4 
END

IF ~~ BEGIN ANAranPrologueTalk6_1
  SAY @450
IF ~~ THEN DO ~SetGlobal("AranLovePrologue","GLOBAL",8)~ GOTO ANAranPrologueTalk7
END

IF ~~ BEGIN ANAranPrologueTalk6_2
  SAY @451
IF ~~ THEN GOTO ANAranPrologueTalkEnd
END

IF ~~ BEGIN ANAranPrologueTalkEnd
  SAY @452
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranPrologueTalk6_3
  SAY @454
IF ~~ THEN DO ~SetGlobal("AranLovePrologue","GLOBAL",8)~ GOTO ANAranPrologueTalk7
END

IF ~~ BEGIN ANAranPrologueTalk6_4
  SAY @456
IF ~~ THEN GOTO ANAranPrologueTalkEnd
END

IF ~~ BEGIN ANAranPrologueTalk7
  SAY @457
=@458  
IF ~Class(Player1,THIEF_ALL)~ THEN GOTO ANAranPrologueTalk7_1
IF ~Class(Player1,THIEF)~ THEN GOTO ANAranPrologueTalk7_2
END

IF ~~ BEGIN ANAranPrologueTalk7_1
  SAY @460
IF ~~ THEN REPLY @461 GOTO ANAranPrologueTalk8_1
IF ~~ THEN REPLY @462 GOTO ANAranPrologueTalk8_2 
IF ~~ THEN REPLY @463 GOTO ANAranPrologueTalk8_2 
END

IF ~~ BEGIN ANAranPrologueTalk7_2
  SAY @459
IF ~~ THEN REPLY @461 GOTO ANAranPrologueTalk8_1
IF ~~ THEN REPLY @462 GOTO ANAranPrologueTalk8_2 
IF ~~ THEN REPLY @463 GOTO ANAranPrologueTalk8_2 
END

IF ~~ BEGIN ANAranPrologueTalk8_1
  SAY @464
IF ~~ THEN REPLY @467 GOTO ANAranPrologueTalk9_1
IF ~~ THEN REPLY @468 GOTO ANAranPrologueTalk9_2 
IF ~~ THEN REPLY @469 GOTO ANAranPrologueTalk9_3 
END

IF ~~ BEGIN ANAranPrologueTalk8_2
  SAY @465
IF ~~ THEN REPLY @467 GOTO ANAranPrologueTalk9_1
IF ~~ THEN REPLY @468 GOTO ANAranPrologueTalk9_2 
IF ~~ THEN REPLY @469 GOTO ANAranPrologueTalk9_3 
END

IF ~~ BEGIN ANAranPrologueTalk8_3
  SAY @466
IF ~~ THEN REPLY @467 GOTO ANAranPrologueTalk9_1
IF ~~ THEN REPLY @468 GOTO ANAranPrologueTalk9_2 
IF ~~ THEN REPLY @469 GOTO ANAranPrologueTalk9_3 
END

IF ~~ BEGIN ANAranPrologueTalk9_1
  SAY @470
IF ~~ THEN REPLY @473 GOTO ANAranPrologueTalk10
END

IF ~~ BEGIN ANAranPrologueTalk9_2
  SAY @471
IF ~~ THEN REPLY @473 GOTO ANAranPrologueTalk10
END

IF ~~ BEGIN ANAranPrologueTalk9_3
  SAY @472
IF ~~ THEN REPLY @473 GOTO ANAranPrologueTalk10
END

IF ~~ BEGIN ANAranPrologueTalk10
  SAY @474
=@475  
=@476  
IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~Global("AranLove","GLOBAL",6)~ BEGIN ANAranTalk1
  SAY @9 
IF ~~ THEN DO ~SetGlobal("AranLove","GLOBAL",7)~ REPLY @10 GOTO ANAranTalk1_1
IF ~~ THEN DO ~SetGlobal("AranLove","GLOBAL",7)~ REPLY @11 GOTO ANAranTalk1_2
END

IF ~~ BEGIN ANAranTalk1_1
  SAY @12 
IF ~~ THEN GOTO ANAranTalk2
END

IF ~~ BEGIN ANAranTalk1_2
  SAY @13 
IF ~~ THEN GOTO ANAranTalk2
END

IF ~~ BEGIN ANAranTalk3_1
  SAY @29
IF ~~ THEN GOTO ANAranTalk4
END

IF ~~ BEGIN ANAranTalk3_2
  SAY @30
IF ~~ THEN GOTO ANAranTalk4
END

IF ~~ BEGIN ANAranTalk4_1
  SAY @49
IF ~~ THEN REPLY @50 GOTO ANAranTalk4_1_1
IF ~~ THEN REPLY @51 GOTO ANAranTalk4_1_2
END

IF ~~ BEGIN ANAranTalk4_1_1
  SAY @52
IF ~~ THEN DO ~SetGlobal("ANAranSex","GLOBAL",1)~ EXIT
END

IF ~~ BEGIN ANAranTalk4_1_2
  SAY @53
IF ~~ THEN DO ~SetGlobal("AranLove","GLOBAL",12) SetGlobal("AranLoveNoSleep","GLOBAL",1) SetGlobalTimer("ANAranLetter2Timer","GLOBAL",THREE_DAYS)~ EXIT
END

IF ~~ BEGIN ANAranTalk4_2
  SAY @55
IF ~~ THEN REPLY @56 DO ~SetGlobal("ANAranSex","GLOBAL",1)~ EXIT
IF ~~ THEN REPLY @57 GOTO ANAranTalk4_2_1
END

IF ~~ BEGIN ANAranTalk4_2_1
  SAY @53
IF ~~ THEN DO ~SetGlobal("AranLove","GLOBAL",12) SetGlobalTimer("ANAranLetter2Timer","GLOBAL",THREE_DAYS)~ EXIT
END

IF ~~ BEGIN ANAranTalk4_3
  SAY @59
IF ~~ THEN DO ~SetGlobal("ANAranSex","GLOBAL",1)~ EXIT
END

IF ~~ BEGIN ANAranTalk4_4
  SAY @62
IF ~~ THEN DO ~SetGlobal("AranLove","GLOBAL",12) SetGlobal("AranLoveNoSleep","GLOBAL",1) SetGlobalTimer("ANAranLetter2Timer","GLOBAL",THREE_DAYS)~ EXIT
END

IF WEIGHT #-3 ~Global("ANAranSex","GLOBAL",1)~ BEGIN ANAranSex1
  SAY @63 
=@64
=@65  
IF ~~ THEN DO ~SetGlobal("AranLove","GLOBAL",12) SetGlobal("ANAranSex","GLOBAL",2) SetGlobalTimer("ANAranLetter2Timer","GLOBAL",THREE_DAYS)~ EXIT
END


IF WEIGHT #-2 ~Global("AranLove","GLOBAL",15)~ BEGIN ANAranTalk5
  SAY @75 
IF ~Global("AranLoveNoSleep","GLOBAL",0)~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("AranLove","GLOBAL",16)~ REPLY @76 GOTO ANAranTalk5_1
IF ~Global("AranLoveNoSleep","GLOBAL",0)~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("AranLove","GLOBAL",16)~ REPLY @77 GOTO ANAranTalk5_2
IF ~Global("AranLoveNoSleep","GLOBAL",0)~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("AranLove","GLOBAL",16) SetGlobal("AranLoveCold","AR0307",1)~ REPLY @78 GOTO ANAranTalk5_3
IF ~Global("AranLoveNoSleep","GLOBAL",1)~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("AranLove","GLOBAL",16) SetGlobal("AranLoveCold","AR0307",1)~ GOTO ANAranTalk5_4
END

IF ~~ BEGIN ANAranTalk5_1
  SAY @79
IF ~~ THEN GOTO ANAranTalk6
END

IF ~~ BEGIN ANAranTalk5_2
  SAY @80
IF ~~ THEN GOTO ANAranTalk6
END

IF ~~ BEGIN ANAranTalk5_3
  SAY @81
IF ~~ THEN GOTO ANAranTalk6
END

IF ~~ BEGIN ANAranTalk5_4
  SAY @724
IF ~~ THEN DO ~SetGlobal("AranLoveNoSleep","GLOBAL",2)~ REPLY @725 GOTO ANAranTalk5_4_1
IF ~~ THEN REPLY @726 GOTO ANAranTalk6
END

IF ~~ BEGIN ANAranTalk5_4_1
  SAY @727
IF ~~ THEN GOTO ANAranTalk6
END


IF ~~ BEGIN ANAranTalk6
  SAY @82
=@83
=@84
IF ~~ THEN DO ~SetGlobal("AranLove","GLOBAL",16)~ REPLY @85 GOTO ANAranTalk6_1
IF ~~ THEN DO ~SetGlobal("AranLove","GLOBAL",16)~ REPLY @86 GOTO ANAranTalk6_2
IF ~Global("AranLoveCold","AR0307",0)~ THEN DO ~SetGlobal("AranLove","GLOBAL",16) SetGlobal("AranLoveCold","AR0307",1)~ REPLY @87 GOTO ANAranTalk6_3
IF ~Global("AranLoveCold","AR0307",1)~ THEN DO ~SetGlobal("AranLove","GLOBAL",16) SetGlobal("AranLoveCold","AR0307",2)~ REPLY @87 GOTO ANAranTalk6_3
END

IF ~~ BEGIN ANAranTalk6_1
  SAY @88
IF ~~ THEN EXTERN PLAYER1 ANAranTalk7.1
END

IF ~~ BEGIN ANAranTalk6_2
  SAY @89
IF ~~ THEN EXTERN PLAYER1 ANAranTalk7.1
END

IF ~~ BEGIN ANAranTalk6_3
  SAY @90
IF ~!Global("AranLoveNoSleep","GLOBAL",2) !Global("AranLoveCold","AR0307",2)~ THEN EXTERN PLAYER1 ANAranTalk7.1
IF ~!Global("AranLoveNoSleep","GLOBAL",2) Global("AranLoveCold","AR0307",2)~ THEN EXTERN PLAYER1 ANAranTalk7.2
IF ~Global("AranLoveNoSleep","GLOBAL",2)~ THEN EXTERN PLAYER1 ANAranTalk7.3
END

IF WEIGHT #-6 ~Global("AranLove","GLOBAL",21)~ BEGIN ANAranTalk9
  SAY @116
IF ~~ THEN DO ~SetGlobal("AranLove","GLOBAL",22)~ REPLY @117 GOTO ANAranTalk9_1
IF ~~ THEN DO ~SetGlobal("AranLove","GLOBAL",22)~ REPLY @118 GOTO ANAranTalk9_2
IF ~~ THEN DO ~SetGlobal("AranLove","GLOBAL",999)~ REPLY @121 GOTO ANAranTalk9_3
END

IF ~~ BEGIN ANAranTalk9_1
  SAY @119
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranTalk9_2
  SAY @120
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranTalk9_3
  SAY @122
IF ~~ THEN EXIT
END

IF WEIGHT #-5 ~Global("AranLove","GLOBAL",19)~ BEGIN ANAranTalkFailed
  SAY @123
IF ~~ THEN DO ~AddJournalEntry(@1047,QUEST_DONE) SetGlobal("AranLove","GLOBAL",999)~ EXIT
END

IF WEIGHT #-7 ~Global("AranLove","GLOBAL",27)~ BEGIN ANAranTalkLeena
  SAY @161
IF ~Global("ANleenaOut","GLOBAL",1)~ THEN DO ~SetGlobal("AranLove","GLOBAL",28)~ GOTO ANAranTalkLeenaOut
IF ~Global("ANleenaDead","GLOBAL",1)~ THEN DO ~SetGlobal("AranLove","GLOBAL",28)~ GOTO ANAranTalkLeenaDead
IF ~Global("ANleenaGuild","GLOBAL",3)~ THEN DO ~SetGlobal("AranLove","GLOBAL",28)~ GOTO ANAranTalkLeenaGuild
END

IF ~~ BEGIN ANAranTalkLeenaOut
  SAY @162
IF ~~ THEN REPLY @163 GOTO ANAranTalkLeenaOut1
IF ~~ THEN REPLY @167 GOTO ANAranTalkLeenaOut2
IF ~~ THEN REPLY @170 EXTERN PLAYER1 ANAranTalkLeenaOut3
END

IF ~~ BEGIN ANAranTalkLeenaOut1
  SAY @164
IF ~~ THEN REPLY @729 GOTO ANAranTalkLeenaQuestion
END

IF ~~ BEGIN ANAranTalkLeenaOut2
  SAY @168
=@169  
IF ~~ THEN REPLY @729 GOTO ANAranTalkLeenaQuestion
END

IF ~~ BEGIN ANAranTalkLeenaQuestion
  SAY @730
IF ~~ THEN GOTO ANAranTalkLeenaOutEnd
END


IF ~~ BEGIN ANAranTalkLeenaOutEnd
  SAY @165
=@166  
IF ~~ THEN DO ~AddJournalEntry(@1052,QUEST_DONE) SetGlobal("AranLove","GLOBAL",29) SetGlobalTimer("ANAranLetter3Timer","GLOBAL",ONE_DAY) AddexperienceParty(2000)~ EXIT
END

IF ~~ BEGIN ANAranTalkLeenaOut3Finish
  SAY @172
IF ~~ THEN DO ~AddJournalEntry(@1053,QUEST_DONE) AddexperienceParty(2000) SetGlobal("AranLove","GLOBAL",999)~ EXIT
END

IF ~~ BEGIN ANAranTalkLeenaDead
  SAY @181
IF ~~ THEN REPLY @182 DO ~TakePartyItem("ANlet2")~ GOTO ANAranTalkLeenaDead1
IF ~~ THEN REPLY @184 DO ~TakePartyItem("ANlet2")~ GOTO ANAranTalkLeenaDead2
END

IF ~~ BEGIN ANAranTalkLeenaDead1
  SAY @183
IF ~~ THEN REPLY @731 GOTO ANAranTalkLeenaQuestion
END

IF ~~ BEGIN ANAranTalkLeenaDead2
  SAY @185
IF ~~ THEN REPLY @731 GOTO ANAranTalkLeenaQuestion
END

IF ~~ BEGIN ANAranTalkLeenaGuild
  SAY @188
IF ~~ THEN REPLY @173 DO ~SetGlobal("ANleenaGuild","GLOBAL",4)~ GOTO ANAranTalkLeenaGuild1
IF ~~ THEN REPLY @177 DO ~SetGlobal("ANleenaGuild","GLOBAL",4)~ GOTO ANAranTalkLeenaGuild2
IF ~~ THEN REPLY @722 DO ~SetGlobal("ANleenaGuild","GLOBAL",4)~ GOTO ANAranTalkLeenaGuild3
END

IF ~~ BEGIN ANAranTalkLeenaGuild1
  SAY @174
IF ~~ THEN REPLY @175 GOTO ANAranTalkLeenaGuild1_1
END

IF ~~ BEGIN ANAranTalkLeenaGuild1_1
  SAY @176
IF ~~ THEN REPLY @729 GOTO ANAranTalkLeenaQuestion
END

IF ~~ BEGIN ANAranTalkLeenaGuild2
  SAY @178
IF ~~ THEN REPLY @179 GOTO ANAranTalkLeenaGuild2_1
END

IF ~~ BEGIN ANAranTalkLeenaGuild3
  SAY @723
IF ~~ THEN REPLY @729 GOTO ANAranTalkLeenaQuestion
END

IF ~~ BEGIN ANAranTalkLeenaGuild2_1
  SAY @180
IF ~~ THEN REPLY @729 GOTO ANAranTalkLeenaQuestion
END

IF ~~ BEGIN ANAranTalk12
  SAY @195
IF ~~ THEN REPLY @196 DO ~SetGlobal("AranLove","GLOBAL",35)~ GOTO ANAranTalk13
END

IF ~~ BEGIN ANAranTalk13
  SAY @197
IF ~~ THEN REPLY @198 GOTO ANAranTalk13_1
IF ~~ THEN REPLY @200 GOTO ANAranTalk13_2
IF ~~ THEN REPLY @202 GOTO ANAranTalk13_3
END

IF ~~ BEGIN ANAranTalk13_1
  SAY @199
IF ~~ THEN REPLY @204 EXTERN ARAN ANAranTalk13_1_1
END

IF ~~ BEGIN ANAranTalk13_2
  SAY @201
IF ~~ THEN REPLY @204 EXTERN ARAN ANAranTalk13_1_1
END

IF ~~ BEGIN ANAranTalk13_3
  SAY @203
IF ~~ THEN DO ~SetGlobal("AranLove","GLOBAL",999)~ EXTERN PLAYER1 ANAranTalk13_3End
END


IF ~~ BEGIN ANAranTalk13Yes
  SAY @215
IF ~~ THEN DO ~AddJournalEntry(@1054,INFO) SetGlobal("AranLove","GLOBAL",38) SetGlobal("AranRomanceActive","GLOBAL",2) SetGlobalTimer("ANAranLetter5Timer","GLOBAL",TWO_DAYS)~ EXIT
END

IF ~~ BEGIN ANAranTalk13No
  SAY @216
IF ~~ THEN DO ~SetGlobal("AranLove","GLOBAL",38) SetGlobalTimer("ANAranLetter5Timer","GLOBAL",TWO_DAYS)~ EXIT
END

IF ~~ BEGIN ANAranBodhiHeartTalk_1
  SAY @304
=@305  
IF ~~ THEN EXTERN PLAYER1 ANAranBodhiHeartTalkEnd
END

IF ~~ BEGIN ANAranBodhiHeartTalk_2
  SAY @306
=@307  
IF ~~ THEN EXTERN PLAYER1 ANAranBodhiHeartTalkEnd
END

IF ~~ BEGIN ANAranBodhiHeartTalk_3
  SAY @308
=@305  
IF ~~ THEN EXTERN PLAYER1 ANAranBodhiHeartTalkEnd
END

IF ~~ BEGIN ANAranBodhiHeartTalkEnd1
  SAY @310
IF ~~ THEN DO ~SetGlobal("AranLoveQuiet","AR0307",1)~ EXIT
END

IF ~~ BEGIN AnaranFlirt1
  SAY @376
IF ~True()~ THEN GOTO ANAranQuest1
IF ~RandomNum(5,1) Global("AranQuest2","AR0307",0)~ THEN GOTO ANAranQuest2
IF ~RandomNum(5,2) Global("AranQuest5","AR0307",0)~ THEN GOTO ANAranQuest5
IF ~RandomNum(5,3) Global("AranQuest6","AR0307",0)~ THEN GOTO ANAranQuest6
IF ~RandomNum(5,4) Global("AranQuest7","AR0307",0)~ THEN GOTO ANAranQuest7
IF ~RandomNum(5,5) Global("AranQuest8","AR0307",0)~ THEN GOTO ANAranQuest8
IF ~Global("AranQuest3","AR0307",0) Kit(Player1,ASSASIN)~ THEN GOTO ANAranQuest3
IF ~Global("AranQuest4","AR0307",0) Kit(Player1,BOUNTYHUNTER)~ THEN GOTO ANAranQuest4
END

IF ~~ BEGIN AnaranFlirt2_1
  SAY @321
IF ~~ THEN EXIT
END

IF ~~ BEGIN AnaranFlirt3_1
  SAY @323
IF ~~ THEN EXIT
END

IF ~~ BEGIN AnaranFlirt4_1
  SAY @325
IF ~~ THEN EXIT
END

IF ~~ BEGIN AnaranFlirt6_Low
  SAY @327
=@328
IF ~~ THEN EXIT
END

IF ~~ BEGIN AnaranFlirt6_Medium
  SAY @329
=@330
IF ~~ THEN EXIT
END

IF ~~ BEGIN AnaranFlirt6_High_1
  SAY @332
IF ~~ THEN EXIT
END

IF ~~ BEGIN AnaranFlirt7_1
  SAY @364
IF ~~ THEN EXIT
END

IF ~~ BEGIN AnaranFlirt8_1
  SAY @369
=@370
IF ~~ THEN EXIT
END

IF ~~ BEGIN AnaranFlirt9
  SAY @372
=@373  
IF ~~ THEN EXIT
END

IF ~~ BEGIN AnaranFlirt10
  SAY @375
IF ~~ THEN EXIT
END

IF ~~ BEGIN AnaranFlirt11
  SAY @365
=@366
IF ~~ THEN EXIT
END

IF ~~ BEGIN AnaranFlirtBye
  SAY @377
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranQuest1
  SAY @333
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranQuest2
  SAY @334
IF ~~ THEN EXTERN PLAYER1 ANAranQuest2_1
END

IF ~~ BEGIN ANAranQuest2_2
  SAY @336
IF ~~ THEN DO ~SetGlobal("AranQuest2","AR0307",1) AddexperienceParty(300)~ EXIT
END

IF ~~ BEGIN ANAranQuest3
  SAY @337
IF ~~ THEN EXTERN PLAYER1 ANAranQuest3_1
END

IF ~~ BEGIN ANAranQuest3_2
  SAY @339
IF ~~ THEN DO ~SetGlobal("AranQuest3","AR0307",1) AddexperienceParty(300)~ EXIT
END

IF ~~ BEGIN ANAranQuest4
  SAY @340
IF ~~ THEN EXTERN PLAYER1 ANAranQuest4_1
END

IF ~~ BEGIN ANAranQuest4_2
  SAY @342
IF ~~ THEN DO ~SetGlobal("AranQuest4","AR0307",1) AddexperienceParty(300)~ EXIT
END

IF ~~ BEGIN ANAranQuest5
  SAY @343
IF ~~ THEN EXTERN PLAYER1 ANAranQuest5_1
END

IF ~~ BEGIN ANAranQuest5_2
  SAY @345
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranQuest6
  SAY @346
IF ~~ THEN DO ~SetGlobal("AranQuest3","AR0307",1)~ EXTERN PLAYER1 ANAranQuest6_1
END

IF ~~ BEGIN ANAranQuest7
  SAY @348
IF ~~ THEN DO ~SetGlobal("AranQuest7","AR0307",1)~ EXIT
END

IF ~~ BEGIN ANAranQuest8
  SAY @349
IF ~~ THEN EXTERN PLAYER1 ANAranQuest8_1
IF ~CheckStatGT(Player1,12,DEX)~ THEN EXTERN PLAYER1 ANAranQuest8_2
IF ~CheckStatGT(Player1,12,WIS)~ THEN EXTERN PLAYER1 ANAranQuest8_3
IF ~CheckStatGT(Player1,12,CHR)~ THEN EXTERN PLAYER1 ANAranQuest8_4
IF ~CheckStatGT(Player1,14,INT)~ THEN EXTERN PLAYER1 ANAranQuest8_5
END

IF ~~ BEGIN ANAranQuest8_1_1
  SAY @361
IF ~~ THEN DO ~SetGlobal("AranQuest8","AR0307",1)~ EXIT
END

IF ~~ BEGIN ANAranQuest8_2_1
  SAY @359
IF ~~ THEN DO ~SetGlobal("AranQuest8","AR0307",1) AddexperienceParty(300)~ EXIT
END

IF ~~ BEGIN ANAranQuest8_3_1
  SAY @356
IF ~~ THEN DO ~SetGlobal("AranQuest8","AR0307",1) AddexperienceParty(300)~ EXIT
END

IF ~~ BEGIN ANAranQuest8_4_1
  SAY @354
IF ~~ THEN DO ~SetGlobal("AranQuest8","AR0307",1) AddexperienceParty(300)~ EXIT
END

IF ~~ BEGIN ANAranQuest8_5_1
  SAY @352
IF ~~ THEN DO ~SetGlobal("AranQuest8","AR0307",1) AddexperienceParty(300)~ EXIT
END


IF ~~ BEGIN AnaranFlirtRomanceEnd1_1
  SAY @757
  =@758
IF ~~ THEN DO ~SetGlobal("AranRomanceActive","GLOBAL",3) SetGlobal("AranLove","GLOBAL",999)~ EXIT
END

IF ~~ BEGIN AnaranFlirtRomanceEnd2_1
  SAY @755
IF ~~ THEN DO ~SetGlobal("AranRomanceActive","GLOBAL",3) SetGlobal("AranLove","GLOBAL",999)~ EXIT
END


END


CHAIN
IF WEIGHT #-17 ~Global("ANAranLamp","GLOBAL",1)~ THEN ARAN ANAranLamp
@482 DO ~SetGlobal("ANAranLamp","GLOBAL",2)~
== ARAN IF ~Global("TonySpawnAlternate","GLOBAL",0)~ THEN @483
== ARAN IF ~!Global("TonySpawnAlternate","GLOBAL",0)~ THEN @893
== ARAN @484
== PLAYER1 @485
== ARAN @486
== PLAYER1 @487
== ARAN @488
== PLAYER1 @489 DO ~AddJournalEntry(@1056,QUEST)~
== ARAN IF ~Global("TonySpawnAlternate","GLOBAL",0)~ THEN @490
== ARAN IF ~!Global("TonySpawnAlternate","GLOBAL",0)~ THEN @894
EXIT


APPEND PLAYER1

IF ~~ BEGIN ANAranTalk7.2
  SAY @91
IF ~~ THEN DO ~AddJournalEntry(@1046,QUEST) SetGlobal("AranLove","GLOBAL",999)~ EXIT
END

IF ~Global("AranLove","GLOBAL",22) AreaCheck("AR0300")~ BEGIN ANPlayer1DocksTalk
  SAY @126 
IF ~CheckStatGT(Myself,60,DETECTILLUSIONS)~ THEN DO ~SetGlobal("AranLove","GLOBAL",25) AddJournalEntry(@1048,QUEST)~ GOTO ANPlayer1DocksTalk1
IF ~CheckStatLT(Myself,60,DETECTILLUSIONS)~ THEN DO ~SetGlobal("AranLove","GLOBAL",23)~ EXIT 
END

IF ~~ BEGIN ANPlayer1DocksTalk1
  SAY @127 
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANleena1Talk1_3
  SAY @155
IF ~~ THEN DO ~ChangeEnemyAlly("ANleena",ENEMY) Kill(Player1)~ EXIT
END

IF ~~ BEGIN ANAranTalkLeenaOut3
  SAY @171
IF ~~ THEN EXTERN ARAN ANAranTalkLeenaOut3Finish
END

IF ~~ BEGIN ANAranTalk10_1
  SAY @218
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranTalk10_2
  SAY @217
IF ~~ THEN DO ~SetGlobal("AranLove","GLOBAL",999)~ EXIT
END

IF ~Global("AranLove","GLOBAL",34) ~ BEGIN ANAranTalk11
  SAY @194
IF ~~ THEN EXTERN ARAN ANAranTalk12
END

IF ~~ BEGIN ANAranTalk13_3End
  SAY @219
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranAnomenTalk2_1
  SAY @241
IF ~~ THEN EXTERN ANOMENJ ANAranAnomenTalk2_1_1
END

IF ~~ BEGIN ANAranAnomenTalk2_2
  SAY @244
IF ~Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN EXTERN ANOMENJ ANAranAnomenTalk2_2_CN
IF ~!Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN EXTERN ANOMENJ ANAranAnomenTalk2_2_LG
END

IF ~~ BEGIN ANAranRasaadTalk2_1
  SAY @261
IF ~~ THEN EXTERN IF_FILE_EXISTS RASAADJ ANAranRasaadTalk2_1_1
END

IF ~~ BEGIN ANAranRasaadTalk2_2
  SAY @264
IF ~~ THEN EXTERN IF_FILE_EXISTS RASAADJ ANAranRasaadTalk2_2_1
END

IF ~Global("ANAranBodhiHeart","GLOBAL",1) PartyHasItem("MISCBP")~ BEGIN ANBodhiHeart
  SAY @286
 =@287 
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranBodhiHeartTalkEnd
  SAY @309
IF ~~ THEN EXTERN ARAN ANAranBodhiHeartTalkEnd1
END


IF ~~ BEGIN AnaranFlirt2
  SAY @320
IF ~~ THEN EXTERN ARAN AnaranFlirt2_1
END

IF ~~ BEGIN AnaranFlirt3
  SAY @322
IF ~~ THEN EXTERN ARAN AnaranFlirt3_1
END

IF ~~ BEGIN AnaranFlirt4
  SAY @324
IF ~~ THEN EXTERN ARAN AnaranFlirt4_1
END

IF ~~ BEGIN AnaranFlirt5
  SAY @326
IF ~~ THEN EXIT
END

IF ~~ BEGIN AnaranFlirt6_High
  SAY @331
IF ~~ THEN DO ~SetGlobal("AranFlirt6","AR0307",1)~ EXTERN ARAN AnaranFlirt6_High_1
END

IF ~~ BEGIN AnaranFlirt7
  SAY @363
IF ~~ THEN EXTERN ARAN AnaranFlirt7_1
END

IF ~~ BEGIN AnaranFlirt8
  SAY @368
IF ~~ THEN EXTERN ARAN AnaranFlirt8_1
END

IF ~~ BEGIN ANAranQuest2_1
  SAY @335
IF ~~ THEN EXTERN ARAN ANAranQuest2_2
END

IF ~~ BEGIN ANAranQuest3_1
  SAY @338
IF ~~ THEN EXTERN ARAN ANAranQuest3_2
END

IF ~~ BEGIN ANAranQuest4_1
  SAY @341
IF ~~ THEN EXTERN ARAN ANAranQuest4_2
END

IF ~~ BEGIN ANAranQuest5_1
  SAY @344
IF ~~ THEN EXTERN ARAN ANAranQuest5_2
END

IF ~~ BEGIN ANAranQuest6_1
  SAY @347
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranQuest8_1
  SAY @360
IF ~~ THEN EXTERN ARAN ANAranQuest8_1_1
END

IF ~~ BEGIN ANAranQuest8_2
  SAY @357
=@358  
IF ~~ THEN EXTERN ARAN ANAranQuest8_2_1
END

IF ~~ BEGIN ANAranQuest8_3
  SAY @355
=@351  
IF ~~ THEN EXTERN ARAN ANAranQuest8_3_1
END

IF ~~ BEGIN ANAranQuest8_4
  SAY @353
IF ~~ THEN EXTERN ARAN ANAranQuest8_4_1
END

IF ~~ BEGIN ANAranQuest8_5
  SAY @350
=@351    
IF ~~ THEN EXTERN ARAN ANAranQuest8_5_1
END


IF ~~ BEGIN AnaranFlirtRomanceEnd1
  SAY @756
IF ~~ THEN EXTERN ARAN AnaranFlirtRomanceEnd1_1
END

IF ~~ BEGIN AnaranFlirtRomanceEnd2
  SAY @754
IF ~~ THEN EXTERN ARAN AnaranFlirtRomanceEnd2_1
END

IF ~Global("TonySpawn4","GLOBAL",3)~ BEGIN ANPlayer1GuildFailedTalk
  SAY @1 
=@381
IF ~~ THEN DO ~SetGlobal("TonySpawn4","GLOBAL",4)~ EXIT
END

IF ~Global("ANAranLamp","GLOBAL",3)~ BEGIN AranLampPlayer1
  SAY @491
IF ~~ THEN DO ~SetGlobal("ANAranLamp","GLOBAL",4) SetGlobal("ANAranLampRenal","GLOBAL",1)~ REPLY @492 GOTO AranLampPlayer1_Renal
IF ~Global("PlayerThiefGuild","GLOBAL",1)~ THEN DO ~SetGlobal("ANAranLamp","GLOBAL",4) SetGlobal("ANAranLampLatan","GLOBAL",1)~ REPLY @493 GOTO AranLampPlayer1_LatanGuild
IF ~Global("PGFailed","GLOBAL",1)~ THEN DO ~SetGlobal("ANAranLamp","GLOBAL",4) SetGlobal("ANAranLampLatan","GLOBAL",1)~ REPLY @493 GOTO AranLampPlayer1_LatanNoGuild
END

IF ~Global("ANAranLampRenal","GLOBAL",7) !AreaCheck("AR0404")~ BEGIN AranLampPlayer1_AfterRenal
  SAY @529
IF ~Global("PlayerThiefGuild","GLOBAL",1) Global("ANAranLampLatan","GLOBAL",0)~ THEN DO ~SetGlobal("ANAranLampRenal","GLOBAL",8) SetGlobal("ANAranLampLatan","GLOBAL",1)~ REPLY @493 GOTO AranLampPlayer1_LatanGuild
IF ~Global("PGFailed","GLOBAL",1) Global("ANAranLampLatan","GLOBAL",0)~ THEN DO ~SetGlobal("ANAranLampRenal","GLOBAL",8) SetGlobal("ANAranLampLatan","GLOBAL",1)~ REPLY @493 GOTO AranLampPlayer1_LatanNoGuild
IF ~Global("ANAranLampLatan","GLOBAL",4)~ THEN DO ~SetGlobal("ANAranLampRenal","GLOBAL",8)~ REPLY @542 GOTO AranLampPlayer1_Finish
END

IF ~Global("ANAranLampLatan","GLOBAL",3) !AreaCheck("AR0404")~ BEGIN AranLampPlayer1_AfterLatan
  SAY @529
IF ~Global("ANAranLampRenal","GLOBAL",0)~ THEN DO ~SetGlobal("ANAranLampLatan","GLOBAL",4) SetGlobal("ANAranLampRenal","GLOBAL",1)~ REPLY @492 GOTO AranLampPlayer1_Renal
IF ~Global("ANAranLampRenal","GLOBAL",8)~ THEN DO ~SetGlobal("ANAranLampLatan","GLOBAL",4)~ REPLY @542 GOTO AranLampPlayer1_Finish
IF ~Global("ANAranLampRenal","GLOBAL",2)~ THEN DO ~SetGlobal("ANAranLampLatan","GLOBAL",4) SetGlobal("ANAranLampNORenal","GLOBAL",1)~ REPLY @542 GOTO AranLampPlayer1_Finish1
END

IF ~Global("ANAranLampLatan","GLOBAL",4) Global("ANAranLampRenal","GLOBAL",2) !AreaCheck("AR0404")~ BEGIN AranLampPlayer1_AfterLatanRenal
  SAY @529
IF ~~ THEN DO ~SetGlobal("ANAranLampLatan","GLOBAL",5)~ REPLY @542 GOTO AranLampPlayer1_Finish1
END

IF ~Global("ANAranLampRenal","GLOBAL",2) Global("ANAranLampLatan","GLOBAL",0) !AreaCheck("AR0404")~ BEGIN AranLampPlayer1_AfterRenalSkip
  SAY @529
IF ~Global("PlayerThiefGuild","GLOBAL",1)~ THEN DO ~SetGlobal("ANAranLampLatan","GLOBAL",1)~ REPLY @493 GOTO AranLampPlayer1_LatanGuild
IF ~Global("PGFailed","GLOBAL",1)~ THEN DO ~SetGlobal("ANAranLampLatan","GLOBAL",1)~ REPLY @493 GOTO AranLampPlayer1_LatanNoGuild
END

IF ~~ BEGIN AranLampPlayer1_Renal
 SAY @494 
IF ~~ THEN EXIT
END

IF ~~ BEGIN AranLampPlayer1_LatanGuild
 SAY @495 
IF ~~ THEN EXIT
END

IF ~~ BEGIN AranLampPlayer1_LatanNoGuild
 SAY @496 
IF ~~ THEN EXIT
END

IF ~Global("ANAranLampRenal","GLOBAL",4)~ BEGIN ANAranLampPorinTalk
  SAY @505
=@506  
IF ~~ THEN EXTERN ANPorin ANAranLampPorinTalk1
END

IF ~~ BEGIN AranLampPlayer1_Finish
 SAY @530 
IF ~~ THEN DO ~AddJournalEntry(@1059,QUEST) SetGlobal("ANAranLamp","GLOBAL",5)~ EXIT
END

IF ~~ BEGIN AranLampPlayer1_Finish1
 SAY @539 
IF ~~ THEN DO ~SetGlobal("ANAranLampTony","GLOBAL",1)~ EXIT
END

IF ~~ BEGIN ANtonyLampTalk1
 SAY @541 
IF ~~ THEN EXIT
END


END

CHAIN
IF ~Global("ANAranLampRenal","GLOBAL",5)~ THEN PLAYER1 ANAranLampPorinTalk4
@515 DO ~SetGlobal("ANAranLampRenal","GLOBAL",6)~
= @516
== ANPorin @517 DO ~AddJournalEntry(@1057,QUEST)~
== PLAYER1 @518
== RENAL @519
END
IF ~~ THEN REPLY @520 EXTERN RENAL ANAranLampPorinTalk5_1
IF ~~ THEN REPLY @521 EXTERN ANPorin ANAranLampPorinTalk5_2
IF ~~ THEN REPLY @522 EXTERN ANPorin ANAranLampPorinTalk5_3

CHAIN
IF ~Global("AranLove","GLOBAL",7)~ THEN ARAN ANAranTalk2
@14 DO ~SetGlobal("AranLove","GLOBAL",8)~
= @15
== PLAYER1 @16
== ARAN @17
=@18
== PLAYER1 @19
== ARAN @20
EXIT


CHAIN
IF ~Global("AranLove","GLOBAL",9)~ THEN PLAYER1 ANAranTalk3
@21 DO ~SetGlobal("AranLove","GLOBAL",10)~
= @22
= @23 DO ~AddJournalEntry(@1041,QUEST_DONE) AddexperienceParty(500)~
== ARAN @24
== ARAN IF ~CheckStatGT(Player1,15,CHR)~ THEN @25
== ARAN @26
END
IF ~~ THEN REPLY @27 EXTERN ARAN ANAranTalk3_1
IF ~~ THEN REPLY @28 EXTERN ARAN ANAranTalk3_2

CHAIN
IF ~Global("AranLove","GLOBAL",10)~ THEN ARAN ANAranTalk4
@31 DO ~SetGlobal("AranLove","GLOBAL",11)~
== PLAYER1 @32
== ARAN @33
=@34
== PLAYER1 @35
== ARAN @36
== PLAYER1 @37
== ARAN @38
== PLAYER1 @39
== ARAN @40
=@41
== PLAYER1 @42
== ARAN @43
=@44
=@45
=@46
=@47
END
IF ~~ THEN REPLY @48 EXTERN ARAN ANAranTalk4_1
IF ~CheckStatGT(Player1,80,PICKPOCKET)~ THEN REPLY @54 EXTERN ARAN ANAranTalk4_2
IF ~~ THEN REPLY @58 EXTERN ARAN ANAranTalk4_3
IF ~~ THEN REPLY @60 EXTERN ARAN ANAranTalk4_4

CHAIN
IF ~Global("AranLove","GLOBAL",16) !Global("AranLoveCold","AR0307",2)~ THEN PLAYER1 ANAranTalk7.1
@92 DO ~SetGlobal("AranLove","GLOBAL",17)~
= @93
== ARAN @94 DO ~AddJournalEntry(@1042,QUEST)~
EXIT

CHAIN
IF ~Global("AranLove","GLOBAL",16) Global("AranLoveNoSleep","GLOBAL",2)~ THEN PLAYER1 ANAranTalk7.3
@728 DO ~SetGlobal("AranLove","GLOBAL",17) SetGlobal("AranLoveNoSleep","GLOBAL",3)~
= @93
== ARAN @94 DO ~AddJournalEntry(@1042,QUEST)~
EXIT

CHAIN
IF WEIGHT #-4 ~Global("AranLove","GLOBAL",18) PartyHasItem("ANlet1")~ THEN ARAN ANAranTalk8
@109 DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("AranLove","GLOBAL",20)~
=@125
== PLAYER1 @124
=@110
== ARAN @111 DO ~AddJournalEntry(@1045,QUEST_DONE) TakePartyItem("ANlet1") AddexperienceParty(1000)~
=@112
== PLAYER1 @113
== ARAN @114
== PLAYER1 @115
EXIT

CHAIN
IF ~Global("AranLove","GLOBAL",31)~ THEN PLAYER1 ANAranTalk10
@1 DO ~SetGlobal("AranLove","GLOBAL",32)~
= @190
END
IF ~~ THEN REPLY @191 EXTERN PLAYER1 ANAranTalk10_1
IF ~~ THEN REPLY @192 EXTERN PLAYER1 ANAranTalk10_1
IF ~~ THEN REPLY @193 EXTERN PLAYER1 ANAranTalk10_2

CHAIN
IF ~Global("AranLove","GLOBAL",35)~ THEN ARAN ANAranTalk13_1_1
@205 DO ~SetGlobal("AranLove","GLOBAL",36)~
== PLAYER1 @206
=@207
END
IF ~Global("Chapter","GLOBAL",%bg2_chapter_3%)~ THEN REPLY @208 EXTERN ARAN ANAranTalk13_1_1_1
IF ~Global("Chapter","GLOBAL",%bg2_chapter_3%) !Global("C#IM_ImoenStays","GLOBAL",1)~ THEN REPLY @209 EXTERN ARAN ANAranTalk13_1_1_1
IF ~Global("Chapter","GLOBAL",%bg2_chapter_6%)~ THEN REPLY @210 EXTERN ARAN ANAranTalk13_1_1_1

CHAIN
IF ~Global("AranLove","GLOBAL",36)~ THEN ARAN ANAranTalk13_1_1_1
@211 DO ~SetGlobal("AranLove","GLOBAL",37)~
== PLAYER1 @212
END
IF ~~ THEN REPLY @213 EXTERN ARAN ANAranTalk13Yes
IF ~~ THEN REPLY @214 EXTERN ARAN ANAranTalk13No

CHAIN
IF WEIGHT #-30 ~PartyHasItem("MISCBP") Global("AranRomanceActive","GLOBAL",2) OR(2) Global("ANAranBodhiHeart","GLOBAL",0) Global("ANAranBodhiHeart","GLOBAL",1)~ THEN ARAN ANAranBodhiHeartTalk
@288 DO ~SetGlobal("ANAranBodhiHeart","GLOBAL",2)~
== PLAYER1 @289
=@290
== ARAN @291
=@292
== PLAYER1 IF ~!Race(Player1,ELF)~ THEN @293
== PLAYER1 IF ~Race(Player1,ELF)~ THEN @294
== ARAN @295
=@296
=@297
== PLAYER1 @298
=@299
== ARAN @300
== PLAYER1 @311
END
IF ~~ THEN REPLY @301 EXTERN ARAN ANAranBodhiHeartTalk_1
IF ~~ THEN REPLY @302 EXTERN ARAN ANAranBodhiHeartTalk_2
IF ~~ THEN REPLY @303 EXTERN ARAN ANAranBodhiHeartTalk_3


// Измененное приветствие Арана и флирт

CHAIN IF WEIGHT #-8 ~Global("AranJob","GLOBAL",2) Global("RefusedAran","GLOBAL",0) GlobalGT("AranLove","GLOBAL",37) !Global("AranRomanceActive","GLOBAL",3)~ THEN ARAN ANAranromance21hello
@220
END
IF ~~ THEN REPLY @378 EXTERN ARAN 21
IF ~~ THEN REPLY @313 EXTERN ARAN AnaranFlirt1
IF ~~ THEN REPLY @314 EXTERN PLAYER1 AnaranFlirt2
IF ~~ THEN REPLY @315 EXTERN PLAYER1 AnaranFlirt3
IF ~~ THEN REPLY @316 EXTERN PLAYER1 AnaranFlirt4
IF ~~ THEN REPLY @317 EXTERN PLAYER1 AnaranFlirt5
IF ~CheckStatLT(Player1,60,PICKPOCKET) Global("AranFlirt6","AR0307",0)~ THEN REPLY @318 EXTERN ARAN AnaranFlirt6_Low
IF ~CheckStatGT(Player1,60,PICKPOCKET) CheckStatLT(Player1,100,PICKPOCKET) Global("AranFlirt6","AR0307",0)~ THEN REPLY @318 EXTERN ARAN AnaranFlirt6_Medium
IF ~CheckStatGT(Player1,100,PICKPOCKET) Global("AranFlirt6","AR0307",0)~ THEN REPLY @318 EXTERN PLAYER1 AnaranFlirt6_High
IF ~Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @362 EXTERN PLAYER1 AnaranFlirt7
IF ~Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @367 EXTERN PLAYER1 AnaranFlirt8
IF ~Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @371 EXTERN ARAN AnaranFlirt9
IF ~Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @374 EXTERN ARAN AnaranFlirt10
IF ~Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @580 EXTERN ARAN AnaranFlirt11
IF ~Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @753 EXTERN PLAYER1 AnaranFlirtRomanceEnd1
IF ~!Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @753 EXTERN PLAYER1 AnaranFlirtRomanceEnd2
IF ~~ THEN REPLY @319 EXTERN ARAN AnaranFlirtBye

CHAIN IF WEIGHT #-9 ~Global("AranJob","GLOBAL",3) Global("LassalVampires","GLOBAL",3) Global("spokeTrip","LOCALS",1) GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%) GlobalGT("AranLove","GLOBAL",37) !Global("AranLove","GLOBAL",999) !Global("AranRomanceActive","GLOBAL",3)~ THEN ARAN ANAranromance48hello
@221 DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~
END
IF ~~ THEN REPLY @312 EXTERN ARAN 48
IF ~~ THEN REPLY @313 EXTERN ARAN AnaranFlirt1
IF ~~ THEN REPLY @314 EXTERN PLAYER1 AnaranFlirt2
IF ~~ THEN REPLY @315 EXTERN PLAYER1 AnaranFlirt3
IF ~~ THEN REPLY @316 EXTERN PLAYER1 AnaranFlirt4
IF ~~ THEN REPLY @317 EXTERN PLAYER1 AnaranFlirt5
IF ~CheckStatLT(Player1,60,PICKPOCKET) Global("AranFlirt6","AR0307",0)~ THEN REPLY @318 EXTERN ARAN AnaranFlirt6_Low
IF ~CheckStatGT(Player1,60,PICKPOCKET) CheckStatLT(Player1,100,PICKPOCKET) Global("AranFlirt6","AR0307",0)~ THEN REPLY @318 EXTERN ARAN AnaranFlirt6_Medium
IF ~CheckStatGT(Player1,100,PICKPOCKET) Global("AranFlirt6","AR0307",0)~ THEN REPLY @318 EXTERN PLAYER1 AnaranFlirt6_High
IF ~Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @362 EXTERN PLAYER1 AnaranFlirt7
IF ~Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @367 EXTERN PLAYER1 AnaranFlirt8
IF ~Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @371 EXTERN ARAN AnaranFlirt9
IF ~Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @374 EXTERN ARAN AnaranFlirt10
IF ~Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @580 EXTERN ARAN AnaranFlirt11
IF ~Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @753 EXTERN PLAYER1 AnaranFlirtRomanceEnd1
IF ~!Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @753 EXTERN PLAYER1 AnaranFlirtRomanceEnd2
IF ~~ THEN REPLY @319 EXTERN ARAN AnaranFlirtBye

CHAIN IF WEIGHT #-10 ~Global("AranRomanceActive","GLOBAL",2)  InPartySlot(LastTalkedToBy,0) Global("Chapter","GLOBAL",%bg2_chapter_6%) Global("ShadowFightBodhi","GLOBAL",0) !Dead("c6bodhi")~ THEN ARAN ANAranromance76hello
@281
EXTERN ARAN 76

ADD_STATE_TRIGGER ARAN 76 ~OR(2) GlobalLT("AranLove","GLOBAL",37) Global("AranLove","GLOBAL",999)~

CHAIN
IF WEIGHT #28 ~InPartySlot(LastTalkedToBy,0)
Global("Chapter","GLOBAL",6)
Global("ShadowFightBodhi","GLOBAL",0)
!Dead("c6bodhi") GlobalGT("AranLove","GLOBAL",37) !Global("AranLove","GLOBAL",999) !Global("AranRomanceActive","GLOBAL",3)~ THEN ARAN ANnew76
  @282
END
IF ~~ THEN REPLY @283 EXTERN ARAN 77
IF ~~ THEN REPLY @284 EXTERN ARAN 77
IF ~~ THEN REPLY @285 EXTERN ARAN 83
	
	

CHAIN IF WEIGHT #-11 ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) Dead("c6bodhi") GlobalGT("AranLove","GLOBAL",37) !Global("AranLove","GLOBAL",999) !Global("AranRomanceActive","GLOBAL",3) Global("ANaranBodhiDeadFirstTalk","AR0307",0)~ THEN ARAN ANAranromance108hello1
@379 DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANaranBodhiDeadFirstTalk","AR0307",1)~
END
IF ~~ THEN REPLY @313 EXTERN ARAN AnaranFlirt1
IF ~~ THEN REPLY @314 EXTERN PLAYER1 AnaranFlirt2
IF ~~ THEN REPLY @315 EXTERN PLAYER1 AnaranFlirt3
IF ~~ THEN REPLY @316 EXTERN PLAYER1 AnaranFlirt4
IF ~~ THEN REPLY @317 EXTERN PLAYER1 AnaranFlirt5
IF ~CheckStatLT(Player1,60,PICKPOCKET) Global("AranFlirt6","AR0307",0)~ THEN REPLY @318 EXTERN ARAN AnaranFlirt6_Low
IF ~CheckStatGT(Player1,60,PICKPOCKET) CheckStatLT(Player1,100,PICKPOCKET) Global("AranFlirt6","AR0307",0)~ THEN REPLY @318 EXTERN ARAN AnaranFlirt6_Medium
IF ~CheckStatGT(Player1,100,PICKPOCKET) Global("AranFlirt6","AR0307",0)~ THEN REPLY @318 EXTERN PLAYER1 AnaranFlirt6_High
IF ~Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @362 EXTERN PLAYER1 AnaranFlirt7
IF ~Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @367 EXTERN PLAYER1 AnaranFlirt8
IF ~Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @371 EXTERN ARAN AnaranFlirt9
IF ~Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @374 EXTERN ARAN AnaranFlirt10
IF ~Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @580 EXTERN ARAN AnaranFlirt11
IF ~Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @753 EXTERN PLAYER1 AnaranFlirtRomanceEnd1
IF ~!Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @753 EXTERN PLAYER1 AnaranFlirtRomanceEnd2
IF ~~ THEN REPLY @319 EXTERN ARAN AnaranFlirtBye

CHAIN IF WEIGHT #-12 ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) Dead("c6bodhi") GlobalGT("AranLove","GLOBAL",37) !Global("AranLove","GLOBAL",999) !Global("AranRomanceActive","GLOBAL",3) Global("ANaranBodhiDeadFirstTalk","AR0307",1)~ THEN ARAN ANAranromance108hello2
@221 DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~
END
IF ~~ THEN REPLY @313 EXTERN ARAN AnaranFlirt1
IF ~~ THEN REPLY @314 EXTERN PLAYER1 AnaranFlirt2
IF ~~ THEN REPLY @315 EXTERN PLAYER1 AnaranFlirt3
IF ~~ THEN REPLY @316 EXTERN PLAYER1 AnaranFlirt4
IF ~~ THEN REPLY @317 EXTERN PLAYER1 AnaranFlirt5
IF ~CheckStatLT(Player1,60,PICKPOCKET) Global("AranFlirt6","AR0307",0)~ THEN REPLY @318 EXTERN ARAN AnaranFlirt6_Low
IF ~CheckStatGT(Player1,60,PICKPOCKET) CheckStatLT(Player1,100,PICKPOCKET) Global("AranFlirt6","AR0307",0)~ THEN REPLY @318 EXTERN ARAN AnaranFlirt6_Medium
IF ~CheckStatGT(Player1,100,PICKPOCKET) Global("AranFlirt6","AR0307",0)~ THEN REPLY @318 EXTERN PLAYER1 AnaranFlirt6_High
IF ~Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @362 EXTERN PLAYER1 AnaranFlirt7
IF ~Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @367 EXTERN PLAYER1 AnaranFlirt8
IF ~Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @371 EXTERN ARAN AnaranFlirt9
IF ~Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @374 EXTERN ARAN AnaranFlirt10
IF ~Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @580 EXTERN ARAN AnaranFlirt11
IF ~Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @753 EXTERN PLAYER1 AnaranFlirtRomanceEnd1
IF ~!Global("AranRomanceActive","GLOBAL",2)~ THEN REPLY @753 EXTERN PLAYER1 AnaranFlirtRomanceEnd2
IF ~~ THEN REPLY @319 EXTERN ARAN AnaranFlirtBye

// Реакции группы

// Аномен
APPEND ANOMENJ
IF WEIGHT #-10 ~Global("AranLove","GLOBAL",12) Global("AranAnomenTalk1","GLOBAL",0)~ BEGIN ANAranAnomenTalk1
  SAY @66
IF ~~ THEN DO ~SetGlobal("AranAnomenTalk1","GLOBAL",1)~ REPLY @68 GOTO ANAranAnomenTalk1_1
IF ~~ THEN DO ~SetGlobal("AranAnomenTalk1","GLOBAL",1)~ REPLY @69 GOTO ANAranAnomenTalk1_2
IF ~~ THEN DO ~SetGlobal("AranAnomenTalk1","GLOBAL",1)~ REPLY @70 GOTO ANAranAnomenTalk1_2
END

IF ~~ BEGIN ANAranAnomenTalk1_1
  SAY @72
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranAnomenTalk1_2
  SAY @71
 =@72 
IF ~~ THEN EXIT
END

IF WEIGHT #-10 ~Global("AranLove","GLOBAL",22) Global("AranAnomenTalk2","GLOBAL",0) Global("AnomenRomanceActive","GLOBAL",2)~ BEGIN ANAranAnomenTalk2
  SAY @237
=@238
=@239  
IF ~~ THEN DO ~SetGlobal("AranAnomenTalk2","GLOBAL",1)~ REPLY @240 EXTERN PLAYER1 ANAranAnomenTalk2_1
IF ~~ THEN DO ~SetGlobal("AranAnomenTalk2","GLOBAL",1)~ REPLY @243 EXTERN PLAYER1 ANAranAnomenTalk2_2
END

IF ~~ BEGIN ANAranAnomenTalk2_1_1
  SAY @242
IF ~~ THEN EXIT
END

END

CHAIN ANOMENJ ANAranAnomenTalk2_2_CN
@245 DO ~SetGlobal("AranAnomenTalk2","GLOBAL",2) SetGlobal("AnomenRomanceActive","GLOBAL",3)~
=@246
== PLAYER1 @247
== ANOMENJ @248
== PLAYER1 @249
== ANOMENJ @250
EXIT

CHAIN ANOMENJ ANAranAnomenTalk2_2_LG
@251 DO ~SetGlobal("AranAnomenTalk2","GLOBAL",2) SetGlobal("AnomenRomanceActive","GLOBAL",3)~
== PLAYER1 @252
== ANOMENJ @253
EXIT

CHAIN
IF WEIGHT #-10 ~Global("AranRomanceActive","GLOBAL",2) Global("AranAnomenTalk2","GLOBAL",1) Global("AnomenRomanceActive","GLOBAL",2)~ THEN ANOMENJ ANAranAnomenTalk2Again
@254 DO ~SetGlobal("AranAnomenTalk2","GLOBAL",2)~
== PLAYER1 @255
== ANOMENJ @256
== PLAYER1 @257
END
IF ~Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN EXTERN ANOMENJ ANAranAnomenTalk2_2_CN
IF ~!Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN EXTERN ANOMENJ ANAranAnomenTalk2_2_LG

// Расаад
APPEND IF_FILE_EXISTS RASAADJ
IF WEIGHT #-10 ~Global("AranLove","GLOBAL",12) Global("AranRasaadTalk1","GLOBAL",0)~ BEGIN ANAranRasaadTalk1
  SAY @66
IF ~~ THEN DO ~SetGlobal("AranRasaadTalk1","GLOBAL",1)~ REPLY @68 GOTO ANAranRasaadTalk1_1
IF ~~ THEN DO ~SetGlobal("AranRasaadTalk1","GLOBAL",1)~ REPLY @69 GOTO ANAranRasaadTalk1_2
IF ~~ THEN DO ~SetGlobal("AranRasaadTalk1","GLOBAL",1)~ REPLY @70 GOTO ANAranRasaadTalk1_2
END

IF ~~ BEGIN ANAranRasaadTalk1_1
  SAY @72
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranRasaadTalk1_2
  SAY @71
 =@72 
IF ~~ THEN EXIT
END

IF WEIGHT #-10 ~Global("AranLove","GLOBAL",22) Global("AranRasaadTalk2","GLOBAL",0) Global("RasaadRomanceActive","GLOBAL",2)~ BEGIN ANAranRasaadTalk2
  SAY @258
=@259
IF ~~ THEN DO ~SetGlobal("AranRasaadTalk2","GLOBAL",1)~ REPLY @260 EXTERN PLAYER1 ANAranRasaadTalk2_1
IF ~~ THEN DO ~SetGlobal("AranRasaadTalk2","GLOBAL",1)~ REPLY @263 EXTERN PLAYER1 ANAranRasaadTalk2_2
END

IF ~~ BEGIN ANAranRasaadTalk2_1_1
  SAY @262
IF ~~ THEN EXIT
END

END

CHAIN IF_FILE_EXISTS RASAADJ ANAranRasaadTalk2_2_1
@265 DO ~SetGlobal("AranRasaadTalk2","GLOBAL",2) SetGlobal("RasaadRomanceActive","GLOBAL",3)~
== PLAYER1 @266
== IF_FILE_EXISTS RASAADJ @267
== PLAYER1 @268
== IF_FILE_EXISTS RASAADJ @269
== PLAYER1 @270
== IF_FILE_EXISTS RASAADJ @271
EXIT

CHAIN
IF WEIGHT #-10 ~Global("AranRomanceActive","GLOBAL",2) Global("AranRasaadTalk2","GLOBAL",1) Global("RasaadRomanceActive","GLOBAL",2)~ THEN IF_FILE_EXISTS RASAADJ ANAranRasaadTalk2Again
@272 DO ~SetGlobal("AranRasaadTalk2","GLOBAL",2)~
== PLAYER1 @273
== IF_FILE_EXISTS RASAADJ @274
== PLAYER1 @275
EXTERN RASAADJ ANAranRasaadTalk2_2_1


// Джахейра
APPEND JAHEIRAJ
IF WEIGHT #-10 ~Global("AranLove","GLOBAL",12) Global("AranJaheiraTalk1","GLOBAL",0)~ BEGIN ANAranJaheiraTalk1
  SAY @67
IF ~~ THEN DO ~SetGlobal("AranJaheiraTalk1","GLOBAL",1)~ REPLY @68 GOTO ANAranJaheiraTalk1_1
IF ~~ THEN DO ~SetGlobal("AranJaheiraTalk1","GLOBAL",1)~ REPLY @69 GOTO ANAranJaheiraTalk1_2
IF ~~ THEN DO ~SetGlobal("AranJaheiraTalk1","GLOBAL",1)~ REPLY @70 GOTO ANAranJaheiraTalk1_2
END

IF ~~ BEGIN ANAranJaheiraTalk1_1
  SAY @72
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranJaheiraTalk1_2
  SAY @71
 =@72 
IF ~~ THEN EXIT
END
END

// Келдорн 
APPEND KELDORJ
IF WEIGHT #-10 ~Global("AranLove","GLOBAL",12) Global("AranKeldornTalk1","GLOBAL",0) !Global("C#IM_ImoenStays","GLOBAL",1) !Global("C#IM_ImoenStays","GLOBAL",3)~ BEGIN ANAranKeldornTalk1Imoen
  SAY @222
IF ~~ THEN DO ~SetGlobal("AranKeldornTalk1","GLOBAL",1)~ REPLY @224 GOTO ANAranKeldornTalk1_1
IF ~~ THEN DO ~SetGlobal("AranKeldornTalk1","GLOBAL",1)~ REPLY @225 GOTO ANAranKeldornTalk1_2
IF ~~ THEN DO ~SetGlobal("AranKeldornTalk1","GLOBAL",1)~ REPLY @226 GOTO ANAranKeldornTalk1_2
IF ~~ THEN DO ~SetGlobal("AranKeldornTalk1","GLOBAL",1)~ REPLY @227 GOTO ANAranKeldornTalk1_1
IF ~~ THEN DO ~SetGlobal("AranKeldornTalk1","GLOBAL",1)~ REPLY @228 GOTO ANAranKeldornTalk1_1
END

IF WEIGHT #-10 ~Global("AranLove","GLOBAL",12) Global("AranKeldornTalk1","GLOBAL",0) OR(2) Global("C#IM_ImoenStays","GLOBAL",1) Global("C#IM_ImoenStays","GLOBAL",3)~ BEGIN ANAranKeldornTalk1Iren
  SAY @223
IF ~~ THEN DO ~SetGlobal("AranKeldornTalk1","GLOBAL",1)~ REPLY @224 GOTO ANAranKeldornTalk1_1
IF ~~ THEN DO ~SetGlobal("AranKeldornTalk1","GLOBAL",1)~ REPLY @225 GOTO ANAranKeldornTalk1_2
IF ~~ THEN DO ~SetGlobal("AranKeldornTalk1","GLOBAL",1)~ REPLY @226 GOTO ANAranKeldornTalk1_2
IF ~~ THEN DO ~SetGlobal("AranKeldornTalk1","GLOBAL",1)~ REPLY @227 GOTO ANAranKeldornTalk1_1
IF ~~ THEN DO ~SetGlobal("AranKeldornTalk1","GLOBAL",1)~ REPLY @228 GOTO ANAranKeldornTalk1_1
END

IF ~~ BEGIN ANAranKeldornTalk1_1
  SAY @231
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranKeldornTalk1_2
  SAY @229
IF ~~ THEN REPLY @230 GOTO ANAranKeldornTalk1_1
END
END

// Викония
APPEND VICONIJ
IF WEIGHT #-10 ~Global("AranRomanceActive","GLOBAL",2) Global("AranViconiaTalk1","GLOBAL",0)~ BEGIN ANAranViconiaTalk1
  SAY @232
IF ~~ THEN DO ~SetGlobal("AranViconiaTalk1","GLOBAL",1)~ EXIT
END

IF ~~ BEGIN ANleenaViconiaTalk
  SAY @233
=@234  
IF ~~ THEN EXTERN ANleena ANleenaViconiaTalk1
END

IF ~~ BEGIN ANleenaViconiaTalk2
  SAY @236
IF ~~ THEN DO ~ActionOverride("ANleena",Enemy()) ChangeEnemyAlly("ANleena",ENEMY)~ EXIT
END

END


// Аэри
APPEND AERIEJ
IF WEIGHT #-10 ~Global("AranRomanceActive","GLOBAL",2) Global("AranAerieTalk1","GLOBAL",2)~ BEGIN ANAranAerie1Talk
  SAY @382
IF ~~ THEN DO ~SetGlobal("AranAerieTalk1","GLOBAL",3)~ REPLY @383 GOTO ANAranAerie1Talk1
IF ~~ THEN DO ~SetGlobal("AranAerieTalk1","GLOBAL",3)~ REPLY @385 GOTO ANAranAerie1Talk2
IF ~~ THEN DO ~SetGlobal("AranAerieTalk1","GLOBAL",3)~ REPLY @387 GOTO ANAranAerie1Talk1_End
END

IF ~~ BEGIN ANAranAerie1Talk1
  SAY @384
IF ~~ THEN REPLY @389 GOTO ANAranAerie1Talk3
END

IF ~~ BEGIN ANAranAerie1Talk2
  SAY @386
IF ~~ THEN REPLY @389 GOTO ANAranAerie1Talk3
END

IF ~~ BEGIN ANAranAerie1Talk1_End
  SAY @388
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranAerie1Talk3
  SAY @390
IF ~~ THEN REPLY @391 GOTO ANAranAerie1Talk3_1
IF ~~ THEN REPLY @393 GOTO ANAranAerie1Talk3_2
IF ~~ THEN REPLY @395 GOTO ANAranAerie1Talk3_3
END

IF ~~ BEGIN ANAranAerie1Talk3_1
  SAY @392
IF ~~ THEN REPLY @397 GOTO ANAranAerie1Talk4
IF ~~ THEN REPLY @398 GOTO ANAranAerie1Talk4
IF ~~ THEN REPLY @399 GOTO ANAranAerie1Talk1_End
END

IF ~~ BEGIN ANAranAerie1Talk3_2
  SAY @394
IF ~~ THEN REPLY @397 GOTO ANAranAerie1Talk4
IF ~~ THEN REPLY @398 GOTO ANAranAerie1Talk4
IF ~~ THEN REPLY @399 GOTO ANAranAerie1Talk1_End
END

IF ~~ BEGIN ANAranAerie1Talk3_3
  SAY @396
IF ~~ THEN REPLY @397 GOTO ANAranAerie1Talk4
IF ~~ THEN REPLY @398 GOTO ANAranAerie1Talk4
IF ~~ THEN REPLY @399 GOTO ANAranAerie1Talk1_End
END

IF ~~ BEGIN ANAranAerie1Talk4
  SAY @401
IF ~Class(Player1,THIEF)~ THEN REPLY @402 GOTO ANAranAerie1Talk5_1
IF ~~ THEN REPLY @404 GOTO ANAranAerie1Talk5_2
IF ~~ THEN REPLY @406 GOTO ANAranAerie1Talk5_3
END

IF ~~ BEGIN ANAranAerie1Talk5_1
  SAY @403
IF ~~ THEN REPLY @408 GOTO ANAranAerie1Talk6_1
IF ~~ THEN REPLY @410 GOTO ANAranAerie1Talk6_2
END

IF ~~ BEGIN ANAranAerie1Talk5_2
  SAY @405
IF ~~ THEN REPLY @408 GOTO ANAranAerie1Talk6_1
IF ~~ THEN REPLY @410 GOTO ANAranAerie1Talk6_2
END

IF ~~ BEGIN ANAranAerie1Talk5_3
  SAY @407
IF ~~ THEN REPLY @408 GOTO ANAranAerie1Talk6_1
IF ~~ THEN REPLY @410 GOTO ANAranAerie1Talk6_2
END

IF ~~ BEGIN ANAranAerie1Talk6_1
  SAY @409
=@413  
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranAerie1Talk6_2
  SAY @412
=@413  
IF ~~ THEN EXIT
END

END


// Хаер'Далис
APPEND HAERDAJ
IF WEIGHT #-10 ~Global("AranRomanceActive","GLOBAL",2) Global("AranHaerdaTalk1","GLOBAL",2)~ BEGIN ANAranHaerdaTalk
  SAY @414
IF ~~ THEN DO ~SetGlobal("AranHaerdaTalk1","GLOBAL",3)~ REPLY @415 GOTO ANAranHaerdaTalk1
END

IF ~~ BEGIN ANAranHaerdaTalk1
  SAY @416
IF ~~ THEN REPLY @417 GOTO ANAranHaerdaTalk2
END

IF ~~ BEGIN ANAranHaerdaTalk2
  SAY @418
IF ~~ THEN REPLY @419 GOTO ANAranHaerdaTalk3_1
IF ~~ THEN REPLY @421 GOTO ANAranHaerdaTalk3_2
IF ~~ THEN REPLY @424 GOTO ANAranHaerdaTalk3_3
END

IF ~~ BEGIN ANAranHaerdaTalk3_1
  SAY @420
=@426  
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranHaerdaTalk3_2
  SAY @422
=@423 
=@426  
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranHaerdaTalk3_3
  SAY @425
=@426  
IF ~~ THEN EXIT
END

END

// Дорн

CHAIN
IF WEIGHT #-10 ~Global("AranRomanceActive","GLOBAL",2) Global("AranDornTalk1","GLOBAL",0) Global("DornRomanceActive","GLOBAL",2)~ THEN IF_FILE_EXISTS DORNJ ANAranDornTalk1
@689 DO ~SetGlobal("AranDornTalk1","GLOBAL",1) SetGlobal("DornRomanceActive","GLOBAL",3)~
== PLAYER1 @690
== IF_FILE_EXISTS DORNJ @691
== PLAYER1 @692
== IF_FILE_EXISTS DORNJ @693
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @867
== IF_FILE_EXISTS DORNJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @868
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) OR(3) !InParty("Viconia") !InMyArea("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @867
== IF_FILE_EXISTS DORNJ IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) OR(3) !InParty("Viconia") !InMyArea("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @868
EXIT


// Йошимо
APPEND YOSHJ
IF WEIGHT #-10 ~Global("AranRomanceActive","GLOBAL",2) Global("AranYoshimoTalk","GLOBAL",2)~ BEGIN ANAranYoshimoTalk
  SAY @707
IF ~~ THEN DO ~SetGlobal("AranYoshimoTalk","GLOBAL",3)~ REPLY @708 GOTO ANAranYoshimoTalk1
IF ~~ THEN DO ~SetGlobal("AranYoshimoTalk","GLOBAL",3)~ REPLY @714 GOTO ANAranYoshimoTalk2
END

IF ~~ BEGIN ANAranYoshimoTalk1
  SAY @709
IF ~~ THEN REPLY @710 GOTO ANAranYoshimoTalk1_1
IF ~~ THEN REPLY @711 GOTO ANAranYoshimoTalk2  
END

IF ~~ BEGIN ANAranYoshimoTalk2
  SAY @713
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranYoshimoTalk1_1
  SAY @712
IF ~~ THEN EXIT
END


IF ~~ BEGIN ANleenaYoshimoTalk
  SAY @733
=@734  
IF ~~ THEN DO ~ActionOverride("ANleena",Enemy()) ChangeEnemyAlly("ANleena",ENEMY)~ EXIT
END

END

// Маззи
APPEND MAZZYJ
IF WEIGHT #-10 ~Global("AranRomanceActive","GLOBAL",2) Global("AranMazzyTalk","GLOBAL",2)~ BEGIN ANAranMazzyTalk
  SAY @715
IF ~~ THEN DO ~SetGlobal("AranMazzyTalk","GLOBAL",3)~ REPLY @716 GOTO ANAranMazzyTalk1
END

IF ~~ BEGIN ANAranMazzyTalk1
  SAY @717
IF ~~ THEN REPLY @718 GOTO ANAranMazzyTalk1_1
IF ~~ THEN REPLY @719 GOTO ANAranMazzyTalk2  
END

IF ~~ BEGIN ANAranMazzyTalk2
  SAY @721
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranMazzyTalk1_1
  SAY @720
IF ~~ THEN EXIT
END
END


// Налия
APPEND NALIAJ
IF WEIGHT #-10 ~Global("AranRomanceActive","GLOBAL",2) Global("AranNaliaTalk","GLOBAL",2)~ BEGIN ANAranNaliaTalk
  SAY @735
IF ~~ THEN DO ~SetGlobal("AranNaliaTalk","GLOBAL",3)~ REPLY @736 GOTO ANAranNaliaTalk1
IF ~~ THEN DO ~SetGlobal("AranNaliaTalk","GLOBAL",3)~ REPLY @737 GOTO ANAranNaliaTalkEnd
END

IF ~~ BEGIN ANAranNaliaTalk1
  SAY @738
=@739  
=@740 
IF ~~ THEN REPLY @741 GOTO ANAranNaliaTalk2_1
IF ~~ THEN REPLY @742 GOTO ANAranNaliaTalk2_2
IF ~!Global("GarrickNaliaRomance","GLOBAL",2)~ THEN REPLY @742 GOTO ANAranNaliaTalk2_2
IF ~Global("GarrickNaliaRomance","GLOBAL",2)~ THEN REPLY @890 GOTO ANAranNaliaTalk2_2Garrick
IF ~~ THEN REPLY @743 GOTO ANAranNaliaTalk2_3
IF ~~ THEN REPLY @744 GOTO ANAranNaliaTalk2_4
IF ~~ THEN REPLY @745 GOTO ANAranNaliaTalk2_5
IF ~~ THEN REPLY @746 GOTO ANAranNaliaTalk2_6
END

IF ~~ BEGIN ANAranNaliaTalk2_1
  SAY @748
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranNaliaTalk2_2
  SAY @749
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranNaliaTalk2_2Garrick
  SAY @891
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranNaliaTalk2_3
  SAY @750
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranNaliaTalk2_4
  SAY @751
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranNaliaTalk2_5
  SAY @747
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranNaliaTalk2_6
  SAY @752
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranNaliaTalkEnd
  SAY @747
IF ~~ THEN EXIT
END


END


// Гаррик
APPEND IF_FILE_EXISTS 7XGarJ

IF WEIGHT #-10 ~Global("AranRomanceActive","GLOBAL",2) Global("AranGarrickTalk","GLOBAL",2)~ BEGIN ANAranGarrickTalk1
  SAY @874
IF ~~ THEN DO ~SetGlobal("AranGarrickTalk","GLOBAL",3)~ REPLY @875 GOTO ANAranGarrickTalk2
IF ~~ THEN DO ~SetGlobal("AranGarrickTalk","GLOBAL",3)~ REPLY @877 GOTO ANAranGarrickTalk3
IF ~~ THEN DO ~SetGlobal("AranGarrickTalk","GLOBAL",3)~ REPLY @879 GOTO ANAranGarrickTalk4
END

IF ~~ BEGIN ANAranGarrickTalk2
  SAY @876
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranGarrickTalk3
  SAY @878
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranGarrickTalk4
  SAY @880
IF ~~ THEN EXIT
END

END

// Коран
APPEND IF_FILE_EXISTS 7XCoranJ

IF WEIGHT #-10 ~Global("AranRomanceActive","GLOBAL",2) Global("AranCoranTalk","GLOBAL",2)~ BEGIN ANAranCoranTalk1
  SAY @881
IF ~~ THEN DO ~SetGlobal("AranCoranTalk","GLOBAL",3)~ EXIT
END

END

APPEND IF_FILE_EXISTS O#CORANJ

IF WEIGHT #-10 ~Global("AranRomanceActive","GLOBAL",2) Global("AranCoranTalk","GLOBAL",2)~ BEGIN ANAranCoranTalk1
  SAY @881
IF ~~ THEN DO ~SetGlobal("AranCoranTalk","GLOBAL",3)~ EXIT
END

END

//

// Шпион
BEGIN ANspym1

IF ~Global("AranLove","GLOBAL",17)~ BEGIN ANspym1Talk1
  SAY @95
IF ~~ THEN REPLY @96 GOTO ANspym1Talk1_1
IF ~~ THEN REPLY @97 GOTO ANspym1Talk1_2
IF ~~ THEN REPLY @98 GOTO ANspym1Talk1_2
IF ~~ THEN REPLY @99 GOTO ANspym1Talk1_3
END

IF ~~ BEGIN ANspym1Talk1_1
  SAY @100
IF ~~ THEN DO ~GiveItemCreate("ANlet1",Player1,1,0,0)~ REPLY @101 GOTO ANspym1Talk1_1_1
IF ~~ THEN DO ~GiveItemCreate("ANlet1",Player1,1,0,0)~ REPLY @102 GOTO ANspym1Talk1_1_2
END

IF ~~ BEGIN ANspym1Talk1_1_1
  SAY @103
IF ~~ THEN DO ~SetGlobal("AranLove","GLOBAL",18) AddJournalEntry(@1044,QUEST) EscapeArea()~ EXIT
END

IF ~~ BEGIN ANspym1Talk1_1_2
  SAY @104
IF ~~ THEN DO ~SetGlobal("AranLove","GLOBAL",18) AddJournalEntry(@1044,QUEST)~ REPLY @105 GOTO ANspym1Talk1_1_1End
END

IF ~~ BEGIN ANspym1Talk1_1_1End
  SAY @106
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ BEGIN ANspym1Talk1_2
  SAY @107
IF ~~ THEN DO ~SetGlobal("AranLove","GLOBAL",19) AddJournalEntry(@1043,QUEST) EscapeArea()~ EXIT
END

IF ~~ BEGIN ANspym1Talk1_3
  SAY @108
IF ~~ THEN EXIT
END

// Лиина
BEGIN ANleena

IF ~Global("AranLove","GLOBAL",25)~ BEGIN ANleena1Talk
  SAY @131
IF ~~ THEN REPLY @132 DO ~SetGlobal("AranLove","GLOBAL",26)~ GOTO ANleena1Talk1
END

IF ~~ BEGIN ANleena1Talk1
  SAY @133
=@134  
IF ~Kit(Player1,ASSASIN)~ THEN REPLY @135 GOTO ANleena1Talk1_1
IF ~~ THEN REPLY @137 EXTERN PLAYER1 ANleena1Talk1_2
IF ~OR(3) !InParty("Viconia") !InMyArea("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID) OR(3) !InParty("Yoshimo") !InMyArea("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN REPLY @186 EXTERN PLAYER1 ANleena1Talk1_3
IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID) OR(3) !InParty("Viconia") !InMyArea("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN REPLY @186 EXTERN YOSHJ ANleenaYoshimoTalk
IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN REPLY @186 EXTERN VICONIJ ANleenaViconiaTalk
IF ~~ THEN REPLY @156 GOTO ANleena1Talk1_4
END

IF ~~ BEGIN ANleena1Talk1_1
  SAY @136
IF ~~ THEN DO ~Enemy() ChangeEnemyAlly("ANleena1",ENEMY)~ EXIT
END

IF ~~ BEGIN ANleena1Talk1_2_2
  SAY @187
IF ~~ THEN DO ~AddJournalEntry(@1049,QUEST) Kill(Myself)~ EXIT
END

IF ~~ BEGIN ANleena1Talk1_2_3
  SAY @150
IF ~~ THEN REPLY @151 GOTO ANleena1Talk1_2_3_1
IF ~~ THEN REPLY @148 GOTO ANleena1Talk1_2_2
END

IF ~~ BEGIN ANleena1Talk1_2_3_1
  SAY @152
IF ~~ THEN DO ~AddJournalEntry(@1051,QUEST) SetGlobal("ANleenaGuild","GLOBAL",1)~ EXIT
END

IF ~~ BEGIN ANleena1Talk1_4
  SAY @157
IF ~~ THEN REPLY @158 DO ~SetGlobal("AranLove","GLOBAL",27)~ GOTO ANleena1Talk1_4_1
IF ~~ THEN REPLY @159 DO ~SetGlobal("AranLove","GLOBAL",27)~ GOTO ANleena1Talk1_4_1
END

IF ~~ BEGIN ANleena1Talk1_4_1
  SAY @160
IF ~~ THEN DO ~Enemy() ChangeEnemyAlly("ANleena1",ENEMY)~ EXIT
END

IF ~~ BEGIN ANleenaViconiaTalk1
  SAY @235
IF ~~ THEN EXTERN VICONIJ ANleenaViconiaTalk2
END

CHAIN
IF ~Global("AranLove","GLOBAL",27) Global("ANleenaOut","GLOBAL",0)~ THEN ANleena ANleena1Talk1_2_1
@147 DO ~AddJournalEntry(@1050,QUEST) SetGlobal("ANleenaOut","GLOBAL",1) EscapeArea()~ 
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @698
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @699
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @700
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @701
EXIT

CHAIN
IF ~Global("AranLove","GLOBAL",26)~ THEN PLAYER1 ANleena1Talk1_2
@138 DO ~SetGlobal("AranLove","GLOBAL",27)~
== ANleena @139
== PLAYER1 @140 
== ANleena @141
== PLAYER1 @142
== ANleena @143
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @683
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) OR(2) !InParty("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @683
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) OR(2) !InParty("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID) OR(2) !InParty("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @683
== IF_FILE_EXISTS O#BranJ IF ~InParty("O#Bran") InMyArea("O#Bran") !StateCheck("O#Bran",CD_STATE_NOTVALID)~ THEN @684
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @685
== IF_FILE_EXISTS 7XBRANJ IF ~InParty("7XBRAN") InMyArea("7XBRAN") !StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @684
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @685
== PLAYER1 @144
== ANleena @145
END
IF ~~ THEN REPLY @146 EXTERN ANleena ANleena1Talk1_2_1
IF ~~ THEN REPLY @148 EXTERN ANleena ANleena1Talk1_2_2
IF ~~ THEN REPLY @149 EXTERN ANleena ANleena1Talk1_2_3

CHAIN
IF ~Global("LeenaGuildExists","AR0307",1)~ THEN ANleena ANleena1TalkGuild
@276
== BOOTER @277
== ANleena @278 
== BOOTER @279
== ANleena @280
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @686
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @704
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN @687
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN @688
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @695
== IF_FILE_EXISTS NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @706
== PLAYER1 IF ~OR(5) InParty("Aerie") InParty("Jaheira") InParty("Anomen") InParty("Cernd") InParty("Neera")~ @696
== IF_FILE_EXISTS 7XGarJ IF ~InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @882
== IF_FILE_EXISTS 7XCoranJ IF ~InParty("7XCORAN") InMyArea("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @883
== IF_FILE_EXISTS O#CORANJ IF ~InParty("O#Coran") InMyArea("O#Coran") !StateCheck("O#Coran",CD_STATE_NOTVALID)~ THEN @883
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @694
=@703
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @702
== PLAYER1 IF ~OR(2) InParty("Mazzy") InParty("Keldorn")~ @705
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) OR(7) InParty("Aerie") InParty("Jaheira") InParty("Anomen") InParty("Cernd") InParty("Mazzy") InParty("Keldorn") InParty("Neera")~ @697
EXIT

// Ренал
APPEND RENAL

IF WEIGHT #-20 ~Global("ANAranLamp","GLOBAL",4) Global("ANAranLampRenal","GLOBAL",1) Global("PlayerThiefGuild","GLOBAL",1) Global("TonySpawnAlternate","GLOBAL",0)~ BEGIN ANAranLampRenalTalkGuild
  SAY @497
IF ~~ THEN DO ~SetGlobal("ANAranLampRenal","GLOBAL",2)~ REPLY @499 GOTO ANAranLampRenalTalk1
END

IF WEIGHT #-21 ~Global("ANAranLamp","GLOBAL",4) Global("ANAranLampRenal","GLOBAL",1) Global("PGFailed","GLOBAL",1) Global("TonySpawnAlternate","GLOBAL",0)~ BEGIN ANAranLampRenalTalkNoGuild
  SAY @498
IF ~~ THEN DO ~SetGlobal("ANAranLampRenal","GLOBAL",2)~ REPLY @499 GOTO ANAranLampRenalTalk1
END

IF WEIGHT #-21 ~Global("ANAranLamp","GLOBAL",4) Global("ANAranLampRenal","GLOBAL",1) !Global("TonySpawnAlternate","GLOBAL",0)~ BEGIN ANAranLampRenalTalkAlternate
  SAY @895
IF ~~ THEN DO ~SetGlobal("ANAranLampRenal","GLOBAL",2)~ REPLY @499 GOTO ANAranLampRenalTalk1
END

IF ~~ BEGIN ANAranLampRenalTalk1
  SAY @500
IF ~~ THEN DO ~SetGlobal("ANAranLampRenal","GLOBAL",3)~ REPLY @501 GOTO ANAranLampRenalTalk2
IF ~~ THEN REPLY @502 GOTO ANAranLampRenalTalkEnd
END

IF ~~ BEGIN ANAranLampRenalTalk2
  SAY @503
IF ~~ THEN EXIT
END


IF ~~ BEGIN ANAranLampRenalTalkEnd
  SAY @504
IF ~~ THEN EXIT
END


IF ~~ BEGIN ANAranLampPorinTalk5_1
  SAY @523
=@524  
IF ~~ THEN DO ~ActionOverride("ANPorin",Kill(Myself)) ~ EXIT
END

IF ~~ BEGIN ANAranLampPorinTalk6
  SAY @527
IF ~~ THEN EXTERN ANPorin ANAranLampPorinTalk7
END

END

// Порин
BEGIN ANPorin

IF ~~ BEGIN ANAranLampPorinTalk1
  SAY @507
IF ~~ THEN DO ~SetGlobal("ANAranLampRenal","GLOBAL",5)~ REPLY @508 GOTO ANAranLampPorinTalk2
IF ~~ THEN DO ~SetGlobal("ANAranLampRenal","GLOBAL",5)~ REPLY @509 GOTO ANAranLampPorinTalk2
IF ~~ THEN DO ~SetGlobal("ANAranLampRenal","GLOBAL",5)~ REPLY @510 GOTO ANAranLampPorinTalk3
END

IF ~~ BEGIN ANAranLampPorinTalk2
  SAY @511
IF ~~ THEN REPLY @512 GOTO ANAranLampPorinTalk2_2
END

IF ~~ BEGIN ANAranLampPorinTalk2_2
  SAY @513
IF ~~ THEN EXTERN PLAYER1 ANAranLampPorinTalk4
END

IF ~~ BEGIN ANAranLampPorinTalk3
  SAY @514
IF ~~ THEN EXTERN PLAYER1 ANAranLampPorinTalk4
END

IF ~~ BEGIN ANAranLampPorinTalk5_2
  SAY @525
IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~~ BEGIN ANAranLampPorinTalk5_3
  SAY @526
IF ~~ THEN EXTERN RENAL ANAranLampPorinTalk6
END

IF ~~ BEGIN ANAranLampPorinTalk7
  SAY @528
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

// Латан
APPEND SHTHLT02

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

// Бернард
EXTEND_BOTTOM BERNARD 22 
IF ~Global("ANAranLamp","GLOBAL",5)~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @543 GOTO ANLampBernardTalk
END

EXTEND_BOTTOM BERNARD 24 
IF ~Global("ANAranLamp","GLOBAL",5)~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @543 GOTO ANLampBernardTalk
END

EXTEND_BOTTOM BERNARD 0
IF ~Global("ANAranLamp","GLOBAL",5)~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @543 GOTO ANLampBernardTalk
END

APPEND BERNARD

IF ~~ BEGIN ANLampBernardTalk
  SAY @544
IF ~~ THEN REPLY @545 GOTO ANLampBernardTalk1
IF ~~ THEN REPLY @546 GOTO ANLampBernardTalk2
IF ~~ THEN REPLY @547 GOTO ANLampBernardTalk3
IF ~~ THEN REPLY @548 GOTO ANLampBernardTalk4
END

IF ~~ BEGIN ANLampBernardTalk1
  SAY @549
IF ~~ THEN EXTERN PLAYER1 ANLampBernardTalk1_1
END

IF ~~ BEGIN ANLampBernardTalk2
  SAY @551
IF ~~ THEN EXTERN PLAYER1 ANLampBernardTalk2_1
END

IF ~~ BEGIN ANLampBernardTalk3
  SAY @553
IF ~~ THEN EXTERN PLAYER1 ANLampBernardTalk3_1
END

IF ~~ BEGIN ANLampBernardTalk4
  SAY @555
IF ~~ THEN EXTERN PLAYER1 ANLampBernardTalk4_1
END

IF ~~ BEGIN ANLampBernardTalk5_1_1
  SAY @560
IF ~~ THEN GOTO ANLampBernardTalk6
END

IF ~~ BEGIN ANLampBernardTalk5_2
  SAY @562
IF ~~ THEN GOTO ANLampBernardTalk6
END

IF ~~ BEGIN ANLampBernardTalk5_3_1
  SAY @565
IF ~~ THEN GOTO ANLampBernardTalk6
END

IF ~~ BEGIN ANLampBernardTalk5_4_1
  SAY @567
IF ~~ THEN GOTO ANLampBernardTalk6
END

IF ~~ BEGIN ANLampBernardTalk5_5  
  SAY @569
IF ~~ THEN GOTO ANLampBernardTalk6
END

IF ~~ BEGIN ANLampBernardTalk5_6
  SAY @575
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANLampBernardTalk6
  SAY @570
=@571 
=@572 
IF ~~ THEN DO ~AddJournalEntry(@1061,QUEST) SetGlobal("ANAranLamp","GLOBAL",6)~ EXIT
END

END

APPEND PLAYER1

IF ~~ BEGIN ANLampBernardTalk1_1
  SAY @550
IF ~~ THEN GOTO ANLampBernardTalk5
END

IF ~~ BEGIN ANLampBernardTalk2_1
  SAY @552
IF ~~ THEN GOTO ANLampBernardTalk5
END

IF ~~ BEGIN ANLampBernardTalk3_1
  SAY @554
IF ~~ THEN GOTO ANLampBernardTalk5
END

IF ~~ BEGIN ANLampBernardTalk4_1
  SAY @556
IF ~~ THEN GOTO ANLampBernardTalk5
END

IF ~~ BEGIN ANLampBernardTalk5
  SAY @557
IF ~Kit(Player1,ASSASIN)~ THEN REPLY @558 GOTO ANLampBernardTalk5_1
IF ~Kit(Player1,SWASHBUCKLER)~ THEN REPLY @561 EXTERN BERNARD ANLampBernardTalk5_2
IF ~CheckStatGT(Player1,14,CHR) Gender(Player1,MALE)~ THEN REPLY @896 GOTO ANLampBernardTalk5_3
IF ~CheckStatGT(Player1,14,CHR) Gender(Player1,FEMALE)~ THEN REPLY @563 GOTO ANLampBernardTalk5_3
IF ~CheckStatGT(Player1,14,INT)~ THEN REPLY @573 GOTO ANLampBernardTalk5_4
IF ~PartyGoldGT(99)~ THEN DO ~TakePartyGold(100)~ REPLY @568 EXTERN BERNARD ANLampBernardTalk5_5   
IF ~PartyGoldLT(100)~ THEN REPLY @574 EXTERN BERNARD ANLampBernardTalk5_6
END

IF ~~ BEGIN ANLampBernardTalk5_1
  SAY @559
IF ~~ THEN EXTERN BERNARD ANLampBernardTalk5_1_1
END

IF ~~ BEGIN ANLampBernardTalk5_3
  SAY @564
IF ~~ THEN EXTERN BERNARD ANLampBernardTalk5_3_1
END

IF ~~ BEGIN ANLampBernardTalk5_4
  SAY @566
IF ~~ THEN EXTERN BERNARD ANLampBernardTalk5_4_1
END

END

BEGIN ANJovi

IF ~Global("ANAranLampRenal","GLOBAL",2) OR(2) Global("ANAranLamp","GLOBAL",6) Global("ANAranLamp","GLOBAL",7) !Global("ANAzoraStoneEscape","GLOBAL",0)~ BEGIN ANLampBothStoneJoviNoAzora
  SAY @583
=@584  
IF ~~ THEN REPLY @586 GOTO ANLampBothStoneJovi1
IF ~~ THEN REPLY @587 GOTO ANLampBothStoneJovi2
IF ~~ THEN REPLY @588 GOTO ANLampBothStoneJovi3
END

IF ~Global("ANAranLampRenal","GLOBAL",2) OR(2) Global("ANAranLamp","GLOBAL",6) Global("ANAranLamp","GLOBAL",7) Global("ANAzoraStoneEscape","GLOBAL",0)~ BEGIN ANLampBothStoneJoviAzora
  SAY @583
=@585  
IF ~~ THEN REPLY @586 GOTO ANLampBothStoneJovi1
IF ~~ THEN REPLY @587 GOTO ANLampBothStoneJovi2
IF ~~ THEN REPLY @588 GOTO ANLampBothStoneJovi3
END

IF ~!Global("ANAranLampRenal","GLOBAL",2) Global("ANAranLamp","GLOBAL",8) Global("ANjoviRevive","GLOBAL",0)~ BEGIN ANLampBothStoneJoviNoAzora
  SAY @583
=@584  
IF ~~ THEN REPLY @586 GOTO ANLampBothStoneJovi1
IF ~~ THEN REPLY @587 GOTO ANLampBothStoneJovi2
IF ~~ THEN REPLY @588 GOTO ANLampBothStoneJovi3
END

IF ~~ BEGIN ANLampBothStoneJovi1
  SAY @589
IF ~~ THEN DO ~ActionOverride("ANjovi",Enemy()) ChangeEnemyAlly("ANjovi",ENEMY)~ EXIT
END

IF ~~ BEGIN ANLampBothStoneJovi2
  SAY @590
IF ~~ THEN DO ~ActionOverride("ANjovi",Enemy()) ChangeEnemyAlly("ANjovi",ENEMY)~ EXIT
END

IF ~~ BEGIN ANLampBothStoneJovi3
  SAY @591
IF ~~ THEN DO ~ActionOverride("ANjovi",Enemy()) ChangeEnemyAlly("ANjovi",ENEMY)~ EXIT
END

IF ~Global("ANAranLamp","GLOBAL",8) Global("ANjoviRevive","GLOBAL",1)~ BEGIN ANLampJoviStoneAzoraLive
  SAY @628
IF ~~ THEN EXTERN ANAzora ANLampJoviStoneAzoraLive1
END

IF ~~ BEGIN ANLampJoviStoneAzoraLive2
  SAY @630
IF ~~ THEN DO ~SetGlobal("ANjoviRevive","GLOBAL",2)~ EXIT
END

IF ~Global("ANjoviRevive","GLOBAL",3)~ BEGIN ANLampJoviStoneAzoraDead
  SAY @577
IF ~~ THEN DO ~AddJournalEntry(@1063,QUEST)~ REPLY @631 GOTO ANLampJoviStoneAzoraDead1
IF ~~ THEN DO ~AddJournalEntry(@1063,QUEST)~ REPLY @632 GOTO ANLampJoviStoneAzoraDead2
IF ~~ THEN DO ~AddJournalEntry(@1063,QUEST)~ REPLY @633 GOTO ANLampJoviStoneAzoraDead3
END

IF ~~ BEGIN ANLampJoviStoneAzoraDead1
  SAY @634
IF ~~ THEN DO ~ActionOverride("ANjovi",Enemy()) ChangeEnemyAlly("ANjovi",ENEMY)~ EXIT
END

IF ~~ BEGIN ANLampJoviStoneAzoraDead2
  SAY @635
IF ~~ THEN DO ~ActionOverride("ANjovi",Enemy()) ChangeEnemyAlly("ANjovi",ENEMY)~ EXIT
END

IF ~~ BEGIN ANLampJoviStoneAzoraDead3
  SAY @636
IF ~~ THEN DO ~ActionOverride("ANjovi",Enemy()) ChangeEnemyAlly("ANjovi",ENEMY)~ EXIT
END

BEGIN ANAzora

IF WEIGHT #-4 ~Global("ANAranLamp","GLOBAL",7) Dead("ANbasil")~ BEGIN ANLampAzoraNoStone
  SAY @596
IF ~~ THEN REPLY @597 DO ~SetGlobal("ANAranLamp","GLOBAL",8)~ GOTO ANLampAzoraNoStone1
IF ~~ THEN REPLY @598 DO ~SetGlobal("ANAranLamp","GLOBAL",8)~ GOTO ANLampAzoraNoStone1
IF ~~ THEN REPLY @599 DO ~SetGlobal("ANAranLamp","GLOBAL",8)~ GOTO ANLampAzoraNoStone1
END

IF ~~ BEGIN ANLampAzoraNoStone2_1
  SAY @612
IF ~~ THEN REPLY @603 GOTO ANLampAzoraNoStone2
END

IF ~~ BEGIN ANLampAzoraNoStone3
  SAY @624
IF ~~ THEN REPLY @625 GOTO ANLampAzoraNoStone3_1
END

IF ~~ BEGIN ANLampAzoraNoStone3_1
  SAY @626
IF ~~ THEN DO ~AddJournalEntry(@1062,QUEST) GiveItemCreate("CLCK23",Player1,1,0,0) EscapeArea()~ EXIT
END

IF ~~ BEGIN ANLampAzoraNoStone4
  SAY @627
IF ~~ THEN DO ~SetGlobal("ANjoviRevive","GLOBAL",1)~ EXIT
END

IF ~~ BEGIN ANLampJoviStoneAzoraLive1
  SAY @629
IF ~~ THEN EXTERN ANJovi ANLampJoviStoneAzoraLive2
END


CHAIN
IF WEIGHT #-3 ~Dead("ANbasil")~ THEN ANAzora ANLampAzoraNoStone1
@600
=@601 
=@602 
== PLAYER1 @603
== ANAzora @604
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @605
== PLAYER1 IF ~OR(3) !InParty("Imoen2") !InMyArea("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @605
== ANAzora @606
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @607
== PLAYER1 IF ~OR(2) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @607
== ANAzora @608
END
IF ~~ THEN REPLY @609 GOTO ANLampAzoraNoStone2_1
IF ~~ THEN REPLY @610 GOTO ANLampAzoraNoStone2
IF ~~ THEN REPLY @611 GOTO ANLampAzoraNoStone2

CHAIN
IF WEIGHT #-2 ~Global("ANAranLamp","GLOBAL",8) Dead("ANbasil")~ THEN ANAzora ANLampAzoraNoStone2
@613
== IF_FILE_EXISTS NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @614
== PLAYER1 IF ~OR(3) !InParty("Neera") !InMyArea("Neera") StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @614
== ANAzora @615
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @616
== PLAYER1 IF ~OR(2) !InParty("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @616
== ANAzora @617
== PLAYER1 @618
== ANAzora @619
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @673
== PLAYER1 @620
== ANAzora @621 DO ~GiveItemCreate("ANLamp",Player1,1,0,0)~
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @674
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @677
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @675
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) OR(2) !InParty("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @675
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @669
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) OR(2) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @669
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @676
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @678
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @671
== IF_FILE_EXISTS O#BranJ IF ~InParty("O#Bran") InMyArea("O#Bran") !StateCheck("O#Bran",CD_STATE_NOTVALID)~ THEN @681
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @682
== IF_FILE_EXISTS 7XBRANJ IF ~InParty("7XBRAN") InMyArea("7XBRAN") !StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @681
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @682
== IF_FILE_EXISTS 7XGarJ IF ~InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @884
== IF_FILE_EXISTS 7XCoranJ IF ~InParty("7XCORAN") InMyArea("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @885
== IF_FILE_EXISTS O#CORANJ IF ~InParty("O#Coran") InMyArea("O#Coran") !StateCheck("O#Coran",CD_STATE_NOTVALID)~ THEN @885
END
IF ~~ THEN REPLY @622 GOTO ANLampAzoraNoStone3
IF ~~ THEN REPLY @623 GOTO ANLampAzoraNoStone4




CHAIN
IF ~Global("ANAranLamp","GLOBAL",7) AreaCheck("AR0404") Global("ANAranLampRenal","GLOBAL",2)~ THEN PLAYER1 ANAranLampBothInStone
@576 DO ~GiveItemCreate("ANLamp",Player1,1,0,0)~
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @672
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @671
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @673
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @662
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @664
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @663
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) OR(2) !InParty("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @663
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @668
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @669
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) OR(2) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @669
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @670
== IF_FILE_EXISTS O#BranJ IF ~InParty("O#Bran") InMyArea("O#Bran") !StateCheck("O#Bran",CD_STATE_NOTVALID)~ THEN @679
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @680
== IF_FILE_EXISTS 7XBRANJ IF ~InParty("7XBRAN") InMyArea("7XBRAN") !StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @679
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @680
== IF_FILE_EXISTS 7XGarJ IF ~InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @884
== IF_FILE_EXISTS 7XCoranJ IF ~InParty("7XCORAN") InMyArea("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @885
== IF_FILE_EXISTS O#CORANJ IF ~InParty("O#Coran") InMyArea("O#Coran") !StateCheck("O#Coran",CD_STATE_NOTVALID)~ THEN @885
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @665
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @666
== PLAYER1 IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) OR(2) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @666
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @667
EXIT

CHAIN
IF ~Global("ANAranLampPartyTalk","AR0404",1) AreaCheck("AR0404")~ THEN PLAYER1 ANAranLampJoviStoneOrDead
@578 DO ~SetGlobal("ANAranLampPartyTalk","AR0404",2)~
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @665
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @666
== PLAYER1 IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) OR(2) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @666
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @667
EXIT

APPEND ARAN

IF WEIGHT #-20 ~Global("AranLampFinish","AR0307",1) Global("ANAzoraStoneEscape","GLOBAL",1) Global("ANjoviNoStone","GLOBAL",0) PartyHasItem("ANLamp") !Global("ANAranLamp","GLOBAL",10)~ BEGIN ANAranLampEndJoviStone
  SAY @592
=@593 
=@595 
IF ~!Global("TonySpawnAlternate","GLOBAL",0)~ THEN DO ~TakePartyItem("ANLamp") AddJournalEntry(@1064,QUEST_DONE) GiveGoldForce(3000) AddexperienceParty(8000) SetGlobal("ANAranLamp","GLOBAL",10)~ EXIT
IF ~Global("TonySpawnAlternate","GLOBAL",0)~ THEN DO ~TakePartyItem("ANLamp") AddJournalEntry(@1064,QUEST_DONE) SetGlobal("ANAranLamp","GLOBAL",10) GiveGoldForce(3000) AddexperienceParty(8000)~ GOTO ANaranLampFinishTalk
END


IF WEIGHT #-20 ~Global("AranLampFinish","AR0307",1) Global("ANAzoraStoneEscape","GLOBAL",1) Global("ANjoviNoStone","GLOBAL",1) PartyHasItem("ANLamp") !Global("ANAranLamp","GLOBAL",10)~ BEGIN ANAranLampEndJoviNoStone
  SAY @592
=@595 
IF ~!Global("TonySpawnAlternate","GLOBAL",0)~ THEN DO ~TakePartyItem("ANLamp") AddJournalEntry(@1064,QUEST_DONE) SetGlobal("ANAranLamp","GLOBAL",10) GiveGoldForce(3000) AddexperienceParty(8000)~ EXIT
IF ~Global("TonySpawnAlternate","GLOBAL",0)~ THEN DO ~TakePartyItem("ANLamp") AddJournalEntry(@1064,QUEST_DONE) SetGlobal("ANAranLamp","GLOBAL",10) GiveGoldForce(3000) AddexperienceParty(8000)~ GOTO ANaranLampFinishTalk
END


IF WEIGHT #-21 ~Global("AranLampFinish","AR0307",1) Global("ANAzoraStoneEscape","GLOBAL",0) Global("ANjoviNoStone","GLOBAL",0) PartyHasItem("ANLamp") !Global("ANAranLamp","GLOBAL",10)~ BEGIN ANAranLampEndJoviAzoraStone
  SAY @594
=@593 
=@595 
IF ~!Global("TonySpawnAlternate","GLOBAL",0)~ THEN DO ~TakePartyItem("ANLamp") AddJournalEntry(@1064,QUEST_DONE) SetGlobal("ANAranLamp","GLOBAL",10) GiveGoldForce(3000) AddexperienceParty(8000)~ EXIT
IF ~Global("TonySpawnAlternate","GLOBAL",0)~ THEN DO ~TakePartyItem("ANLamp") AddJournalEntry(@1064,QUEST_DONE) SetGlobal("ANAranLamp","GLOBAL",10) GiveGoldForce(3000) AddexperienceParty(8000)~ GOTO ANaranLampFinishTalk
END

IF WEIGHT #-22 ~Global("AranLampFinish","AR0307",1) Global("ANjoviRevive","GLOBAL",3) Dead("ANAzora") PartyHasItem("ANLamp") !Global("ANAranLamp","GLOBAL",10)~ BEGIN ANAranLampEndJoviAzoraStone
  SAY @637
=@638
=@595 
IF ~!Global("TonySpawnAlternate","GLOBAL",0)~ THEN DO ~TakePartyItem("ANLamp") AddJournalEntry(@1064,QUEST_DONE) SetGlobal("ANAranLamp","GLOBAL",10) GiveGoldForce(3000) AddexperienceParty(8000)~ EXIT
IF ~Global("TonySpawnAlternate","GLOBAL",0)~ THEN DO ~TakePartyItem("ANLamp") AddJournalEntry(@1064,QUEST_DONE) SetGlobal("ANAranLamp","GLOBAL",10) GiveGoldForce(3000) AddexperienceParty(8000)~ GOTO ANaranLampFinishTalk
END

IF ~~ BEGIN ANaranLampFinishTalk
  SAY @641
=@642  
IF ~~ THEN REPLY @643 GOTO ANaranLampFinishTalk1
IF ~~ THEN REPLY @649 EXTERN PLAYER1 ANaranLampFinishTalk2
IF ~~ THEN REPLY @655 GOTO ANaranLampFinishTalk3
END

END

CHAIN
IF WEIGHT #-22 ~Global("AranLampFinish","AR0307",1) Global("ANAranLamp","GLOBAL",8) !Dead("ANAzora") Global("ANjoviRevive","GLOBAL",0) PartyHasItem("ANLamp") !Global("ANAranLamp","GLOBAL",10)~ THEN ARAN ANAranLampEndJoviAzoraStone
@637
=@639
== ARAN IF ~Global("ANjoviNoStone","GLOBAL",0)~ THEN @640
=@595 DO ~TakePartyItem("ANLamp") AddJournalEntry(@1064,QUEST_DONE) SetGlobal("ANAranLamp","GLOBAL",10) GiveGoldForce(3000) AddexperienceParty(8000)~
END
IF ~Gender(Player1,MALE)~ THEN EXIT
IF ~Gender(Player1,FEMALE)~ THEN EXTERN ARAN ANaranLampFinishTalk

CHAIN
IF ~Global("AranLampFinish","AR0307",1) Global("ANAranLamp","GLOBAL",10)~ THEN ARAN ANaranLampFinishTalk1
@644 DO ~SetGlobal("ANAranLamp","GLOBAL",13)~
=@645
== PLAYER1 @646
== ARAN @647
=@648
EXIT

CHAIN
IF ~Global("AranLampFinish","AR0307",1) Global("ANAranLamp","GLOBAL",10)~ THEN PLAYER1 ANaranLampFinishTalk2
@650 DO ~SetGlobal("ANAranLamp","GLOBAL",13)~
== ARAN @651
=@652
== PLAYER1 @653
== ARAN @654
EXIT

CHAIN
IF ~Global("AranLampFinish","AR0307",1) Global("ANAranLamp","GLOBAL",10)~ THEN ARAN ANaranLampFinishTalk3
@656 DO ~SetGlobal("ANAranLamp","GLOBAL",11)~
=@657
== PLAYER1 @658
== ARAN @659
=@660
=@661
EXIT


// Эпизод 8
APPEND PLAYER1

IF ~Global("ANAranTethyr","GLOBAL",1)~ BEGIN ANAranTethyrPlayer1Talk1
  SAY @821
IF ~!InParty("Edwin") !InParty("Korgan") !InParty("Aerie") !InParty("Jan")~ THEN DO ~SetGlobal("ANAranTethyr","GLOBAL",2)~ EXIT
IF ~OR (4) InParty("Edwin") InParty("Korgan") InParty("Aerie") InParty("Jan") OR(4) !StateCheck("Edwin",CD_STATE_NOTVALID) !StateCheck("Korgan",CD_STATE_NOTVALID) !StateCheck("Aerie",CD_STATE_NOTVALID) !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("ANAranTethyr","GLOBAL",2)~ EXTERN PLAYER1 ANAranTethyrPlayer1Talk1_1 
END

IF ~~ BEGIN ANAranTethyrAltar1_1
  SAY @761
IF ~~ THEN REPLY @763 EXTERN ANAltar ANAranTethyrAltar_2
IF ~~ THEN REPLY @764 EXTERN ANAltar ANAranTethyrAltar_2
IF ~~ THEN REPLY @765 EXTERN ANAltar ANAranTethyrAltar_2
IF ~~ THEN REPLY @762 GOTO ANAranTethyrAltar_End
END

IF ~~ BEGIN ANAranTethyrAltar_End
  SAY @766
IF ~~ THEN EXTERN ANAltar ANAranTethyrAltar_End1
END

IF ~~ BEGIN ANAranTethyrAltar_End2
  SAY @768
IF ~~ THEN EXTERN ANAltar ANAranTethyrAltar_End3
END

IF ~~ BEGIN ANAranTethyrAltar_End2Later
  SAY @791
IF ~~ THEN EXTERN ANAltar ANAranTethyrAltar_End3Later
END

IF ~~ BEGIN ANAranTethyrAltar_2_2_1
  SAY @771
IF ~~ THEN EXTERN ANAltar ANAranTethyrAltar_2_2_2
END

IF ~Global("ANAranTethyr","GLOBAL",100)~ BEGIN ANAranTethyrSlayer
  SAY @777
IF ~~ THEN DO ~SetGlobal("ANAranTethyr","GLOBAL",10)~ EXIT
END

IF ~~ BEGIN ANAranTethyrAltar_4_1
  SAY @789
IF ~~ THEN REPLY @790 GOTO ANAranTethyrAltar_End2Later
IF ~~ THEN DO ~SetGlobal("ANAranTethyr","GLOBAL",99)~ REPLY @793 GOTO ANAranTethyrAltar_4_1_Slayer
IF ~~ THEN DO ~SetGlobal("ANAranTethyr","GLOBAL",199)~ REPLY @794 GOTO ANAranTethyrAltar_4_1_Gorion
END

IF ~~ BEGIN ANAranTethyrAltar_4_1_Gorion
  SAY @826
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranTethyrAltar_4_1_Slayer
  SAY @827
IF ~~ THEN EXIT
END

IF ~Global("ANAranTethyr","GLOBAL",201)~ BEGIN ANAranTethyrGorion
  SAY @795
=@796  
IF ~~ THEN DO ~SetGlobal("ANAranTethyr","GLOBAL",202)~ EXTERN ANgori ANAranTethyrGorion1
END

IF ~~ BEGIN ANAranTethyrGorion3
  SAY @798
IF ~~ THEN EXTERN ANAltar ANAranTethyrGorion4
END

IF ~~ BEGIN ANAranTethyrGorion5
  SAY @800
IF ~~ THEN EXIT
END

END

BEGIN ANAltar

IF ~Global("ANAranTethyr","GLOBAL",4)~ BEGIN ANAranTethyrAltar1
  SAY @760
 =@828 
 =@829 
IF ~~ THEN DO ~SetGlobal("ANAranTethyr","GLOBAL",5)~ EXTERN PLAYER1 ANAranTethyrAltar1_1
END

IF ~~ BEGIN ANAranTethyrAltar_End1
  SAY @767
IF ~~ THEN EXTERN PLAYER1 ANAranTethyrAltar_End2
END

IF ~~ BEGIN ANAranTethyrAltar_End3
  SAY @769
IF ~~ THEN DO ~Kill(Player1)~ EXIT
END

IF ~~ BEGIN ANAranTethyrAltar_End3Later
  SAY @792
IF ~~ THEN DO ~Kill(Player1)~ EXIT
END

IF ~~ BEGIN ANAranTethyrAltar_2
  SAY @770
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANAranTethyrAltar_2_2_2
  SAY @772
IF ~~ THEN REPLY @773 GOTO ANAranTethyrAltar_3
IF ~~ THEN REPLY @774 GOTO ANAranTethyrAltar_3
IF ~~ THEN REPLY @775 GOTO ANAranTethyrAltar_3
IF ~~ THEN DO ~SetGlobal("ANAranTethyr","GLOBAL",99)~ REPLY @776 EXIT
IF ~~ THEN REPLY @766 GOTO ANAranTethyrAltar_End1
END

IF ~~ BEGIN ANAranTethyrAltar_3
  SAY @788
IF ~~ THEN DO ~SetGlobal("ANAranTethyr","GLOBAL",7)~ EXIT
END

IF ~Global("ANAranTethyr","GLOBAL",5)~ BEGIN ANAranTethyrAltar_2_2
  SAY @822
IF ~~ THEN DO ~SetGlobal("ANAranTethyr","GLOBAL",6)~ EXTERN PLAYER1 ANAranTethyrAltar_2_2_1
END

IF ~Global("ANAranTethyr","GLOBAL",7)~ BEGIN ANAranTethyrAltar_4
  SAY @823
IF ~~ THEN DO ~SetGlobal("ANAranTethyr","GLOBAL",8)~ EXTERN PLAYER1 ANAranTethyrAltar_4_1
END

IF ~Global("ANAranTethyr","GLOBAL",204)~ BEGIN ANAranTethyrGorion2
  SAY @825
IF ~~ THEN EXTERN PLAYER1 ANAranTethyrGorion3
END

IF ~~ BEGIN ANAranTethyrGorion4
  SAY @799
IF ~~ THEN DO ~SetGlobal("ANAranTethyr","GLOBAL",205) EscapeArea() ActionOverride("ANaltar2",EscapeArea()) ActionOverride("ANaltar3",EscapeArea()) ActionOverride("ANaltar4",EscapeArea()) ActionOverride("ANaltar5",EscapeArea())~ EXTERN PLAYER1 ANAranTethyrGorion5
END


BEGIN ANgori
IF ~~ BEGIN ANAranTethyrGorion1
  SAY @797
IF ~~ THEN REPLY @840 GOTO ANAranTethyrGorion2_1
IF ~~ THEN REPLY @841 GOTO ANAranTethyrGorion2_2
END

IF ~~ BEGIN ANAranTethyrGorion2_1
  SAY @842
IF ~~ THEN REPLY @844 GOTO ANAranTethyrGorion3_1
IF ~~ THEN REPLY @846 GOTO ANAranTethyrGorion3_2
END

IF ~~ BEGIN ANAranTethyrGorion2_2
  SAY @843
IF ~~ THEN REPLY @844 GOTO ANAranTethyrGorion3_1
IF ~~ THEN REPLY @846 GOTO ANAranTethyrGorion3_2
END

IF ~~ BEGIN ANAranTethyrGorion3_1
  SAY @845
IF ~~ THEN GOTO ANAranTethyrGorion4
END

IF ~~ BEGIN ANAranTethyrGorion3_2
  SAY @847
IF ~~ THEN GOTO ANAranTethyrGorion4
END

IF ~~ BEGIN ANAranTethyrGorion4
  SAY @848
IF ~~ THEN REPLY @849 GOTO ANAranTethyrGorion5_1
IF ~~ THEN REPLY @850 GOTO ANAranTethyrGorion5_2
IF ~~ THEN REPLY @851 GOTO ANAranTethyrGorion5_3
END

IF ~~ BEGIN ANAranTethyrGorion5_1
  SAY @852
IF ~~ THEN REPLY @853 GOTO ANAranTethyrGorionBack
END

IF ~~ BEGIN ANAranTethyrGorion5_2
  SAY @854
IF ~~ THEN GOTO ANAranTethyrGorionBack
END

IF ~~ BEGIN ANAranTethyrGorion5_3
  SAY @856
IF ~~ THEN GOTO ANAranTethyrGorionBack
END

IF ~~ BEGIN ANAranTethyrGorionBack
  SAY @855
IF ~~ THEN EXIT
END


CHAIN
IF ~Global("ANAranTethyr","GLOBAL",10) Global("TonySpawnTethyr","AN1204",1)~ THEN ANTony ANAranTethyrTony1Talk
@778 DO ~SetGlobal("TonySpawnTethyr","AN1204",2) SetGlobal("ANAranTethyr","GLOBAL",20)~
== PLAYER1 @779
== ANTony @780
=@781
=@782
== PLAYER1 @783
=@784
== ANTony @785
== PLAYER1 @786
=@787 DO ~ActionOverride("ANTony",EscapeArea())~
EXIT

CHAIN
IF ~Global("ANAranTethyr","GLOBAL",205) Global("TonySpawnTethyr1","AN1204",1)~ THEN ANTony ANAranTethyrTony2Talk
@801 DO ~SetGlobal("TonySpawnTethyr1","AN1204",2) SetGlobal("ANAranTethyr","GLOBAL",20)~
== PLAYER1 @802
== ANTony @803
=@804
=@805
== PLAYER1 @806
=@782
=@807
=@808
== ANTony @809
== PLAYER1 @810
=@787
== ANTony @811 DO ~ActionOverride("ANTony",EscapeArea())~
EXIT

CHAIN
IF ~Global("ANAranTethyr","GLOBAL",22) NumInPartyGT(1)~ THEN PLAYER1 ANAranTethyrFinishTalk1
@824 DO ~SetGlobal("ANAranTethyr","GLOBAL",23)~
= @812
%replies_player2%
%replies_player3%
%replies_player4%
%replies_player5%
%replies_player6%
EXTERN PLAYER1 ANAranTethyrFinishTalk2

CHAIN
IF ~Global("ANAranTethyr","GLOBAL",23) NumInPartyGT(1)~ THEN PLAYER1 ANAranTethyrFinishTalk2
@818 DO ~SetGlobal("ANAranTethyr","GLOBAL",24)~
= @819
=@820
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @858
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @858
== PLAYER1 IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @859
== PLAYER1 IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @859
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("ANaltarDead","GLOBAL",1)~ THEN @860
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("ANaltarDead","GLOBAL",1)~ THEN @861
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) !Global("ANaltarDead","GLOBAL",1) OR(2) !InParty("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @860
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) Global("ANaltarDead","GLOBAL",1) OR(2) !InParty("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @861
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @862
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @870
== PLAYER1 IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @871
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @863
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) OR(2) !InParty("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @863
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @864
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @869
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @873
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @872
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @865
== PLAYER1 IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @866
== IF_FILE_EXISTS 7XGarJ IF ~InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @886
== PLAYER1 IF ~InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @887
== IF_FILE_EXISTS 7XGarJ IF ~InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @888
== PLAYER1 IF ~InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @889
EXIT

CHAIN
IF ~Global("ANAranTethyr","GLOBAL",22) NumInPartyLT(2)~ THEN PLAYER1 ANAranTethyrFinishSoloTalk
@824 DO ~SetGlobal("ANAranTethyr","GLOBAL",24)~
EXIT

CHAIN
IF ~~ THEN PLAYER1 ANAranTethyrPlayer1Talk1_1
@839
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @830
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @831
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) OR(3) !InParty("Aerie") !InMyArea("Aerie") StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @832
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @833
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @834
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @835
== PLAYER1 IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @836
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @837
== JANJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @838
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @837
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @838
EXIT