// Йошимо
INTERJECT_COPY_TRANS3 YOSHJ 113 neerawilsonyoshimo113
%dlg_string1%
%dlg_string2%
END

// Тиакс 
INTERJECT_COPY_TRANS3 PPTIAX 1 ANALLtiax1
== IF_FILE_EXISTS WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !Dead("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID) Global("ANwilsonTiax","GLOBAL",0) !InParty("7XTIAX")~ THEN @2 DO ~SetGlobal("ANwilsonTiax","GLOBAL",1)~
== PPTIAX IF ~InParty("Wilson") InMyArea("Wilson") !Dead("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID) Global("ANwilsonTiax","GLOBAL",0) !InParty("7XTIAX")~ THEN @3
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !Dead("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) Global("ANMinscTiax","GLOBAL",0)~ THEN @4 DO ~SetGlobal("ANMinscTiax","GLOBAL",1)~
== PPTIAX IF ~InParty("Minsc") InMyArea("Minsc") !Dead("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) Global("ANMinscTiax","GLOBAL",0)~ THEN @5
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("ANjaheiraTiax","GLOBAL",0)~ THEN @6 DO ~SetGlobal("ANjaheiraTiax","GLOBAL",1)~
== PPTIAX IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("ANjaheiraTiax","GLOBAL",0)~ THEN @7
== IF_FILE_EXISTS RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !Dead("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("ANRasaadTiax","GLOBAL",0) !InParty("7XTIAX")~ THEN @777 DO ~SetGlobal("ANRasaadTiax","GLOBAL",1)~
== PPTIAX IF ~InParty("Rasaad") InMyArea("Rasaad") !Dead("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) Global("ANRasaadTiax","GLOBAL",0) !InParty("7XTIAX")~ THEN @778
END

REPLACE_SAY JAHEIRAJ 454 @6

INTERJECT_COPY_TRANS JAHEIRAJ 454 ANjaheiraTiax454
== PPTIAX IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("ANjaheiraTiax","GLOBAL",0)~ THEN @7 DO ~SetGlobal("ANjaheiraTiax","GLOBAL",1)~
END

INTERJECT_COPY_TRANS3 PPTIAX 6 ANALLtiax2
== IF_FILE_EXISTS WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !Dead("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID) Global("ANwilsonTiax","GLOBAL",0) !InParty("7XTIAX")~ THEN @2 DO ~SetGlobal("ANwilsonTiax","GLOBAL",1)~
== PPTIAX IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID) Global("ANwilsonTiax","GLOBAL",0) !InParty("7XTIAX")~ THEN @3
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) Global("ANMinscTiax","GLOBAL",0)~ THEN @4 DO ~SetGlobal("ANMinscTiax","GLOBAL",1)~
== PPTIAX IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) Global("ANMinscTiax","GLOBAL",0)~ THEN @5
END

// Загадки 
INTERJECT_COPY_TRANS3 PPSTAT01 1 ANanswerALL1
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @8
== IF_FILE_EXISTS 7XMONTJ IF ~InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @124
== IF_FILE_EXISTS 7XAJANJ IF ~InParty("7XAJAN") !StateCheck("7XAJAN",CD_STATE_NOTVALID) InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @125
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID) OR(2) !InParty("7XAJAN") StateCheck("7XAJAN",CD_STATE_NOTVALID)~ THEN @125
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID) OR(2) !InParty("7XAJAN") StateCheck("7XAJAN",CD_STATE_NOTVALID) OR(2) !InParty("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @125
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @9
== IF_FILE_EXISTS 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @126
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @10
== IF_FILE_EXISTS 7XAloraJ IF ~InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @123
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) 
OR(2) !InParty("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @10
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @11
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @12
== IF_FILE_EXISTS RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !Dead("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @13
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @14
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @15
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @16
END

INTERJECT_COPY_TRANS3 PPSTAT01 6 ANanswerALL6
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @17
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @18
== IMOEN2J IF 
~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) 
InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @19
== NALIAJ IF 
~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) 
InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) 
OR (2) !InParty("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @20
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @21
== IF_FILE_EXISTS 7XMONTJ IF ~InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @127
== IF_FILE_EXISTS 7XXZARJ IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID) InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @128
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @22
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @23
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @24
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @25
END

INTERJECT_COPY_TRANS3 PPSTAT01 9 ANanswerALL9
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @26
== IF_FILE_EXISTS 7XCoranJ IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @109
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @27
== IF_FILE_EXISTS RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !Dead("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @29
== IF_FILE_EXISTS 7XGarJ IF ~InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @108
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @28
END

INTERJECT_COPY_TRANS3 PPSTAT01 12 ANanswerALL12
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @30
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @31
== IF_FILE_EXISTS 7XsharJ IF ~InParty("7XSHAR") InMyArea("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN @111
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @32
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @33
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @34
== IF_FILE_EXISTS NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @35
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @36
END

INTERJECT_COPY_TRANS3 PPSTAT01 15 ANanswerALL15
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @37
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !Dead("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @38
== IF_FILE_EXISTS 7XAJANJ IF ~InParty("7XAJAN") InMyArea("7XAJAN") !StateCheck("7XAJAN",CD_STATE_NOTVALID)~ THEN @119
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !Dead("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @39
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !Dead("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @40
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @41
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !Dead("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @42
END

INTERJECT_COPY_TRANS3 PPSTAT01 18 ANanswerALL18
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @43
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @44
== IF_FILE_EXISTS 7XsharJ IF ~InParty("7XSHAR") InMyArea("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN @131
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @45
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @46
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @47
== IF_FILE_EXISTS 7XMONTJ IF ~InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @114
== IF_FILE_EXISTS 7XXZARJ IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID) InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @115
== IF_FILE_EXISTS 7XMONTJ IF ~InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID) InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @116
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID) InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @117
END

INTERJECT_COPY_TRANS3 PPSTAT01 21 ANanswerALL21
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @48
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @49
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @50
== IF_FILE_EXISTS 7XMONTJ IF ~InParty("7XMONT") InMyArea("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @132
== IF_FILE_EXISTS 7XMONTJ IF ~InParty("7XMONT") InMyArea("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @90
== IF_FILE_EXISTS 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @91
== IF_FILE_EXISTS 7XSkiJ IF ~InParty("7XSKI") InMyArea("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN @92
== IF_FILE_EXISTS 7XsharJ IF ~InParty("7XSHAR") InMyArea("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN @93
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @877
END

INTERJECT_COPY_TRANS3 PPSTAT01 24 ANanswerALL24
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @51
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @52
== IF_FILE_EXISTS 7XQUAYJ IF ~InParty("7XQUAY") InMyArea("7XQUAY") !StateCheck("7XQUAY",CD_STATE_NOTVALID) OR(2) !InParty("7Xkaga") StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @96
=@97
== IF_FILE_EXISTS 7XkagaJ IF ~InParty("7Xkaga") InMyArea("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @94 DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~
== IF_FILE_EXISTS 7XQUAYJ IF ~InParty("7XQUAY") InMyArea("7XQUAY") !StateCheck("7XQUAY",CD_STATE_NOTVALID) InParty("7Xkaga") InMyArea("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @95
=@97
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @98
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @99
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) InParty("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @100
== IF_FILE_EXISTS 7XkagaJ IF ~InParty("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID) OR(3) InParty("Korgan") InParty("Jaheira") InParty("Minsc") OR(3) !StateCheck("Korgan",CD_STATE_NOTVALID) !StateCheck("Jaheira",CD_STATE_NOTVALID) !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @101
== PLAYER1 IF ~InParty("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID) OR(3) InParty("Korgan") InParty("Jaheira") InParty("Minsc") OR(3) !StateCheck("Korgan",CD_STATE_NOTVALID) !StateCheck("Jaheira",CD_STATE_NOTVALID) !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @102
== IF_FILE_EXISTS 7XXZARJ IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @103 DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @104
== IF_FILE_EXISTS 7XXZARJ IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID) InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @105
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @106
== PLAYER1 IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @107
END

INTERJECT_COPY_TRANS3 PPSTAT01 27 ANanswerALL27
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @53
== IF_FILE_EXISTS 7XAJANJ IF ~InParty("7XAJAN") InMyArea("7XAJAN") !StateCheck("7XAJAN",CD_STATE_NOTVALID)~ THEN @133
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @54
END

INTERJECT_COPY_TRANS3 PPSTAT01 30 ANanswerALL30
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @55
== IF_FILE_EXISTS WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !Dead("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @83
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) 
InParty("WIlson") InMyArea("WIlson") !StateCheck("WIlson",CD_STATE_NOTVALID)~ 
THEN @84
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) 
InParty("WIlson") InMyArea("WIlson") !StateCheck("WIlson",CD_STATE_NOTVALID)~ 
THEN @85
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) 
InParty("WIlson") InMyArea("WIlson") !StateCheck("WIlson",CD_STATE_NOTVALID) 
InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ 
THEN @86
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) 
InParty("WIlson") InMyArea("WIlson") !StateCheck("WIlson",CD_STATE_NOTVALID) 
OR(2) !InParty("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID)~ 
THEN @87
END

INTERJECT_COPY_TRANS3 PPSTAT01 33 ANanswerALL33
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @56
== IF_FILE_EXISTS 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @122
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !Dead("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @57
END

INTERJECT_COPY_TRANS3 PPSTAT01 36 ANanswerALL36
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @58
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !Dead("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InParty("Korgan")~ THEN @59
== IF_FILE_EXISTS 7XAloraJ IF ~InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @139
== IF_FILE_EXISTS 7XYESJ IF ~InParty("7XYES") !StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN @134
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("7XYES") !StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN @135
END

INTERJECT_COPY_TRANS3 ELEPUZ01 3 ANanswerFinALL1
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !Dead("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @60
== IF_FILE_EXISTS 7XMONTJ IF ~InParty("7XMONT") InMyArea("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @113
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @61
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @62
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @63
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @64
END

INTERJECT_COPY_TRANS3 ELEPUZ02 5 ANanswerFinALL2
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @65
== IF_FILE_EXISTS 7XsharJ IF ~InParty("7XSHAR") InMyArea("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN @112
== IF_FILE_EXISTS 7XMONTJ IF ~InParty("7XMONT") InMyArea("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @136
== IF_FILE_EXISTS 7XXZARJ IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID) InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @137
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !Dead("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @66
== IF_FILE_EXISTS DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !Dead("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @67
== IF_FILE_EXISTS 7XXZARJ IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @138
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !Dead("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @68
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !Dead("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @69
== IF_FILE_EXISTS 7XTIAXJ IF ~See("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID) InParty("7XTIAX")~ THEN @130
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @70
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !Dead("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @71
END

INTERJECT_COPY_TRANS3 ELEPUZ03 4 ANanswerFinALL3
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @72
== IF_FILE_EXISTS 7XkagaJ IF ~InParty("7Xkaga") InMyArea("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @140
== IF_FILE_EXISTS 7XTIAXJ IF ~See("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID) InParty("7XTIAX")~ THEN @129
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @73
== IF_FILE_EXISTS 7XCoranJ IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID) OR(4) InParty("Aerie") InParty("Nalia") InParty("Jaheira") InParty("7XSKI") OR(3) InParty("Imoen2") InParty("Viconia") InParty("Mazzy")~ THEN @110
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @74
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @75
== IF_FILE_EXISTS 7XQUAYJ IF ~InParty("7XQUAY") InMyArea("7XQUAY") !StateCheck("7XQUAY",CD_STATE_NOTVALID)~ THEN @142
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @76
END

INTERJECT_COPY_TRANS3 ELEPUZ04 4 ANanswerFinALL4
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin")  !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @77
== IF_FILE_EXISTS 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @121
== IF_FILE_EXISTS 7XkagaJ IF ~InParty("7Xkaga") InMyArea("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @141
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) InParty("Edwin") InMyArea("Edwin")!StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @78
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @79
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @80
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @81
== IF_FILE_EXISTS 7XAloraJ IF ~InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @120
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @82
END


// Айреникус
INTERJECT_COPY_TRANS3 PPIRENI1 29 ANirenicus29
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @88
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @89
END