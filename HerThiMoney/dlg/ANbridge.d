CHAIN
IF WEIGHT #-9 
~InParty("Anomen")Global("ANanomengirl","GLOBAL",0) !StateCheck("Anomen",CD_STATE_NOTVALID)~ 
THEN MURDGIRL AnoMURDGIRL1
@0
DO ~SetGlobal("ANanomengirl","GLOBAL",1)~
== ANOMENJ @1
== MURDGIRL @2
== ANOMENJ @3
== IF_FILE_EXISTS NEERAJ IF ~InParty("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @4
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) OR (2) !InParty("Neera") StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @4
== MURDGIRL IF ~InParty("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @5
== MURDGIRL IF ~InParty("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @6
== IF_FILE_EXISTS NEERAJ IF ~InParty("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @7
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) OR (2) !InParty("Neera") StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @7
== ANOMENJ IF ~InParty("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @8
== ANOMENJ IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) OR (2) !InParty("Neera") StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @9
== ANOMENJ @10
== MURDGIRL @11
== ANOMENJ @12
= @13
EXIT

BEGIN ANURGRL

IF ~RandomNum(2,1)~ THEN BEGIN ANURGRLtalk1 
  SAY @53
IF ~~ THEN EXIT
END

IF ~RandomNum(2,2)~ THEN BEGIN ANURGRLtalk2
  SAY @54 
IF ~~ THEN EXIT
END


BEGIN ANandy

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 
  SAY @14
  IF ~PartyGoldGT(1)~ THEN REPLY @15 DO ~TakePartyGold(2)~ GOTO ANandy1
  IF ~~ THEN REPLY @43 GOTO ANandy2
  IF ~~ THEN REPLY @39 GOTO ANandy3
END

IF ~~ THEN BEGIN ANandy4
  SAY @32
IF ~~ THEN DO ~SetGlobal("ANandyname","LOCALS",1) SetGlobal("ANandyStory","LOCALS",1) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @38 GOTO ANandy5
IF ~~ THEN REPLY @48 EXIT
END

IF ~~ THEN BEGIN ANandy6
  SAY @42
IF ~~ THEN REPLY @33 EXIT
END

IF ~~ THEN BEGIN ANandy6_1
  SAY @52
IF ~~ THEN REPLY @33 EXIT
END

IF ~NumTimesTalkedToGT(0) Global("ANandyStory","LOCALS",0)~ THEN BEGIN ANandyNo
  SAY @49
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANandy7
  SAY @32
IF ~~ THEN REPLY @48 EXIT
END

CHAIN 
IF ~~ THEN ANandy ANandy1
@42
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @47 
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !Dead("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @45
END
IF ~~ THEN REPLY @40 GOTO ANandy4
IF ~~ THEN DO ~SetGlobal("ANandyStory","LOCALS",1) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @38 GOTO ANandy5
IF ~~ THEN REPLY @48 EXIT

CHAIN 
IF ~~ THEN ANandy ANandy2
@44
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) Global("ANnaliaandytalk","LOCALS",0)~ THEN @46 DO ~SetGlobal("ANnaliaandytalk","LOCALS",1)~
END
IF ~~ THEN REPLY @40 GOTO ANandy4
IF ~~ THEN DO ~SetGlobal("ANandyStory","LOCALS",1) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @38 GOTO ANandy5
IF ~~ THEN REPLY @48 EXIT

CHAIN 
IF ~~ THEN ANandy ANandy3
@44
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) Global("ANnaliaandytalk","LOCALS",0)~ THEN @46 DO ~SetGlobal("ANnaliaandytalk","LOCALS",1)~
END
IF ~~ THEN EXIT


CHAIN
IF ~NumTimesTalkedTo(0) Global("ANandyStory","LOCALS",1)~ THEN ANandy ANandy5
@16 
=@50
=@51
=@17
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @18
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @18
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(4) !InParty("Valygar") !InMyArea("Valygar") Dead("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @18
== PLAYER1 IF ~OR(3) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(4) !InParty("Valygar") !InMyArea("Valygar") Dead("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @18
== ANandy @19
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @20
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @20
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @20
== PLAYER1 IF ~OR(3) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @20
== ANandy @21
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @22
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) OR(3) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @22
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @22
== PLAYER1 IF ~OR(3) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @22
== ANandy @23
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @24
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @24
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @24
== PLAYER1 IF ~OR(3) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @24
== ANandy @25
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @26
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @26
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @26
== PLAYER1 IF ~OR(3) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @26
== ANandy @27
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @28
== ANandy @29
=@30 DO ~SetGlobal("ANandyBeggar","GLOBAL",1)~
END
IF ~Global("ANandyname","LOCALS",0)~ THEN REPLY @31 GOTO ANandy7
IF ~Global("ANandyname","LOCALS",1)~ THEN REPLY @41 GOTO ANandy6_1
IF ~~ THEN REPLY @48 EXIT

CHAIN
IF ~NumTimesTalkedToGT(0) Global("ANandyStory","LOCALS",1)~ THEN ANandy ANandyTwo
@34 DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~
== PLAYER1 @48
== ANandy @35
== JANJ IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @36
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) OR(2) !InParty("Jan") StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @36
== PLAYER1 IF ~!InParty("Jan") !InParty("Korgan")~ THEN @36
== ANandy IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @37
== ANandy IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) OR(2) !InParty("Jan") StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @37
== ANandy IF ~!InParty("Jan") !InParty("Korgan")~ THEN @37
EXIT


// Шанк и Карбос
INTERJECT_COPY_TRANS3 SHANK 4 ANshankTalk4
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @80
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !Dead("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @93
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !Dead("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) OR(2) !InParty("Aerie") StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @93
== IF_FILE_EXISTS NEERAJ IF ~InParty("Neera") InMyArea("Neera") !Dead("Neera") !StateCheck("Neera",CD_STATE_NOTVALID) !InParty("Aerie") !InParty("Mazzy")~ THEN @93
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !Dead("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) OR(2) !InParty("Aerie") StateCheck("Aerie",CD_STATE_NOTVALID) OR(2)!InParty("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(2) !InParty("Neera") StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @93
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @81
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @82
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @83
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @84
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @85
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @86
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !Dead("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @87
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) InParty("Aerie") InMyArea("Aerie") !Dead("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) !Global("HaerDalisRomanceActive","GLOBAL",3)~ THEN @88
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !Dead("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) !Global("HaerDalisRomanceActive","GLOBAL",3)~ THEN @89
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) InParty("Aerie") InMyArea("Aerie") !Dead("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) !Global("HaerDalisRomanceActive","GLOBAL",3)~ THEN @90
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) InParty("Aerie") InMyArea("Aerie") !Dead("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) !Global("HaerDalisRomanceActive","GLOBAL",3)~ THEN @91
== IF_FILE_EXISTS DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !Dead("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID) !InParty("Korgan")~ THEN @91
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !Dead("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @92
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) OR(2) !InParty("Cernd") StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @92
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(2) !InParty("Cernd") StateCheck("Cernd",CD_STATE_NOTVALID) OR(2) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @92
== SHANK @94
END

INTERJECT_COPY_TRANS3 CARBOS 5 ANcarbosTalk5
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @80
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !Dead("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @93
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !Dead("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) OR(2) !InParty("Aerie") StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @93
== IF_FILE_EXISTS NEERAJ IF ~InParty("Neera") InMyArea("Neera") !Dead("Neera") !StateCheck("Neera",CD_STATE_NOTVALID) !InParty("Aerie") !InParty("Mazzy")~ THEN @93
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !Dead("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) OR(2) !InParty("Aerie") StateCheck("Aerie",CD_STATE_NOTVALID) OR(2)!InParty("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(2) !InParty("Neera") StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @93
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @81
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @82
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @83
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @84
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @85
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @86
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !Dead("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @87
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) InParty("Aerie") InMyArea("Aerie") !Dead("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) !Global("HaerDalisRomanceActive","GLOBAL",3)~ THEN @88
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !Dead("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) !Global("HaerDalisRomanceActive","GLOBAL",3)~ THEN @89
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) InParty("Aerie") InMyArea("Aerie") !Dead("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) !Global("HaerDalisRomanceActive","GLOBAL",3)~ THEN @90
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) InParty("Aerie") InMyArea("Aerie") !Dead("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) !Global("HaerDalisRomanceActive","GLOBAL",3)~ THEN @91
== IF_FILE_EXISTS DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !Dead("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID) !InParty("Korgan")~ THEN @91
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !Dead("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @92
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) OR(2) !InParty("Cernd") StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @92
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(2) !InParty("Cernd") StateCheck("Cernd",CD_STATE_NOTVALID) OR(2) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @92
== CARBOS @94
END