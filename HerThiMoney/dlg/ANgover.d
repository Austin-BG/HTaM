// Разговор Аномена с протагонистом

APPEND ANOMENJ

IF ~Global("ANAnomenPlayer1Talk","AR1000",1) Global("AnomenIsKnight","GLOBAL",1) !Global("AnomenSaerk","GLOBAL",0)~ THEN BEGIN ANAnomenPlayer1
SAY @0 
= @1
IF ~~ THEN DO ~SetGlobal("ANAnomenPlayer1Talk", "AR1000",2)~ REPLY @2 GOTO ANAnomenPlayer1_1
IF ~~ THEN DO ~SetGlobal("ANAnomenPlayer1Talk", "AR1000",2)~ REPLY @4 GOTO ANAnomenPlayer1_2
IF ~~ THEN DO ~SetGlobal("ANAnomenPlayer1Talk", "AR1000",2)~ REPLY @8 GOTO ANAnomenPlayer1_Exit1
END

IF ~~ THEN BEGIN ANAnomenPlayer1_1
SAY @3 
IF ~~ THEN REPLY @6 GOTO ANAnomenPlayer1_2.1
IF ~~ THEN REPLY @8 GOTO ANAnomenPlayer1_Exit1
END

IF ~~ THEN BEGIN ANAnomenPlayer1_2
SAY @5 
IF ~!IsValidForPartyDialog("Minsc")~ THEN REPLY @6 GOTO ANAnomenPlayer1_2.1
IF ~!IsValidForPartyDialog("Minsc")~ THEN REPLY @8 GOTO ANAnomenPlayer1_Exit1
IF ~IsValidForPartyDialog("Minsc")~ THEN EXTERN MINSCJ ANAnomenPlayer1_3
END

IF ~~ THEN BEGIN ANAnomenPlayer1_2.1
SAY @7 
IF ~!IsValidForPartyDialog("Minsc")~ THEN GOTO ANAnomenPlayer1_Exit2
IF ~IsValidForPartyDialog("Minsc")~ THEN EXTERN MINSCJ ANAnomenPlayer1_3
END

IF ~~ THEN BEGIN ANAnomenPlayer1_Exit1
SAY @9 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANAnomenPlayer1_Exit2
SAY @11 
IF ~~ THEN EXIT
END

END


APPEND MINSCJ
IF ~~ THEN BEGIN ANAnomenPlayer1_3
SAY @10 
IF ~~ THEN EXTERN ANOMENJ ANAnomenPlayer1_Exit2
END
END
