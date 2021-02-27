// Реплики в Медной Короне
INTERJECT_COPY_TRANS NALIA 45 ANnaliajaheira
== JAHEIRAJ 
IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("ANnaliajah","GLOBAL",0)~ 
THEN @0 DO ~SetGlobal("ANnaliajah","GLOBAL",1)~
END

INTERJECT_COPY_TRANS NALIA 46 ANnaliajaheira
== JAHEIRAJ 
IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("ANnaliajah","GLOBAL",0)~ 
THEN @0 DO ~SetGlobal("ANnaliajah","GLOBAL",1)~
END

INTERJECT_COPY_TRANS3 NALIA 51 ANnaliaother
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @1
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) InParty("Valygar")~ THEN @2
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3
== JANJ IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @4
END

INTERJECT_COPY_TRANS LEHTIN 17 minscLEHTIN17
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @5
== LEHTIN IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @6
END

INTERJECT_COPY_TRANS FIRKRA01 9 keldornFIRCRA019
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @7
== FIRKRA01 IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @8
END