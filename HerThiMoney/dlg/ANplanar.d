APPEND EDWINJ

IF 
~Global("ANplanaredwin", "GLOBAL", 2)~ THEN BEGIN ANplanaredwin1
SAY @0 
= @1
IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN EXTERN BEDWIN ANplanaredwin2
IF ~OR(2) !InParty("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("ANplanaredwin", "GLOBAL", 3)~ EXIT
END
END

CHAIN IF ~~ THEN BEDWIN ANplanaredwin2
@5 DO ~SetGlobal("ANplanaredwin", "GLOBAL", 3)~
== BVALYGA @2
== BEDWIN @3
== BVALYGA @4
EXIT
