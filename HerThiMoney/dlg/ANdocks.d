CHAIN IF ~AreaCheck("AR0300") Global("ANnaliaviconia1","GLOBAL",2) 
InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) 
InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN BNALIA ANnaliaviconiatalk1
@0 DO ~SetGlobal("ANnaliaviconia1","GLOBAL",3)~
== BVICONI @1
== BNALIA @2
== BVICONI @3
== BNALIA @4
== BVICONI @5
== BNALIA @6
== BVICONI @7
== BNALIA @8
EXIT

