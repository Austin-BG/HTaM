// Замок Налии. Разговор с Торгалом
INTERJECT_COPY_TRANS3 TORGAL %state% ANtorgALL_%state%
== MAZZYJ IF ~Global("ANtorgalAll","GLOBAL",0) InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @11
== KELDORJ IF ~Global("ANtorgalAll","GLOBAL",0) InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @9
== MINSCJ IF ~Global("ANtorgalAll","GLOBAL",0) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @0
== YOSHJ IF ~Global("ANtorgalAll","GLOBAL",0) InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @1
== KORGANJ IF ~Global("ANtorgalAll","GLOBAL",0) InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2
== IMOEN2J IF ~Global("ANtorgalAll","GLOBAL",0) InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3
== MINSCJ IF ~Global("ANtorgalAll","GLOBAL",0) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) OR(3) !InParty("Imoen2") !InMyArea("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @3
== KORGANJ IF ~Global("ANtorgalAll","GLOBAL",0) InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @4
== MINSCJ IF ~Global("ANtorgalAll","GLOBAL",0) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @5
== JAHEIRAJ IF ~Global("ANtorgalAll","GLOBAL",0) InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @6
== EDWINJ IF ~Global("ANtorgalAll","GLOBAL",0) InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) OR(3) InParty("Mazzy") InParty("Minsc") InParty("Keldorn")~ THEN @7
== AERIEJ IF ~Global("ANtorgalAll","GLOBAL",0) InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @8
== JAHEIRAJ IF ~Global("ANtorgalAll","GLOBAL",0) InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) OR(3) !InParty("Aerie") !InMyArea("Aerie") StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @8
== TORGAL IF ~Global("ANtorgalAll","GLOBAL",0) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @10 DO ~SetGlobal("ANtorgalAll","GLOBAL",1)~
END

