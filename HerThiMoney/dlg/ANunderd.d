// Диалог с Эдвином в Подземье
APPEND ~EDWINJ~

IF ~Global("ANedwinUnderdark","GLOBAL",2)~ BEGIN ANEedUnderTalk1
  SAY @0 
  ++ @1 DO ~SetGlobal("ANedwinUnderdark","GLOBAL",3)~ + ANEedUnderTalk2 
  ++ @2 DO ~SetGlobal("ANedwinUnderdark","GLOBAL",3)~ + ANEedUnderTalk1end 
END

IF ~~ ANEedUnderTalk2
  SAY @3
  ++ @4 + ANEedUnderTalk2.1
  ++ @5 + ANEedUnderTalk2.2
  ++ @6 + ANEedUnderTalk2.3
  ++ @13 + ANEedUnderTalk2.5
  ++ @24 + ANEedUnderTalkEnd1
  ++ @15 + ANEedUnderTalkEnd3
END

IF ~~ ANEedUnderTalk1end
  SAY @23
IF ~~ THEN EXIT
END

IF ~~ ANEedUnderTalk2.1
  SAY @7 
  = @8
  + ~IsValidForPartyDialog("Viconia") Global("ANvicEdwinUnd1","LOCALS",0)~ + @26 EXTERN VICONIJ ANedwvic1
  ++ @5 + ANEedUnderTalk2.2
  ++ @6 + ANEedUnderTalk2.3
  ++ @13 + ANEedUnderTalk2.5
  ++ @14 + ANEedUnderTalkEnd2
  ++ @24 + ANEedUnderTalkEnd1
  ++ @15 + ANEedUnderTalkEnd3
END

IF ~~ ANEedUnderTalk2.1.1
  SAY @28 
  ++ @5 + ANEedUnderTalk2.2
  ++ @6 + ANEedUnderTalk2.3
  ++ @13 + ANEedUnderTalk2.5
  ++ @14 + ANEedUnderTalkEnd2
  ++ @24 + ANEedUnderTalkEnd1
  ++ @15 + ANEedUnderTalkEnd3
END


IF ~~ ANEedUnderTalk2.2
  SAY @9
  ++ @4 + ANEedUnderTalk2.1
  ++ @6 + ANEedUnderTalk2.3
  ++ @13 + ANEedUnderTalk2.5
  ++ @14 + ANEedUnderTalkEnd2
  ++ @24 + ANEedUnderTalkEnd1
  ++ @15 + ANEedUnderTalkEnd3
END

IF ~~ ANEedUnderTalk2.3
  SAY @10
  ++ @11 + ANEedUnderTalk2.4
  ++ @24 + ANEedUnderTalkEnd1
  ++ @15 + ANEedUnderTalkEnd3
END

IF ~~ ANEedUnderTalk2.4
  SAY @12
  ++ @4 + ANEedUnderTalk2.1
  ++ @5 + ANEedUnderTalk2.2
  ++ @13 + ANEedUnderTalk2.5
  ++ @14 + ANEedUnderTalkEnd2
  ++ @24 + ANEedUnderTalkEnd1
  ++ @15 + ANEedUnderTalkEnd3
END

IF ~~ ANEedUnderTalk2.5
  SAY @16
+ ~IsValidForPartyDialog("Minsc") Global("ANminscEdwinUnd1","LOCALS",0)~ + @17 EXTERN MINSCJ ANedwminsc1
++ @29 + ANEedUnderTalk2.5.1
END

IF ~~ ANEedUnderTalk2.5.1
  SAY @18
= @19
= @20
++ @14 + ANEedUnderTalkEnd2
++ @21 + ANEedUnderTalkEnd2
++ @4 + ANEedUnderTalk2.1
++ @5 + ANEedUnderTalk2.2
++ @6 + ANEedUnderTalk2.3
END

IF ~~ ANEedUnderTalkEnd1
  SAY @25
IF ~~ THEN EXIT
END

IF ~~ ANEedUnderTalkEnd2
  SAY @22
IF ~~ THEN EXIT
END

IF ~~ ANEedUnderTalkEnd3
  SAY @23
IF ~~ THEN EXIT
END

END

CHAIN
IF ~~ THEN VICONIJ ANedwvic1
  @27 DO ~SetGlobal("ANvicEdwinUnd1","LOCALS",3)~
EXTERN EDWINJ ANEedUnderTalk2.1.1

CHAIN
IF ~~ THEN MINSCJ ANedwminsc1
  @30 DO ~SetGlobal("ANvicEdwinUnd1","LOCALS",3)~
EXTERN EDWINJ ANEedUnderTalk2.5.1


// Смерть Адалон - реакции NPC

CHAIN  
IF ~Global("ANAdalonDeadTalk","AR2102",2)~ 
THEN PLAYER1 ANAdalonDeadTalkALL
@31 DO ~SetGlobal("ANAdalonDeadTalk","AR2102",3)~
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @32
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @33
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @34
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) OR(3) !InParty("Jaheira") !InMyArea("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @33
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("JaheiraRomanceActive","GLOBAL",2)~ THEN @35 DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @36
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @37
= @38
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @39
END
IF ~~ THEN EXIT

// Диалог с Адалон
INTERJECT_COPY_TRANS UDSILVER 25 ANudsilverviconia25
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !Dead("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @40
END

INTERJECT_COPY_TRANS UDSILVER 53 ANudsilveredwin53
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @44
END


CHAIN  
IF WEIGHT #-1 ~Global("AN_Adalon_attack","AR2102",1) InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ 
THEN MAZZYJ AN_AdalonAttackMazzyKeldorn
@41 DO ~SetGlobal("AN_Adalon_attack","AR2102",2)~
=@43 DO ~ChangeAIScript("",DEFAULT) LeaveParty() Enemy() ChangeEnemyAlly(Myself, EVILCUTOFF)~
== KELDORJ @42 DO ~ChangeAIScript("",DEFAULT) LeaveParty() Enemy() ChangeEnemyAlly(Myself, EVILCUTOFF)~
END
IF ~~ THEN EXIT

APPEND MAZZYJ
IF ~Global("AN_Adalon_attack","AR2102",1) OR(2)!InParty("Keldorn") Dead("Keldorn")~ THEN BEGIN AN_AdalonAttackMazzy 
  SAY @41 
  =@43
  IF ~~ THEN DO ~SetGlobal("AN_Adalon_attack","AR2102",2) ChangeAIScript("",DEFAULT) Enemy() LeaveParty() ChangeEnemyAlly(Myself, EVILCUTOFF)~ 
EXIT
END

END

APPEND KELDORJ

IF ~Global("AN_Adalon_attack","AR2102",1) OR(2)!InParty("Mazzy") Dead("Mazzy")~ THEN BEGIN AN_AdalonAttackKeldorn
  SAY @42 
  IF ~~ THEN DO ~SetGlobal("AN_Adalon_attack","AR2102",2) ChangeAIScript("",DEFAULT) Enemy() LeaveParty() ChangeEnemyAlly(Myself, EVILCUTOFF)~ 
EXIT
END

END

// Реакция Виконии на беженцев из ее Дома ДеВир в Андердарке

INTERJECT_COPY_TRANS UDDROW14 2 ANDevirViconia1
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @45
=@46
END

INTERJECT_COPY_TRANS UDDROW12 2 ANDevirViconia2
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @47
END

// Диалог с Эльханом
INTERJECT_COPY_TRANS C6ELHAN2 66 ANC6ELHAN2-66
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @48
END

// Бараг
INTERJECT_COPY_TRANS UDDROW08 12 ANUDDROW08-12
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @49
== UDDROW08 @50
END

// Солафейн
INTERJECT_COPY_TRANS UDSOLA01 3 ANanomenUDSOLA01-3
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @51
END

INTERJECT_COPY_TRANS UDSOLA01 4 ANanomenUDSOLA01-4
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @51
END

INTERJECT_COPY_TRANS UDSOLA01 5 ANanomenUDSOLA01-5
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @51
END

INTERJECT_COPY_TRANS3 UDSOLA01 33 ANkorganUDSOLA01-33
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @52
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @53
== MINSCJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @54
== UDSOLA01 IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @55
END

INTERJECT_COPY_TRANS UDSOLA01 125 ANanomenUDSOLA01-125
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @58
END

INTERJECT_COPY_TRANS UDSOLA01 121 ANanomenUDSOLA01-121
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @58
END

INTERJECT_COPY_TRANS3 UDSOLA01 138 ANanomenUDSOLA01-138
== IF_FILE_EXISTS RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @57
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @59
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @60
END


// Фэйр
INTERJECT_COPY_TRANS UDPHAE01 30 ANimoenUDPHAE01-30
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @56
END