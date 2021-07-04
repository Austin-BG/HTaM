APPEND PLAYER1
IF WEIGHT #-1 ~AreaCheck("AR2600") Global("AN_AgnesWitch","AR2600",2)~ THEN BEGIN ANSIlfaFirstTalk
  SAY @0 
IF ~~ THEN EXTERN AERIEJ ANSIlfaFirstTalk1
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN ANSIlfaFirstTalk1
  SAY @1
=@2
=@3  
IF ~~ THEN REPLY @4 GOTO ANSIlfaFirstTalk2
IF ~~ THEN REPLY @5 GOTO ANSIlfaFirstTalk2
END

IF ~~ THEN BEGIN ANSIlfaFirstTalk2
  SAY @6
IF ~~ THEN REPLY @7 GOTO ANSIlfaFirstTalk3
END

IF ~~ THEN BEGIN ANSIlfaFirstTalk3
  SAY @8
IF ~~ THEN REPLY @9 GOTO ANSIlfaFirstTalk4_1
IF ~~ THEN REPLY @10 GOTO ANSIlfaFirstTalk4_2
END

IF ~~ THEN BEGIN ANSIlfaFirstTalk4_1
  SAY @11
IF ~~ THEN DO ~SetGlobal("AN_AgnesWitch","AR2600",4) RealSetGlobalTimer("ANAgnesTalkTimer","GLOBAL",10)~ REPLY @12 GOTO ANSIlfaFirstTalkEndYES
IF ~~ THEN DO ~SetGlobal("AN_AgnesWitch","AR2600",3)~ REPLY @15 GOTO ANSIlfaFirstTalkEndNO
END

IF ~~ THEN BEGIN ANSIlfaFirstTalk4_2
  SAY @13
IF ~~ THEN DO ~SetGlobal("AN_AgnesWitch","AR2600",4) RealSetGlobalTimer("ANAgnesTalkTimer","GLOBAL",10)~ REPLY @14 GOTO ANSIlfaFirstTalkEndYES
IF ~~ THEN DO ~SetGlobal("AN_AgnesWitch","AR2600",3)~ REPLY @15 GOTO ANSIlfaFirstTalkEndNO
END

IF ~~ THEN BEGIN ANSIlfaFirstTalkEndYES
  SAY @64
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANSIlfaFirstTalkEndNO
  SAY @16
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANagnesWitchTalkKill
  SAY @40
IF ~~ THEN REPLY @38 EXTERN ANagness ANagnesWitchTalk5  
IF ~~ THEN DO ~ActionOverride("ANagness", Enemy()) ChangeEnemyAlly("ANagness",ENEMY)~ REPLY @41 EXTERN ANagness ANagnesWitchTalkKill1
END

IF ~~ THEN BEGIN ANagnesWitchTalk6
  SAY @44
IF ~~ THEN DO ~ActionOverride("ANagness", EscapeArea())~ REPLY @45 GOTO ANagnesWitchTalk6_1
IF ~PartyGoldLT(1999)~ THEN DO ~TakePartyGold(2000) SetGlobal("AN_AgnesWitch","AR2600",7)~ REPLY @53 EXTERN ANagness ANagnesWitchTalkOK
IF ~~ THEN DO ~SetGlobal("AN_AgnesWitch","AR2600",10)~ REPLY @54 EXTERN ANagness ANagnesWitchTalkLater
END

IF ~~ THEN BEGIN ANagnesWitchTalk6_1
  SAY @46
IF ~~ THEN EXIT
END

END


BEGIN ANagness

IF ~Global("AN_AgnesWitch","AR2600",5)~ THEN BEGIN ANagnesWitchTalk
  SAY @17
IF ~~ THEN DO ~SetGlobal("AN_AgnesWitch","AR2600",6)~ REPLY @18 GOTO ANagnesWitchTalk1
IF ~~ THEN DO ~SetGlobal("AN_AgnesWitch","AR2600",6)~ REPLY @19 GOTO ANagnesWitchTalk2
END

IF ~~ THEN BEGIN ANagnesWitchTalk1
  SAY @20
IF ~GlobalGT("ANsirene","GLOBAL",10)~ THEN REPLY @22 GOTO ANagnesWitchTalk3
IF ~~ THEN REPLY @24 EXTERN AERIEJ ANagnesWitchTalk4
END

IF ~~ THEN BEGIN ANagnesWitchTalk2
  SAY @21
IF ~~ THEN REPLY @25 EXTERN AERIEJ ANagnesWitchTalk4
END

IF ~~ THEN BEGIN ANagnesWitchTalk3
  SAY @23
IF ~~ THEN EXTERN AERIEJ ANagnesWitchTalk4
END

IF ~~ THEN BEGIN ANagnesWitchTalkKill1
  SAY @42
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANagnesWitchTalk5
  SAY @52
IF ~~ THEN REPLY @43 EXTERN AERIEJ ANagnesWitchTalk6
IF ~PartyGoldLT(1999)~ THEN DO ~TakePartyGold(2000) SetGlobal("AN_AgnesWitch","AR2600",7)~ REPLY @53 GOTO ANagnesWitchTalkOK
IF ~~ THEN DO ~SetGlobal("AN_AgnesWitch","AR2600",10)~ REPLY @54 GOTO ANagnesWitchTalkLater
END

IF ~~ THEN BEGIN ANagnesWitchTalkLater
  SAY @55
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANagnesWitchTalkOK
  SAY @56
IF ~~ THEN EXIT
END

IF ~Global("AN_AgnesWitch","AR2600",10)~ THEN BEGIN ANagnesWitchTalkLater1
  SAY @61
IF ~PartyGoldGT(1999)~ THEN DO ~TakePartyGold(2000) SetGlobal("AN_AgnesWitch","AR2600",7)~ REPLY @53 GOTO ANagnesWitchTalkOK
IF ~~ THEN REPLY @62 GOTO ANagnesWitchTalkLater
IF ~~ THEN DO ~ActionOverride("ANagness", Enemy()) ChangeEnemyAlly("ANagness",ENEMY)~ REPLY @63 EXTERN ANagness ANagnesWitchTalkKill1
END


CHAIN AERIEJ ANagnesWitchTalk4
@26
== ANagness @27
== AERIEJ @28
== ANagness @29
== AERIEJ @30
== ANagness @31
== AERIEJ @32
== ANagness @33
== AERIEJ @34
== ANagness @35
== AERIEJ @36
== ANagness @37
END
IF ~~ THEN REPLY @38 EXTERN ANagness ANagnesWitchTalk5
IF ~~ THEN REPLY @39 EXTERN AERIEJ ANagnesWitchTalkKill

// Успех, Агнес жива
CHAIN IF WEIGHT #-99 ~Global("AN_AgnesWitch","AR2600",8)~ THEN AERIEJ ANagnesWitchTalkEnd1
@57 DO ~SetGlobal("AN_AgnesWitch","AR2600",9)~
== ANagness @58 DO ~EscapeArea()~
== AERIEJ @59
=@60
EXIT

// Успех, Агнес мертва
CHAIN IF WEIGHT #-99 ~Global("AN_AgnesWitch","AR2600",11)~ THEN AERIEJ ANagnesWitchTalkEnd2
@47 DO ~SetGlobal("AN_AgnesWitch","AR2600",12)~
== PLAYER1 @48
== AERIEJ @49
=@50
=@51
EXIT