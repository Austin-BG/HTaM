// Смерть Фиркраага - реакции NPC

CHAIN  
IF WEIGHT #-2 ~Global("AN_Firkraag_DeadTalk","AR1203",2)~ 
THEN PLAYER1 ANThaxllDeadTalkALL
@0 DO ~SetGlobal("AN_Firkraag_DeadTalk","AR1203",3)~
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !Dead("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN @1
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @2
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !Dead("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @3
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @4
== JANJ IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @5
END
IF ~~ THEN EXIT


// Дриады
INTERJECT_COPY_TRANS VAELASA 4 ANdriads_4
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @6
== VAELASA IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @7
END