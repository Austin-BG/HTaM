// Статуи в Трейдмите

REPLACE_SAY NEERAJ 504 @18 

CHAIN  
IF ~Global("AN_Statues_Neera_Talk","GLOBAL",1) Global("AN_INPARTYSTATUE_NEERA","GLOBAL",1)~ THEN NEERAJ AN_Statues_Neera
@19 DO ~SetGlobal("AN_Statues_Neera_Talk","GLOBAL",2)~
EXIT