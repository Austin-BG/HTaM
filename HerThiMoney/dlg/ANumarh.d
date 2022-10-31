// Смерть Теневого дракона - реакции NPC

CHAIN  
IF ~Global("AN_Thaxll_DeadTalk","AR1402",2)~ 
THEN PLAYER1 ANThaxllDeadTalkALL
@0 DO ~SetGlobal("AN_Thaxll_DeadTalk","AR1402",3)~
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !Dead("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @1
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !Dead("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @2
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !Dead("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @3
== JANJ IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @4
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @5
END
IF ~~ THEN EXIT


// Курицы 

APPEND ~GEMFAR02~
IF ~~ BEGIN ANchiken2talkOut
  SAY @13 
  ++ @19 + 6 
  ++ @20 + 5   
  ++ @18 EXIT 
END
END

//ANchik1

BEGIN %GEMCH01_DLG%

IF ~OR(2) Global("KnowsAboutGem","GLOBAL",0) Global("KnowsAboutGem","GLOBAL",2) RandomNum(2,1)~ THEN BEGIN ANchiken1talk1 
  SAY @6 
IF ~~ THEN EXIT
END

IF ~OR(2) Global("KnowsAboutGem","GLOBAL",0) Global("KnowsAboutGem","GLOBAL",2) RandomNum(2,2)~ THEN BEGIN ANchiken1talk2
  SAY @7 
IF ~~ THEN EXIT
END

IF ~Global("KnowsAboutGem","GLOBAL",1)~ THEN BEGIN ANchiken1talkKnowGem
  SAY @7 
  + ~RandomNum(3,1)~ + @9 + ANchiken1talk3.1 
  + ~RandomNum(3,2)~ + @9 + ANchiken1talk3.2 
  + ~RandomNum(3,3)~ + @9 + ANchiken1talk3.3 
  ++ @82 + ANchiken1talk3 
  ++ @18 EXIT 
END


IF ~~ BEGIN ANchiken1talk3
  SAY @8 
  + ~OR(2) Class(Player1,RANGER_ALL) Class(Player1,DRUID_ALL) RandomNum(3,1)~ + @68 + ANchiken1talk3.4 
  + ~OR(2) Class(Player1,RANGER_ALL) Class(Player1,DRUID_ALL) RandomNum(3,2)~ + @68 + ANchiken1talk3.5 
  + ~OR(2) Class(Player1,RANGER_ALL) Class(Player1,DRUID_ALL) RandomNum(3,3)~ + @68 + ANchiken1talk3.6 
  ++ @18 EXIT 
END

IF ~~ THEN BEGIN ANchiken1talk3.1 
  SAY @10 
IF ~~ THEN REPLY @82 + ANchiken1talk3   
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANchiken1talk3.2 
  SAY @11 
IF ~~ THEN REPLY @82 + ANchiken1talk3     
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANchiken1talk3.3 
  SAY @12
IF ~~ THEN REPLY @82 + ANchiken1talk3     
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANchiken1talk3.4 
  SAY @69 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANchiken1talk3.5 
  SAY @70 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANchiken1talk3.6 
  SAY @71
IF ~~ THEN EXIT
END

//ANchik2
BEGIN %GEMCH02_DLG%

IF ~OR(2) Global("KnowsAboutGem","GLOBAL",0) Global("KnowsAboutGem","GLOBAL",2) RandomNum(2,1)~ THEN BEGIN ANchiken2talk1 
  SAY @6 
IF ~~ THEN EXIT
END

IF ~OR(2) Global("KnowsAboutGem","GLOBAL",0) Global("KnowsAboutGem","GLOBAL",2) RandomNum(2,2)~ THEN BEGIN ANchiken2talk2
  SAY @7 
IF ~~ THEN EXIT
END

IF ~Global("KnowsAboutGem","GLOBAL",1) !Global("ANChikenrangerdruid","AR1100",3) !Global("ANChikenrangerdruid","AR1100",5)~ BEGIN ANchiken2talk3
  SAY @7 
  + ~Global("ANChikenKnow","AR1100",1) !StateCheck("gemch02",STATE_CHARMED)~ + @73 + ANchiken2talk3.3.1No
  + ~Global("ANChikenKnow","AR1100",1) StateCheck("gemch02",STATE_CHARMED)~ + @73 + ANchiken2talk3.3.1Yes1
  + ~RandomNum(3,1)~ + @9 + ANchiken2talk3_1  
  + ~RandomNum(3,2)~ + @9 + ANchiken2talk3_2
  + ~RandomNum(3,3)~ + @9 + ANchiken2talk3_3
  ++ @82 + ANchiken2talk3View
  ++ @18 EXIT 
 END
 
 IF ~~ THEN BEGIN ANchiken2talk3_1 
  SAY @10 
IF ~~ THEN REPLY @82 + ANchiken2talk3View   
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANchiken2talk3_2 
  SAY @11 
IF ~~ THEN REPLY @82 + ANchiken2talk3View    
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANchiken2talk3_3 
  SAY @12
IF ~~ THEN REPLY @82 + ANchiken2talk3View    
IF ~~ THEN EXIT
END
 
IF ~~ BEGIN ANchiken2talk3View
  SAY @83 
  + ~CheckStatGT(Player1,16,DEX)~ + @16 + ANchiken2talk3.1 
  + ~CheckStatGT(Player1,16,WIS)~ + @17 + ANchiken2talk3.2 
  IF ~OR(2) Class(Player1,RANGER_ALL) Class(Player1,DRUID_ALL)~ THEN DO ~SetGlobal("ANChikenKnow","AR1100",1)~ REPLY @68 GOTO ANchiken2talk3.3 
  + ~InParty("Valygar") InMyArea("Valygar") !Dead("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ + @21 EXTERN VALYGARJ ANchiken2valygar
  + ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @22 EXTERN JAHEIRAJ ANchiken2jaheira
  + ~InParty("Cernd") InMyArea("Cernd") !Dead("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ + @23 EXTERN CERNDJ ANchiken2cernd
  + ~InParty("Minsc") InMyArea("Minsc") !Dead("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ + @30 EXTERN MINSCJ ANchiken2minsc
  ++ @18 EXIT 
 END 
 
  
IF ~~ THEN BEGIN ANchiken2talk3.1
  SAY @15
IF ~!Dead("GEMFAR02")~ THEN EXTERN GEMFAR02 ANchiken2talkOut
IF ~Dead("GEMFAR02")~ THEN EXIT
END

IF ~~ THEN BEGIN ANchiken2talk3.2
  SAY @14
IF ~!Dead("GEMFAR02")~ THEN EXTERN GEMFAR02 ANchiken2talkOut
IF ~Dead("GEMFAR02")~ THEN EXIT
END

IF ~~ THEN BEGIN ANchiken2talk3.3
  SAY @72
IF ~!StateCheck("gemch02",STATE_CHARMED)~ THEN REPLY @73 GOTO ANchiken2talk3.3.1No
IF ~StateCheck("gemch02",STATE_CHARMED)~ THEN REPLY @73 GOTO ANchiken2talk3.3.1Yes1
END

IF ~~ THEN BEGIN ANchiken2talk3.3.1No
  SAY @74
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANchiken2talk3.3.1Yes1
  SAY @81
IF ~~ THEN DO ~SetGlobal("ANChikenrangerdruid","AR1100",2)~ EXIT
END

IF ~Global("ANChikenrangerdruid","AR1100",3)~ THEN BEGIN ANchiken2talk3.3.1Yes2
  SAY @75
IF ~Class(Player1,DRUID_ALL)~ THEN REPLY @76 GOTO ANchiken2talk3.3.1_EGG
IF ~Class(Player1,RANGER_ALL)~ THEN REPLY @79 GOTO ANchiken2talk3.3.1_DELETE
END

IF ~~ THEN BEGIN ANchiken2talk3.3.1_EGG
  SAY @77
IF ~~ THEN DO ~SetGlobal("ANChikenrangerdruid","AR1100",4)~ EXIT
END

IF ~~ THEN BEGIN ANchiken2talk3.3.1_DELETE
  SAY @80
IF ~~ THEN DO ~SetGlobal("ANChikenrangerdruid","AR1100",4)~ EXIT
END

IF ~Global("ANChikenrangerdruid","AR1100",5)~ THEN BEGIN ANchiken2talk3.3.1_END
  SAY @78
IF ~~ THEN DO ~SetGlobal("ANChikenrangerdruid","AR1100",6) SetGlobal("KnowsAboutGem","GLOBAL",2) EraseJournalEntry(9918) GiveItemCreate("MISC6Z",Player1,0,0,0) ActionOverride("gemfar01",EscapeArea()) ActionOverride("gemfar02",EscapeArea()) ActionOverride("gemch02",EscapeArea())~ SOLVED_JOURNAL #19286 EXIT
END

APPEND VALYGARJ
IF ~~ THEN BEGIN ANchiken2valygar
  SAY @24
IF ~~ THEN EXIT
END
END

APPEND JAHEIRAJ
IF ~~ THEN BEGIN ANchiken2jaheira
  SAY @25
IF ~~ THEN EXIT
END
END 

APPEND CERNDJ
IF ~~ THEN BEGIN ANchiken2cernd
  SAY @26
  ++ @27 + ANchiken2cernd1 
  ++ @29 EXIT 
END

IF ~~ THEN BEGIN ANchiken2cernd1
  SAY @28 
IF ~~ THEN DO ~SetGlobal("KnowsAboutGem","GLOBAL",2) EraseJournalEntry(9918) GiveItemCreate("MISC6Z",Player1,0,0,0) ActionOverride("gemfar01",EscapeArea()) ActionOverride("gemfar02",EscapeArea()) ActionOverride("gemch02",EscapeArea())~ SOLVED_JOURNAL #19286 EXIT 
END

END

APPEND MINSCJ
IF ~~ THEN BEGIN ANchiken2minsc
  SAY @31
  ++ @32 + ANchiken2minsc1 
  ++ @33 EXIT 
END

IF ~~ THEN BEGIN ANchiken2minsc1
  SAY @34
 = @35 
 = @36 
IF ~~ THEN DO ~SetGlobal("KnowsAboutGem","GLOBAL",2) EraseJournalEntry(9918) GiveItemCreate("MISC6Z",Player1,0,0,0) ActionOverride("gemfar01",EscapeArea()) ActionOverride("gemfar02",EscapeArea()) ActionOverride("gemch02",EscapeArea())~ SOLVED_JOURNAL #19286  EXIT 
END

END


// Смерть Леллина

CHAIN  
IF ~Global("ANTempleSpeak_1","AR1404",1) !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN PLAYER1 ANTempleSpeak1
@37 DO ~SetGlobal("ANTempleSpeak_1","AR1404",2)~
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @38
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @39
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3800
%dlg_string24%
EXIT

CHAIN  
IF ~Global("ANTempleSpeak_2","AR1404",1) !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN PLAYER1 ANTempleSpeak2
@41 DO ~SetGlobal("ANTempleSpeak_2","AR1404",2)~
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @42
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @43
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @44
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @45
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @46
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @47
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @53
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @48
= @49
END
IF ~OR(2) !InParty("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN REPLY @51 EXIT
IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN REPLY @50 EXTERN IMOEN2J ANTempleSpeak2Imoen

CHAIN IMOEN2J ANTempleSpeak2Imoen
@52
EXIT

// Разговор с министром Ллойдом 

INTERJECT_COPY_TRANS3 UHMAY01 11 ANumarlloyd11
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @54
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @55
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @56
%dlg_string25%
== IF_FILE_EXISTS NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID) OR(3) !InParty("Imoen2") !InMyArea("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID) InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @58
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @58
END

INTERJECT_COPY_TRANS3 UHMAY01 16 ANumarlloyd16
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @59
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @60
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) OR(3) !InParty("Jaheira") !InMyArea("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @61
END

// У хижины Валигара
INTERJECT_COPY_TRANS3 VALRAN01 2 ANvalran2
== ANOMENJ IF ~Global("HiredByCowled","GLOBAL",1) InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @64
== KELDORJ IF ~Global("HiredByCowled","GLOBAL",1) InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @65
== VALRAN01 @66
END

INTERJECT_COPY_TRANS3 VALRAN01 1 ANvalran1
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @62
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !InParty("Imoen2")~ THEN @62
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @63
== VALRAN01 @67
END

INTERJECT_COPY_TRANS3 VALRAN01 4 ANvalran4
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @62
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !InParty("Imoen2")~ THEN @62
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @63
== VALRAN01 @67
END