// Меретт

INTERJECT_COPY_TRANS3 OHNMERET 16 ANmerettTalk16
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @0
= @1
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !Dead("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !Dead("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @3
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) !InParty("Imoen2")~ THEN @3
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !Dead("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @4
END


// Миронда
INTERJECT_COPY_TRANS OHNMIRON 7 ANmirondaTalk7
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @5
== OHNMIRON IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @6
END

INTERJECT_COPY_TRANS OHNMIRON 13 ANmirondaTalk13
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @7
== OHNMIRON IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @8
END