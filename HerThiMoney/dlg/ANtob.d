ADD_TRANS_ACTION BIMOEN25 BEGIN 18 END BEGIN END ~SetGlobal("ANimoenanomentalk","GLOBAL",1)~

CHAIN 
IF  ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("ANimoenanomentalk","GLOBAL",2)~ 
THEN BANOME25 anomenimoen2
@0 DO ~SetGlobal("ANimoenanomentalk","GLOBAL",3)~
== BIMOEN25 @1
= @2
== BANOME25 @3
= @4
== BIMOEN25 @5
== BANOME25 @6
= @7
== BIMOEN25 @8
== BANOME25 @9
= @10
== BIMOEN25 @11
== BANOME25 @12
EXIT

INTERJECT_COPY_TRANS3 MARLOWE 5 ANallmarlow5
== EDWIN25J IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @13
== AERIE25J IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @14
END

INTERJECT_COPY_TRANS MARLOWE 6 ANjaheiramarlow
== JAHEI25J IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @15
END

INTERJECT_COPY_TRANS AMCST01 2 ANmazzyamketran
== MAZZY25J IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @16
== AMCST01 @17
END

INTERJECT_COPY_TRANS MARLOWE 21 ANvalygarmarlow
== VALYG25J IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @18
END

INTERJECT_COPY_TRANS MARLOWE 28 ANhaerdalismarlow
== HAERD25J IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @19 DO ~SetGlobal("HaerMarlowTalk","GLOBAL",1)~
== MARLOWE @20
END

INTERJECT_COPY_TRANS3 MARLOWE 15 ANMarlowattack
== IMOEN25J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @21
== KELDO25J IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @22 DO ~ChangeAIScript("",DEFAULT) LeaveParty() Enemy() ChangeEnemyAlly(Myself, EVILCUTOFF)~
== MAZZY25J IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @23 DO ~ChangeAIScript("",DEFAULT) LeaveParty() Enemy() ChangeEnemyAlly(Myself, EVILCUTOFF)~
== MINSC25J IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @24 DO ~ChangeAIScript("",DEFAULT) LeaveParty() Enemy() ChangeEnemyAlly(Myself, EVILCUTOFF)~
== JAHEI25J IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @25 DO ~ActionOverride("Jaheira",ChangeAIScript("",DEFAULT)) ActionOverride("Jaheira",SetLeavePartyDialogFile()) ActionOverride("Jaheira",LeaveParty()) ActionOverride("Jaheira",EscapeArea())~
== JAHEI25J IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) !InParty("Minsc")~ THEN @26 DO ~ActionOverride("Jaheira",ChangeAIScript("",DEFAULT)) ActionOverride("Jaheira",SetLeavePartyDialogFile()) ActionOverride("Jaheira",LeaveParty()) ActionOverride("Jaheira",EscapeArea())~
== JAHEI25J IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @26 DO ~ActionOverride("Jaheira",ChangeAIScript("",DEFAULT)) ActionOverride("Jaheira",SetLeavePartyDialogFile()) ActionOverride("Jaheira",LeaveParty()) ActionOverride("Jaheira",EscapeArea())~
== KORGA25J IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @27
== NALIA25J IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @28
== AERIE25J IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @29
== IF_FILE_EXISTS NEERA25J IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @30
== MARLOWE @3000
END

INTERJECT_COPY_TRANS3 AMGRAV01 0 ANallboy0
== MINSC25J IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @31
%dlg_string4%
END

INTERJECT_COPY_TRANS AMGRAV01 3 ANboyhaerdalis
== HAERD25J IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) Global("HaerMarlowTalk","GLOBAL",1)~ THEN @33 DO ~SetGlobal("HaerMarlowTalk","GLOBAL",2)~
END

INTERJECT_COPY_TRANS BIMOEN25 110 sarevokaeriebaby
== SAREV25J IF ~InParty("Sarevok") InMyArea("Sarevok") !StateCheck("Sarevok",CD_STATE_NOTVALID)~ THEN @34
END

INTERJECT_COPY_TRANS3 AMBAR01 17 ANAMBAR01-17
== JAHEI25J IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @35
== KORGA25J IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @36
== VICON25J IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @37
END

INTERJECT_COPY_TRANS3 AMCLER01 2 ANAMCLER01-2
== KELDO25J IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @38
== JAHEI25J IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @39
END

INTERJECT_COPY_TRANS AMCLER01 3 ANAMCLER01-3
== KORGA25J IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @40
END

INTERJECT_COPY_TRANS BALTH 16 ANnaliaBALTH-16
== NALIA25J IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @41
END