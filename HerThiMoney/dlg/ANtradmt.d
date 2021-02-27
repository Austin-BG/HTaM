// Статуи в Трейдмите

INTERJECT_COPY_TRANS3 TRCUT07 4 ANFountainALL4
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !Dead("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @0
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !Dead("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @1
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @4 DO ~SetGlobal("AN_EDWIN_STATUE","GLOBAL",1)~
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !Dead("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @5 DO ~SetGlobal("AN_VICONIA_STATUE","GLOBAL",1)~
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !Dead("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @6 DO ~SetGlobal("AN_CERND_STATUE","GLOBAL",1)~
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !Dead("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)
 InParty("Neera") InMyArea("Neera") !Dead("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @7
=@8
== IF_FILE_EXISTS NEERAJ IF ~InParty("Neera") InMyArea("Neera") !Dead("Neera") !StateCheck("Neera",CD_STATE_NOTVALID) InParty("Minsc") InMyArea("Minsc") !Dead("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @9
== IF_FILE_EXISTS NEERAJ IF ~InParty("Neera") InMyArea("Neera") !Dead("Neera") !StateCheck("Neera",CD_STATE_NOTVALID) InParty("Minsc") InMyArea("Minsc") !Dead("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @10
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !Dead("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) InParty("Neera") InMyArea("Neera") !Dead("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @11
END

CHAIN  
IF ~Global("AN_Statues_Player1_Talk","GLOBAL",1)~ THEN PLAYER1 AN_Statues_Player1 
@12 DO ~SetGlobal("AN_Statues_Player1_Talk","GLOBAL",2)~
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @13
EXIT

CHAIN  
IF ~Global("AN_Statues_Viconia_Talk","GLOBAL",1) Global("AN_INPARTYSTATUE_VICONIA","GLOBAL",1)~ THEN VICONIJ AN_Statues_Viconia 
@14 DO ~SetGlobal("AN_Statues_Viconia_Talk","GLOBAL",2)~
EXIT

CHAIN  
IF ~Global("AN_Statues_Cernd_Talk","GLOBAL",1) Global("AN_INPARTYSTATUE_CERND","GLOBAL",1)~ THEN CERNDJ AN_Statues_Cernd
@15 DO ~SetGlobal("AN_Statues_Cernd_Talk","GLOBAL",2)~
EXIT

CHAIN  
IF ~Global("AN_Statues_Edwin_Talk","GLOBAL",1) Global("AN_INPARTYSTATUE_EDWIN","GLOBAL",1)~ THEN EDWINJ AN_Statues_Edwin
@16 DO ~SetGlobal("AN_Statues_Edwin_Talk","GLOBAL",2)~
EXIT

CHAIN  
IF ~Global("AN_Statues_Jan_Talk","GLOBAL",1) Global("AN_INPARTYSTATUE_JAN","GLOBAL",1)~ THEN JANJ AN_Statues_Jan
@17 DO ~SetGlobal("AN_Statues_Jan_Talk","GLOBAL",2)~
EXIT