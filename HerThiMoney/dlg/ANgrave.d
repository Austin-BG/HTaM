// Тирдир
INTERJECT_COPY_TRANS3 TIRDIR 2 ANtirdirTalk2
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @0
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !Dead("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @2
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !Dead("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @3
== TIRDIR IF ~InParty("Viconia") InMyArea("Viconia") !Dead("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @4
END

INTERJECT_COPY_TRANS TIRDIR 7 ANtirdirTalk7
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !Dead("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @1
END

// Мини-квест "Ради любви"

BEGIN ANsharlt
BEGIN ANParis

IF ~AreaCheck("AR1000") Global("ANParisFirstTalk","AR1000",1)~ THEN BEGIN ANParisTalk
  SAY @5
IF ~~ THEN DO ~SetGlobal("ANParisFirstTalk","AR1000",2)~ REPLY @6 GOTO ANParisTalk1
IF ~~ THEN DO ~SetGlobal("ANParisFirstTalk","AR1000",8)~ REPLY @7 GOTO ANParisTalkNo 
IF ~~ THEN DO ~SetGlobal("ANParisFirstTalk","AR1000",8)~ REPLY @8 GOTO ANParisTalkNo
END 

IF ~~ THEN BEGIN ANParisTalkNo
  SAY @15
IF ~~ THEN DO ~EscapeArea()~ EXIT
END 

IF ~~ THEN BEGIN ANParisTalk2
  SAY @16
IF ~~ THEN DO ~AddJournalEntry(@1038,QUEST) SetGlobal("ANParisGraveTalk","GLOBAL",1) SetGlobal("ANParisFirstTalk","AR1000",3) EscapeArea()~ EXIT
END 


CHAIN 
IF ~AreaCheck("AR1000") Global("ANParisFirstTalk","AR1000",2)~ THEN ANParis ANParisTalk1
@9
=@10  
=@11
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @30
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !InParty("HaerDalis")~ THEN @30
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @31
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @32
== ANParis @12
END
IF ~~ THEN REPLY @14 EXTERN ANParis ANParisTalk2
IF ~~ THEN DO ~SetGlobal("ANParisFirstTalk","AR1000",8)~ REPLY @13 EXTERN ANParis ANParisTalkNo

CHAIN 
IF ~AreaCheck("AR0800") Global("ANParisGraveTalk","GLOBAL",2)~ THEN ANParis ANParisGraveTalk1
@17
== ANsharlt @18
== ANParis @19 DO ~SetGlobal("ANParisGraveTalk","GLOBAL",3)~
EXIT

CHAIN 
IF ~AreaCheck("AR0800") Global("ANParisGraveTalk","GLOBAL",4) Dead("Ankiller")~ THEN ANParis ANParisGraveTalk2
@20
== ANsharlt @21 DO ~SetGlobal("ANParisGraveTalk","GLOBAL",5)~
== ANParis @22 
== ANsharlt @23
== ANParis @24 
== ANsharlt @25
== ANParis @26
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @29
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) OR(2) !InParty("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @29
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar")  !StateCheck("Valygar",CD_STATE_NOTVALID) OR(2) !InParty("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) OR(2) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @29
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) OR(2) !InParty("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID) OR(2) !InParty("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) OR(2) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @29
== ANParis @27
=@28 DO ~AddJournalEntry(@1039,QUEST_DONE) GiveGoldForce(500) AddexperienceParty(600)~
EXIT

// Диалог с Бодхи (на ее стороне)
INTERJECT_COPY_TRANS3 BODHI 43 ANKeldornVicBODHI43
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @33
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @33
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @34
END

INTERJECT_COPY_TRANS3 BODHI 72 ANBODHI72
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @35
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @36
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @37
END