// Смерть Низидрамани'ита - реакции NPC

CHAIN  
IF WEIGHT #-2 ~Global("AN_Nizidr_DeadTalk","AR2807",2)~ 
THEN PLAYER1 ANNizidrDeadTalkALL
@0 DO ~SetGlobal("AN_Nizidr_DeadTalk","AR2807",3)~
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) OR(2) Dead("SHADRA01") Dead("FIRKRA02")~ THEN @1
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @3
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @4
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @5
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @6
END
IF ~~ THEN EXIT