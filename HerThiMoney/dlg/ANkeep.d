// Реплики при квесте Налии

INTERJECT_COPY_TRANS3 NALIAJ 149 ANNaliaQuestTalk149
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @53
== NALIAJ @54
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @55
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !Dead("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @56
== JANJ IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @57
== NALIAJ IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @58
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @60
END

INTERJECT_COPY_TRANS NALIAJ 318 ANNaliaEdwinTalk318
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @59
END

INTERJECT_COPY_TRANS3 NALIA 55 ANNaliaQuestTalk55
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !Dead("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @53
== NALIAJ @54
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @55
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !Dead("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @56
== JANJ IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @57
== NALIAJ IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @58
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @60
END

INTERJECT_COPY_TRANS NALIA 111 ANNaliaEdwinTalk111
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @59
END