// Ренфильд 
INTERJECT_COPY_TRANS3 RENFELD 6 ANallrenfeld
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @0
== RENFELD IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @1
== JANJ IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @2
=@3
=@4
=@5
=@6
== RENFELD IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @7
END

// Диалог с Эдвином о подземелье
APPEND ~EDWINJ~

IF ~Global("ANEdwinDungeonTalk","GLOBAL",2)~ BEGIN ANEdwinDungeon
  SAY @8
  = @9
  + ~OR(2) Alignment(Player1,MASK_GOOD) Alignment(Player1,NEUTRAL)~ + @10 + ANED_1.1
  + ~Alignment(Player1,MASK_EVIL)~ + @15 + ANED_1.2
  ++ @11 + ANED_2
  ++ @12 + ANED_3
END

IF ~~ ANED_1.1
  SAY @14
  ++ @11 + ANED_2
  ++ @12 + ANED_3
END

IF ~~ ANED_1.2
  SAY @16
  ++ @11 + ANED_2
  ++ @12 + ANED_3
END

IF ~~ ANED_2
  SAY @17
  = @18
  ++ @19 + ANED_4
  ++ @12 + ANED_3
END

IF ~~ ANED_3
  SAY @13
  IF ~~ DO ~SetGlobal("ANEdwinDungeonTalk","GLOBAL",3)~ EXIT
END

IF ~~ ANED_4
  SAY @20
= @2000  
  ++ @21 + ANED_5
  ++ @22 + ANED_3
END

IF ~~ ANED_5
  SAY @23
  IF ~~ DO ~SetGlobal("ANEdwinDungeonTalk","GLOBAL",3)~ EXIT
END
END

// Первая встреча с Валигаром
INTERJECT_COPY_TRANS3 VALYGAR 43 ANallvalyg43
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @24
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @25
%dlg_string3%
END

INTERJECT_COPY_TRANS VALYGAR 44 ANvalyganomen
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !Dead("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @27
== VALYGAR @171
END

// Реплики Сернда при квесте Келдорна
INTERJECT_COPY_TRANS KELDORJ 23 ANkeldornCernd1
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !Dead("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) !Global("TalkedToCerndNanny","GLOBAL",0)~ THEN @35
END

INTERJECT_COPY_TRANS KELDORP 11 ANkeldornCernd2
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !Dead("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @45
== KELDORP IF ~InParty("Cernd") InMyArea("Cernd") !Dead("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @46
END

INTERJECT_COPY_TRANS KELDORJ 40 ANkeldornCernd3
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !Dead("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @47
== KELDORJ IF ~InParty("Cernd") InMyArea("Cernd") !Dead("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @48
END

INTERJECT_COPY_TRANS MARIA 11 ANkeldornCernd4
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !Dead("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) !Global("TalkedToCerndNanny","GLOBAL",0)~ THEN @47
END

INTERJECT_COPY_TRANS KELDORJ 46 ANkeldornCernd5
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !Dead("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @49
END

INTERJECT_COPY_TRANS KELDORJ 51 ANkeldornCernd6
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !Dead("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) !Global("TalkedToCerndNanny","GLOBAL",0)~ THEN @50
== KELDORJ IF ~InParty("Cernd") InMyArea("Cernd") !Dead("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) !Global("TalkedToCerndNanny","GLOBAL",0)~ THEN @51
== MARIA IF ~InParty("Cernd") InMyArea("Cernd") !Dead("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) !Global("TalkedToCerndNanny","GLOBAL",0)~ THEN @52
END

INTERJECT_COPY_TRANS KELDORJ 49 ANkeldornCernd6
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !Dead("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) !Global("TalkedToCerndNanny","GLOBAL",0)~ THEN @50
== KELDORJ IF ~InParty("Cernd") InMyArea("Cernd") !Dead("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) !Global("TalkedToCerndNanny","GLOBAL",0)~ THEN @51
END


// Реплики Келдорна при квесте Сернда
INTERJECT_COPY_TRANS CEDERIL 5 ANCerndKeldorn1
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) !Global("LadyMaria","GLOBAL",4)~ THEN @36
== CEDERIL IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) !Global("LadyMaria","GLOBAL",4)~ THEN @37
END

INTERJECT_COPY_TRANS3 CERNDP 10 ANCerndKeldorn2
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) Global("LadyMaria","GLOBAL",4)~ THEN @38
== CERNDP IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) Global("LadyMaria","GLOBAL",4)~ THEN @39
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) !Global("LadyMaria","GLOBAL",4)~ THEN @42
== CERNDP IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) !Global("LadyMaria","GLOBAL",4)~ THEN @43
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) Global("LadyMaria","GLOBAL",5)~ THEN @44
END

INTERJECT_COPY_TRANS CEDERIL 4 ANCerndKeldorn3
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) Global("LadyMaria","GLOBAL",4)~ THEN @40
== CEDERIL IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) Global("LadyMaria","GLOBAL",4)~ THEN @41
END

// Кангаксс
INTERJECT_COPY_TRANS3 HLSKULL 5 ANkangaxTalk5
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !Dead("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @61
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @62
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !Dead("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @63
== IF_FILE_EXISTS WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !Dead("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @64
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !Dead("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @65
END

CHAIN  
IF ~Global("AN_Kangaxx_DeadTalk","AR0331",2)~ 
THEN PLAYER1 ANThaxllDeadTalkALL
@66 DO ~SetGlobal("AN_Kangaxx_DeadTalk","AR0331",3)~
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !Dead("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @67
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @68
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",MALE)~ THEN @69
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Gender("Edwin",FEMALE)~ THEN @70
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @71
== IF_FILE_EXISTS NEERAJ IF ~InParty("Neera") InMyArea("Neera") !Dead("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @72
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !Dead("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @73
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @74
EXIT

// Лавка Приключений
INTERJECT_COPY_TRANS3 SENTINEL 0 ANsentinelTalk0
== JANJ IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @101
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !Dead("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) !InParty("Jan")~ THEN @101
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) !InParty("Jan") !InParty("Cernd")~ THEN @101
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) !InParty("Jan") !InParty("Cernd") !InParty("Jaheira")~ THEN @101
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !Dead("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @102
== JANJ IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @103
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !Dead("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID) InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @104
== JANJ IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) InParty("Yoshimo") InMyArea("Yoshimo") !Dead("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @105
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("Yoshimo") InMyArea("Yoshimo") !Dead("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @106
END

// В диалоге с Келлором после похищения Налии Изайей
INTERJECT_COPY_TRANS3 KHELLOR 10 ANkhellorTalkAll29
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @107
== IF_FILE_EXISTS DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @108
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) OR(2) !InParty("Dorn") StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @108
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !Dead("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) !InParty("Dorn") !InParty("Edwin")~ THEN @108
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !Dead("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) OR(4) InParty("Edwin") InParty("Dorn") InParty("Viconia") InParty("Korgan")~ THEN @109
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Aerie") InMyArea("Aerie") !Dead("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @110
== IF_FILE_EXISTS DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !Dead("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID) InParty("Aerie") InMyArea("Aerie") !Dead("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @111
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) !InParty("Dorn") InParty("Aerie") InMyArea("Aerie") !Dead("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @112
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !Dead("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) !InParty("Dorn") !InParty("Edwin") InParty("Aerie") InMyArea("Aerie") !Dead("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @111
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !Dead("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @113
END

// Диалог про книгу Казы

INTERJECT KORGANJ 38 ANkorgankazabook1
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @114
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @115
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @116
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @117
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @118
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) OR(4) !InParty("Keldorn") !InMyArea("Keldorn") Dead("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @132
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @119
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(2) InParty("Edwin") InParty("Korgan")~ THEN @120
END
IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("ANkazabookRead","GLOBAL",1) SetGlobalTimer("AN_KazaBookEdwin","GLOBAL",SEVEN_DAYS)~ REPLY @121 EXTERN EDWINJ ANkorgankazabook1_1
IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("ANkazabookDestroy","GLOBAL",1) AddJournalEntry(@1025,QUEST)~ REPLY @122 EXTERN KELDORJ ANkorgankazabook1_2
IF ~~ THEN REPLY @130 EXTERN KORGANJ ANkorgankazabookReturn

INTERJECT KORGANJ 38 ANkorgankazabook2
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) OR(4) !InParty("Keldorn") !InMyArea("Keldorn") Dead("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @132
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) OR(4) !InParty("Keldorn") !InMyArea("Keldorn") Dead("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @138
END
IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("ANkazabookRead","GLOBAL",1) SetGlobalTimer("AN_KazaBookEdwin","GLOBAL",SEVEN_DAYS)~ REPLY @121 EXTERN EDWINJ ANkorgankazabook1_1
IF ~~ THEN REPLY @130 EXTERN KORGANJ ANkorgankazabookReturn

APPEND EDWINJ

IF ~~ THEN BEGIN ANkorgankazabook1_1 
  SAY @123
IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN EXTERN KELDORJ ANkorgankazabook1_1_1
IF ~~ THEN REPLY @131 EXTERN KORGANJ ANkorgankazabookReturn
END

IF ~~ THEN BEGIN ANkorgankazabook1_2_1 
  SAY @126
IF ~~ THEN EXTERN KELDORJ ANkorgankazabook1_2_2
END

IF ~~ THEN BEGIN ANkorgankazabook1_2_3 
  SAY @128
IF ~~ THEN EXTERN KORGANJ ANkorgankazabookReturn
END

IF ~Global("AN_KazaBook_Edwin_Talk","GLOBAL",1)~ THEN BEGIN ANkazabookEdwinFinal 
  SAY @133
IF ~~ THEN DO ~SetGlobal("ANkazabookRead","GLOBAL",2) SetGlobal("AN_KazaBook_Edwin_Talk","GLOBAL",2) GiveItemCreate("ANkazab","Edwin",1,0,0) AddexperienceParty(500)~ REPLY @139 + ANkazabookEdwinFinal1 
IF ~~ THEN DO ~SetGlobal("ANkazabookRead","GLOBAL",2) SetGlobal("AN_KazaBook_Edwin_Talk","GLOBAL",2) GiveItemCreate("ANkazas",Player1,1,0,0) AddexperienceParty(500)~ REPLY @140 + ANkazabookEdwinFinal2 
END

IF ~~ THEN BEGIN ANkazabookEdwinFinal1 
  SAY @143
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANkazabookEdwinFinal2
  SAY @134
IF ~~ THEN REPLY @141 + ANkazabookEdwinFinal2_1
END

IF ~~ THEN BEGIN ANkazabookEdwinFinal2_1
  SAY @142
IF ~~ THEN EXIT
END

END

APPEND KELDORJ

IF ~~ THEN BEGIN ANkorgankazabook1_2
  SAY @125
IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN EXTERN EDWINJ ANkorgankazabook1_2_1
IF ~OR(4) !InParty("Edwin") !InMyArea("Edwin") Dead("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN EXTERN KORGANJ ANkorgankazabookReturn
END

IF ~~ THEN BEGIN ANkorgankazabook1_1_1
  SAY @124
IF ~~ THEN EXTERN KORGANJ ANkorgankazabookReturn
END

IF ~~ THEN BEGIN ANkorgankazabook1_2_2
  SAY @127
IF ~~ THEN EXTERN EDWINJ ANkorgankazabook1_2_3
END

END

APPEND KORGANJ
IF ~~ ANkorgankazabookReturn
SAY @129
COPY_TRANS KORGANJ 38
END
END

CHAIN
IF WEIGHT #-1 ~
      InParty("Keldorn")
	  InMyArea("Keldorn")
	  !StateCheck("Keldorn",CD_STATE_NOTVALID)
	  PartyHasItem("BOOK89")
      Global("ANkazabookDestroy","GLOBAL",1)
~ THEN HPRELATE ANKazaBookOrdenKeldorn1
@137
== KELDORJ @135
== HPRELATE @136 DO ~TakePartyItem("BOOK89") SetGlobal("ANkazabookDestroy","GLOBAL",2) AddJournalEntry(@1026,QUEST_DONE) EraseJournalEntry(@1025) AddexperienceParty(900) ReputationInc(1)~
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @144
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @145
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !Dead("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) !InParty("Jaheira")~ THEN @145
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !Dead("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) !InParty("Jaheira") !InParty("Valygar")~ THEN @145
EXIT

EXTEND_BOTTOM HPRELATE 24 
IF ~Global("ANkazabookDestroy","GLOBAL",1) PartyHasItem("BOOK89") Global("ANkazabookOrden","LOCALS",0)~ THEN DO ~SetGlobal("ANkazabookOrden","LOCALS",1)~ REPLY @135 + ANKazaBookOrden
END

CHAIN
IF WEIGHT #-1 ~
Global("ANkazabookDestroy","GLOBAL",1) PartyHasItem("BOOK89") Global("ANkazabookOrden","LOCALS",1) 
OR(3)InParty("Keldorn") InMyArea("Keldorn")!StateCheck("Keldorn",CD_STATE_NOTVALID)
~ THEN HPRELATE ANKazaBookOrden
@136 DO ~TakePartyItem("BOOK89") SetGlobal("ANkazabookDestroy","GLOBAL",2) AddJournalEntry(@1026,QUEST_DONE) EraseJournalEntry(@1025) AddexperienceParty(900) ReputationInc(1)~
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @144
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @145
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !Dead("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) !InParty("Jaheira")~ THEN @145
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !Dead("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) !InParty("Jaheira") !InParty("Valygar")~ THEN @145
EXIT


// Бантеры при дожде
APPEND MINSCJ

IF WEIGHT #-70 ~Global("ANMyrainMinsc","GLOBAL",2)~ THEN BEGIN minscrain1
SAY @146 
IF ~OR(2)!InParty("Korgan")StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("ANMyrainMinsc","GLOBAL",3)~ EXIT
IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("ANMyrainMinsc","GLOBAL",3)~ EXTERN ~KORGANJ~ minsckorganrain1 
IF ~!InParty("Korgan")InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("ANMyrainMinsc","GLOBAL",3)~ EXTERN ~JAHEIRAJ~ minscjaheirarain 
END

IF ~~ THEN BEGIN minsckorganrain2 
SAY @148
IF ~OR(2)!InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN EXIT
IF ~InParty("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN EXTERN ~JAHEIRAJ~ minsckorganjaheirarain3 
END

END

APPEND KORGANJ
IF ~~ THEN BEGIN minsckorganrain1
  SAY @147
IF ~~ THEN EXTERN ~MINSCJ~ minsckorganrain2 
END
END

APPEND JAHEIRAJ
IF ~~ THEN BEGIN minsckorganjaheirarain3 
SAY @149
= @150
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN minscjaheirarain 
SAY @150
IF ~~ THEN EXIT
END

IF WEIGHT #-50 ~Global("ANMyrainJaheira","GLOBAL",2)~ THEN BEGIN jaheirarain
SAY @150
IF ~~ THEN DO ~SetGlobal("ANMyrainJaheira","GLOBAL",3)~ EXIT
END
END

APPEND AERIEJ

IF ~AreaType(FOREST) Race(Player1,ELF) !Global("AerieRomanceActive","GLOBAL",2) Global("ANAeriePlayer1ElfTalk","GLOBAL",1)~ THEN BEGIN ANAeriePlayer1Elf
SAY @151 
IF ~~ THEN DO ~SetGlobal("ANAeriePlayer1ElfTalk","GLOBAL",2)~ REPLY @152 GOTO ANAeriePlayer1Elf_Next
IF ~~ THEN DO ~SetGlobal("ANAeriePlayer1ElfTalk","GLOBAL",2)~ REPLY @160 GOTO ANAeriePlayer1Elf_Exit
END

IF ~~ THEN BEGIN ANAeriePlayer1Elf_Exit
SAY @161 
IF ~~ THEN EXIT
END

END

CHAIN
IF ~AreaType(FOREST) Race(Player1,ELF) !Global("AerieRomanceActive","GLOBAL",2) Global("ANAeriePlayer1ElfTalk","GLOBAL",2)~ THEN AERIEJ ANAeriePlayer1Elf_Next
@153 DO ~SetGlobal("ANAeriePlayer1ElfTalk","GLOBAL",3)~
END
IF ~~ THEN REPLY @154 EXTERN AERIEJ ANAeriePlayer1Elf_Next1

CHAIN AERIEJ ANAeriePlayer1Elf_Next1
@155
END
IF ~~ THEN REPLY @156 EXTERN AERIEJ ANAeriePlayer1Elf_Next2
IF ~~ THEN REPLY @169 EXTERN AERIEJ ANAeriePlayer1Elf_Next2

CHAIN AERIEJ ANAeriePlayer1Elf_Next2
@157
END
IF ~~ THEN REPLY @158 EXTERN AERIEJ ANAeriePlayer1Elf_Next3
IF ~~ THEN REPLY @170 EXTERN AERIEJ ANAeriePlayer1Elf_Next3

CHAIN AERIEJ ANAeriePlayer1Elf_Next3
@159
EXIT

// Диалог с Эльханом
INTERJECT_COPY_TRANS SUELHAN 20 ANelhanEdwin20
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @48
END

// Эдвин (репутация)
APPEND EDWINJ
IF ~ReputationGT(Player1,17) Global("ANEdwinGoodRep","LOCALS",0)~ THEN BEGIN ANEdwinGoodRepTalk
SAY @162
=@163 
IF ~~ THEN DO ~SetGlobal("ANEdwinGoodRep","LOCALS",1)~ REPLY @164 GOTO ANEdwinGoodRepTalk1
IF ~~ THEN DO ~SetGlobal("ANEdwinGoodRep","LOCALS",1)~ REPLY @165 GOTO ANEdwinGoodRepTalk2
IF ~~ THEN DO ~SetGlobal("ANEdwinGoodRep","LOCALS",1)~ REPLY @166 GOTO ANEdwinGoodRepTalk1
END

IF ~~ THEN BEGIN ANEdwinGoodRepTalk1
SAY @167
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANEdwinGoodRepTalk2
SAY @168
IF ~~ THEN EXIT
END

END