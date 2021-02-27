// Глашатаи

EXTEND_TOP TOWNC01 %state% 
+ ~Global("ANtowncrHero","GLOBAL",0)~ + @95 DO ~SetGlobal("ANtowncrHero","GLOBAL",1)~ + ANtowncrHero1
+ ~Global("ANtowncrHero","GLOBAL",1)~ + @99 DO ~SetGlobal("ANtowncrHero","GLOBAL",2)~ + ANtowncrHero3 
END

APPEND TOWNC01

IF ~~ THEN BEGIN ANtowncrHero1 
  SAY @96
IF ~~ THEN REPLY @97 + ANtowncrHero2 
END

IF ~~ THEN BEGIN ANtowncrHero2 
  SAY @9700
IF ~~ THEN REPLY @9701 + ANtowncrHero2.1 
END
IF ~~ THEN BEGIN ANtowncrHero2.1 
  SAY @98
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANtowncrHero3 
  SAY @100
IF ~~ THEN EXIT
END

END
