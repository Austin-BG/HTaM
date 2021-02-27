// Бантер Налия-Эдвин-ГГ в подводном городе
CHAIN 
IF  ~InParty("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Nalia",CD_STATE_NOTVALID)
Global("ANEdwinNaliatalk","GLOBAL",2)~ 
THEN BNALIA ANEdwinNalia
@0 DO ~SetGlobal("ANEdwinNaliatalk","GLOBAL",3)~
== BEDWIN @1
= @2
= @3
= @4
= @5
== BNALIA @6
EXIT

// Разговор с королем сахуагинов

INTERJECT_COPY_TRANS SAHKNG01 37 ANedwinsahuagins
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @7
END