INTERJECT_COPY_TRANS3 MINSCA 0 ANminsc1
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira")~ THEN @0
== IMOENJ IF ~InParty("Imoen") InMyArea("Imoen") InParty("Jaheira") InMyArea("Jaheira")~ THEN @1
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") InParty("Jaheira") InMyArea("Jaheira")~ THEN @1
== IMOENJ IF ~InParty("Imoen") InMyArea("Imoen")~ THEN @2
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2")~ THEN @2
END

INTERJECT_COPY_TRANS JAHEIRA 0 ANjaheira1
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3
END

EXTEND_TOP JAHEIRA 9 
+ ~!Global("minscjah","LOCALS",1) !InParty("Imoen") !InParty("Imoen2") InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ + @4 + ANminscjaheira
END

EXTEND_TOP JAHEIRA 10 
+ ~!Global("minscjah","LOCALS",1) !InParty("Imoen") !InParty("Imoen2") InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ + @4 + ANminscjaheira
END

EXTEND_TOP JAHEIRA 11 
+ ~!Global("minscjah","LOCALS",1) !InParty("Imoen") !InParty("Imoen2") InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ + @4 + ANminscjaheira
END

CHAIN JAHEIRA ANminscjaheira
@7
== MINSCJ @5
= @6 DO ~SetGlobal("minscjah","LOCALS",1)~
EXTERN JAHEIRA 59


INTERJECT_COPY_TRANS3 JAHEIRA 58 ANjaheira4
== IMOENJ IF ~InParty("Imoen") InMyArea("Imoen") InParty("Minsc") InMyArea("Minsc") !Global("minscjah","LOCALS",1)~ THEN @4
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") InParty("Minsc") InMyArea("Minsc") !Global("minscjah","LOCALS",1)~ THEN @4
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") InParty("Imoen") InMyArea("Imoen") !Global("minscjah","LOCALS",1)~ THEN @5
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") InParty("Imoen2") InMyArea("Imoen2") !Global("minscjah","LOCALS",1)~ THEN @5
= @6 DO ~SetGlobal("minscjah","LOCALS",1)~
END

INTERJECT_COPY_TRANS3 JAHEIRA 60 ANjaheira5
== IMOENJ IF ~InParty("Imoen") InMyArea("Imoen") InParty("Minsc") InMyArea("Minsc") !Global("minscjah","LOCALS",1)~ THEN @4
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") InParty("Minsc") InMyArea("Minsc") !Global("minscjah","LOCALS",1)~ THEN @4
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") InParty("Imoen") InMyArea("Imoen") !Global("minscjah","LOCALS",1)~ THEN @5
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") InParty("Imoen2") InMyArea("Imoen2") !Global("minscjah","LOCALS",1)~ THEN @5
= @6 DO ~SetGlobal("minscjah","LOCALS",1)~
END

INTERJECT_COPY_TRANS RIELEV 18 ANrielevminsc
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @8
END

INTERJECT_COPY_TRANS RIELEV 19 ANrielevimoen
== IMOENJ IF ~InParty("Imoen") InMyArea("Imoen") !StateCheck("Imoen",CD_STATE_NOTVALID)~ THEN @9
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @9
END

INTERJECT_COPY_TRANS LIFE1 3 ANlifeimoen
== IMOENJ IF ~InParty("Imoen") InMyArea("Imoen") !StateCheck("Imoen",CD_STATE_NOTVALID)~ THEN @10
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @10
== LIFE1 @11
END

CHAIN IF ~Global("minscdungeon","AR0602",2) InParty("Imoen") InMyArea("Imoen") InParty("Minsc") InMyArea("Minsc")~ THEN BMINSC ANminscgoblins1
@12 DO ~SetGlobal("minscdungeon","AR0602",3)~
== IMOENJ @13
== BMINSC @14
== IMOENJ @15
EXIT

CHAIN IF ~Global("minscdungeon","AR0602",2) InParty("Imoen2") InMyArea("Imoen2") InParty("Minsc") InMyArea("Minsc")~ THEN BMINSC ANminscgoblins2
@12 DO ~SetGlobal("minscdungeon","AR0602",3)~
== IMOEN2J @13
== BMINSC @14
== IMOEN2J @15
EXIT

INTERJECT_COPY_TRANS ILYICH 1 ANilyichjaheira
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @16
== ILYICH IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @17
END

INTERJECT_COPY_TRANS IDRYAD1 5 ANdriadsjaheira
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @18
END