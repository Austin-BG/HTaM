// Йошимо
EXTEND_BOTTOM JAHEIRAJ 498 
IF ~IsValidForPartyDialog("Minsc")~ THEN EXTERN MINSCJ 190
END


// Аран
EXTEND_BOTTOM MAZZYJ 188 
IF ~!IsValidForPartyDialog("Jaheira") !IsValidForPartyDialogue("VALYGAR") !IsValidForPartyDialogue("VICONIA") IsValidForPartyDialogue("Jan")~ THEN EXTERN JANJ 174
IF ~!IsValidForPartyDialog("Jaheira") !IsValidForPartyDialogue("VALYGAR") IsValidForPartyDialogue("VICONIA")~ THEN EXTERN VICONIJ 171
IF ~!IsValidForPartyDialog("Jaheira") IsValidForPartyDialogue("VALYGAR")~ THEN EXTERN VALYGARJ 97
END

EXTEND_BOTTOM VALYGARJ 97 
IF ~!IsValidForPartyDialog("Jaheira") !IsValidForPartyDialogue("VICONIA") IsValidForPartyDialogue("Jan")~ THEN EXTERN JANJ 174
IF ~!IsValidForPartyDialog("Jaheira") IsValidForPartyDialogue("VICONIA")~ THEN EXTERN VICONIJ 171
END

EXTEND_BOTTOM VICONIJ 171
IF ~IsValidForPartyDialogue("Jan")~ THEN EXTERN JANJ 174
END

EXTEND_BOTTOM JAHEIRAJ 508
IF ~!IsValidForPartyDialogue("VICONIA") IsValidForPartyDialogue("Jan")~ THEN EXTERN JANJ 174
IF ~IsValidForPartyDialogue("VICONIA")~ THEN EXTERN VICONIJ 171
END

EXTEND_BOTTOM YOSHJ 99 
IF ~!IfValidForPartyDialogue("Jaheira") !IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Nalia") !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Aerie")~ THEN EXTERN AERIEJ 183
IF ~!IfValidForPartyDialogue("Jaheira") !IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Nalia") !IsValidForPartyDialog("Cernd") IsValidForPartyDialog("Mazzy")~ THEN EXTERN MAZZYJ 197
IF ~!IfValidForPartyDialogue("Jaheira") !IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Nalia") IsValidForPartyDialog("Cernd") Global("AN_CerndTalk","AR0307",0)~ THEN DO ~SetGlobal("AN_CerndTalk","AR0307",1)~ EXTERN CERNDJ 134
IF ~!IfValidForPartyDialogue("Jaheira") !IsValidForPartyDialog("Keldorn") IsValidForPartyDialog("Nalia")~ THEN EXTERN NALIAJ 311
IF ~!IfValidForPartyDialogue("Jaheira") IsValidForPartyDialog("Keldorn") Global("AN_KeldornTalk","AR0307",0)~ THEN DO ~SetGlobal("AN_KeldornTalk","AR0307",1)~ EXTERN KELDORJ 246
IF ~IfValidForPartyDialogue("Jaheira")~ THEN EXTERN JAHEIRAJ 514
END

EXTEND_BOTTOM JAHEIRAJ 514 
IF ~!IsValidForPartyDialog("Korgan") !IsValidForPartyDialog("Minsc") !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Nalia") !IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Aerie")~ THEN EXTERN AERIEJ 183
IF ~!IsValidForPartyDialog("Korgan") !IsValidForPartyDialog("Minsc") !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Nalia") IsValidForPartyDialog("Mazzy")~ THEN EXTERN MAZZYJ 197
IF ~!IsValidForPartyDialog("Korgan") !IsValidForPartyDialog("Minsc") !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Keldorn") IsValidForPartyDialog("Nalia")~ THEN EXTERN NALIAJ 311
IF ~!IsValidForPartyDialog("Korgan") !IsValidForPartyDialog("Minsc") !IsValidForPartyDialog("Cernd") IsValidForPartyDialog("Keldorn") Global("AN_KeldornTalk","AR0307",0)~ THEN DO ~SetGlobal("AN_KeldornTalk","AR0307",1)~ EXTERN KELDORJ 246
END

EXTEND_BOTTOM JAHEIRAJ 516 
IF ~!IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Nalia") !IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Aerie")~ THEN DO ~SetGlobal("AN_CerndTalk","AR0307",1)~ EXTERN AERIEJ 183
IF ~!IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Nalia") IsValidForPartyDialog("Mazzy")~ THEN DO ~SetGlobal("AN_CerndTalk","AR0307",1)~ EXTERN MAZZYJ 197
IF ~!IsValidForPartyDialog("Keldorn") IsValidForPartyDialog("Nalia")~ THEN DO ~SetGlobal("AN_CerndTalk","AR0307",1)~ EXTERN NALIAJ 311
IF ~IsValidForPartyDialog("Keldorn") Global("AN_KeldornTalk","AR0307",0)~ THEN DO ~SetGlobal("AN_KeldornTalk","AR0307",1)~ EXTERN KELDORJ 246
END

EXTEND_BOTTOM CERNDJ 135
IF ~!IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Nalia") !IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Aerie")~ THEN EXTERN AERIEJ 183
IF ~!IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Nalia") IsValidForPartyDialog("Mazzy")~ THEN EXTERN MAZZYJ 197
IF ~!IsValidForPartyDialog("Keldorn") IsValidForPartyDialog("Nalia") Global("AN_NaliaTalk","AR0307",0)~ THEN DO ~SetGlobal("AN_NaliaTalk","AR0307",1)~ EXTERN NALIAJ 311
IF ~IsValidForPartyDialog("Keldorn") Global("AN_KeldornTalk","AR0307",0)~ THEN DO ~SetGlobal("AN_KeldornTalk","AR0307",1)~ EXTERN KELDORJ 246
END

EXTEND_BOTTOM MINSCJ 206
IF ~!IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Nalia") !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Aerie")~ THEN EXTERN AERIEJ 183
IF ~!IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Nalia") !IsValidForPartyDialog("Cernd") IsValidForPartyDialog("Mazzy")~ THEN EXTERN MAZZYJ 197
IF ~!IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Nalia") IsValidForPartyDialog("Cernd") Global("AN_CerndTalk","AR0307",0)~ THEN DO ~SetGlobal("AN_CerndTalk","AR0307",1)~ EXTERN CERNDJ 134
IF ~!IsValidForPartyDialog("Keldorn") IsValidForPartyDialog("Nalia")~ THEN EXTERN NALIAJ 311
IF ~IsValidForPartyDialog("Keldorn") Global("AN_KeldornTalk","AR0307",0)~ THEN DO ~SetGlobal("AN_KeldornTalk","AR0307",1)~ EXTERN KELDORJ 246
END

EXTEND_BOTTOM KORGANJ 182
IF ~!IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Nalia") !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Aerie")~ THEN DO ~SetGlobal("AN_KorganTalk","AR0307",1)~ EXTERN AERIEJ 183
IF ~!IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Nalia") IsValidForPartyDialog("Cernd") Global("AN_CerndTalk","AR0307",0)~ THEN DO ~SetGlobal("AN_CerndTalk","AR0307",1) SetGlobal("AN_KorganTalk","AR0307",1)~ EXTERN CERNDJ 134
IF ~!IsValidForPartyDialog("Keldorn") IsValidForPartyDialog("Nalia") Global("AN_NaliaTalk","AR0307",0)~ THEN DO ~SetGlobal("AN_NaliaTalk","AR0307",1) SetGlobal("AN_KorganTalk","AR0307",1)~ EXTERN NALIAJ 311
IF ~IsValidForPartyDialog("Keldorn") Global("AN_KeldornTalk","AR0307",0)~ THEN DO ~SetGlobal("AN_KeldornTalk","AR0307",1)~ EXTERN KELDORJ 246
END

EXTEND_BOTTOM KELDORJ 246
IF ~!IsValidForPartyDialog("Anomen") !IsValidForPartyDialog("Nalia") !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Aerie")~ THEN DO ~SetGlobal("AN_KeldornTalk","AR0307",1)~ EXTERN AERIEJ 183
IF ~!IsValidForPartyDialog("Anomen") !IsValidForPartyDialog("Nalia") !IsValidForPartyDialog("Cernd") IsValidForPartyDialog("Mazzy")~ THEN DO ~SetGlobal("AN_KeldornTalk","AR0307",1)~ EXTERN MAZZYJ 197
IF ~!IsValidForPartyDialog("Anomen") !IsValidForPartyDialog("Nalia") IsValidForPartyDialog("Cernd") Global("AN_CerndTalk","AR0307",0)~ THEN DO ~SetGlobal("AN_CerndTalk","AR0307",1) SetGlobal("AN_KeldornTalk","AR0307",1)~ EXTERN CERNDJ 134
IF ~!IsValidForPartyDialog("Anomen") IsValidForPartyDialog("Nalia") Global("AN_NaliaTalk","AR0307",0)~ THEN DO ~SetGlobal("AN_NaliaTalk","AR0307",1) SetGlobal("AN_KeldornTalk","AR0307",1)~ EXTERN NALIAJ 311
END

EXTEND_BOTTOM ANOMENJ 297
IF ~!IsValidForPartyDialog("Nalia") !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Aerie")~ THEN EXTERN AERIEJ 183
IF ~!IsValidForPartyDialog("Nalia") !IsValidForPartyDialog("Cernd") IsValidForPartyDialog("Mazzy")~ THEN EXTERN MAZZYJ 197
IF ~!IsValidForPartyDialog("Nalia") IsValidForPartyDialog("Cernd") Global("AN_CerndTalk","AR0307",0)~ THEN DO ~SetGlobal("AN_CerndTalk","AR0307",1)~ EXTERN CERNDJ 134
IF ~IsValidForPartyDialog("Nalia") Global("AN_NaliaTalk","AR0307",0)~ THEN DO ~SetGlobal("AN_NaliaTalk","AR0307",1)~ EXTERN NALIAJ 311
END

EXTEND_BOTTOM NALIAJ 311
IF ~!IsValidForPartyDialog("HaerDalis") !IsValidForPartyDialog("Edwin") !IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Aerie")~ THEN EXTERN AERIEJ 183
IF ~!IsValidForPartyDialog("HaerDalis") !IsValidForPartyDialog("Edwin") !IsValidForPartyDialog("Cernd") IsValidForPartyDialog("Mazzy")~ THEN EXTERN MAZZYJ 197
IF ~!IsValidForPartyDialog("HaerDalis") !IsValidForPartyDialog("Edwin") IsValidForPartyDialog("Cernd") Global("AN_CerndTalk","AR0307",0)~ THEN DO ~SetGlobal("AN_CerndTalk","AR0307",1)~ EXTERN CERNDJ 134
END

EXTEND_BOTTOM HAERDAJ 147
IF ~!IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Aerie")~ THEN EXTERN AERIEJ 183
IF ~!IsValidForPartyDialog("Cernd") IsValidForPartyDialog("Mazzy")~ THEN EXTERN MAZZYJ 197
IF ~IsValidForPartyDialog("Cernd") Global("AN_CerndTalk","AR0307",0)~ THEN DO ~SetGlobal("AN_CerndTalk","AR0307",1)~ EXTERN CERNDJ 134
END

EXTEND_BOTTOM NALIAJ 313
IF ~!IsValidForPartyDialog("Cernd") !IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Aerie")~ THEN EXTERN AERIEJ 183
IF ~!IsValidForPartyDialog("Cernd") IsValidForPartyDialog("Mazzy")~ THEN EXTERN MAZZYJ 197
IF ~IsValidForPartyDialog("Cernd") Global("AN_CerndTalk","AR0307",0)~ THEN DO ~SetGlobal("AN_CerndTalk","AR0307",1)~ EXTERN CERNDJ 134
END

EXTEND_BOTTOM CERNDJ 134
IF ~!IsValidForPartyDialog("Jaheira") !IsValidForPartyDialogue("VALYGAR") !IsValidForPartyDialog("Mazzy") IsValidForPartyDialog("Aerie")~ THEN EXTERN AERIEJ 183
IF ~!IsValidForPartyDialog("Jaheira") !IsValidForPartyDialogue("VALYGAR") IsValidForPartyDialog("Mazzy")~ THEN EXTERN MAZZYJ 197
END

EXTEND_BOTTOM MAZZYJ 197
IF ~!IsValidForPartyDialog("Minsc") !IsValidForPartyDialogue("Anomen") !IsValidForPartyDialog("Korgan") IsValidForPartyDialog("Aerie")~ THEN EXTERN AERIEJ 183
END

ALTER_TRANS 
MAZZYJ 
BEGIN 197 END 
BEGIN 3 END
BEGIN "TRIGGER" ~IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("ANOMEN")
Global("AN_KorganTalk","AR0307",0)~ END

EXTEND_BOTTOM ANOMENJ 274 
IF ~IsValidForPartyDialog("Korgan") !IsValidForPartyDialog("Nalia") ~ THEN EXTERN KORGANJ 141
IF ~IsValidForPartyDialogue("Nalia")~ THEN EXTERN NALIAJ 284
END

EXTEND_BOTTOM NALIAJ 284
IF ~IsValidForPartyDialog("Korgan")~ THEN EXTERN KORGANJ 141
END

// Бодхи
EXTEND_BOTTOM YOSHJ 77 
IF ~!IsValidForPartyDialog("Jan") IsValidForPartyDialog("Nalia")~ THEN EXTERN NALIAJ 255
IF ~IsValidForPartyDialog("Jan")~ THEN EXTERN JANJ 119
END

EXTEND_BOTTOM JANJ 119 
IF ~IsValidForPartyDialog("Nalia")~ THEN EXTERN NALIAJ 255
END



// Солафейн
EXTEND_BOTTOM VICONIJ 95 
IF ~!IfValidForPartyDialogue("Korgan") !IsValidForPartyDialog("HaerDalis") !IsValidForPartyDialog("Jaheira") IsValidForPartyDialog("Anomen")~ THEN EXTERN ANOMENJ 253
IF ~!IfValidForPartyDialogue("Korgan") !IsValidForPartyDialog("HaerDalis") IsValidForPartyDialog("Jaheira")~ THEN EXTERN JAHEIRAJ 435
IF ~!IfValidForPartyDialogue("Korgan") IsValidForPartyDialog("HaerDalis")~ THEN EXTERN HAERDAJ 96
IF ~IfValidForPartyDialogue("Korgan")~ THEN EXTERN KORGANJ 110
END

EXTEND_BOTTOM KORGANJ 112 
IF ~!IsValidForPartyDialog("HaerDalis") !IsValidForPartyDialog("Jaheira") IsValidForPartyDialog("Anomen")~ THEN EXTERN ANOMENJ 253
IF ~!IsValidForPartyDialog("HaerDalis") IsValidForPartyDialog("Jaheira")~ THEN EXTERN JAHEIRAJ 435
IF ~IsValidForPartyDialog("HaerDalis")~ THEN EXTERN HAERDAJ 96
END

EXTEND_BOTTOM HAERDAJ 97
IF ~!IsValidForPartyDialog("Jaheira") IsValidForPartyDialog("Anomen")~ THEN EXTERN ANOMENJ 253
IF ~IsValidForPartyDialog("Jaheira")~ THEN EXTERN JAHEIRAJ 435
END

EXTEND_BOTTOM JAHEIRAJ 436
IF ~IsValidForPartyDialog("Anomen")~ THEN EXTERN ANOMENJ 253
END

// Сахуагины
EXTEND_BOTTOM JANJ 163 
IF ~!IsValidForPartyDialog("Imoen") IsValidForPartyDialog("Nalia")~ THEN EXTERN NALIAJ 279
IF ~IsValidForPartyDialog("Imoen2")~ THEN EXTERN IMOEN2J 21
END

EXTEND_BOTTOM IMOEN2J 21
IF ~IsValidForPartyDialog("Nalia")~ THEN EXTERN NALIAJ 279
END