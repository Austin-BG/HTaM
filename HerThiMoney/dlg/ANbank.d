// Main Clerk

BEGIN ANclerk2

IF ~!AreaCheck("AR0700") NumTimesTalkedTo(0)~ THEN BEGIN ANclerk2-helloNew 
  SAY @12
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ + ANclerk2-hello1 
END

IF ~!AreaCheck("AR0700") NumTimesTalkedToGT(0)~ THEN BEGIN ANclerk2-helloNoNew 
  SAY @66
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ + ANclerk2-hello1 
END

IF ~~ THEN BEGIN ANclerk2-hello1 
  SAY @38
IF ~~ THEN REPLY @13 + ANclerk2-bank
IF ~Global("AnOwniBankTalk","GLOBAL",8) Global("ANClerkName","AN0720",1)~ THEN REPLY @163 + ANclerk2-NewsOK
IF ~Global("ANallGroupDead","GLOBAL",1) Global("ANClerkName","AN0720",1)~ THEN REPLY @163 + ANclerk2-NewsAllDead
IF ~Global("ANClerkName","AN0720",1) OR(2) GlobalTimerExpired("AnOwniBankThinkTimer","GLOBAL") GlobalTimerExpired("AnOwniBankBattleTimerSkipping","GLOBAL")~ THEN REPLY @163 + ANclerk2-NewsSkip
IF ~!Global("AnOwniBankTalk","GLOBAL",8) Global("ANClerkName","AN0720",1) !GlobalTimerExpired("AnOwniBankThinkTimer","GLOBAL") !GlobalTimerExpired("AnOwniBankBattleTimerSkipping","GLOBAL") !Global("ANallGroupDead","GLOBAL",1)~ THEN REPLY @163 + ANclerk2-Nonews
IF ~Global("AnOwniBankTalk","GLOBAL",8) Global("ANClerkName","AN0720",0)~ THEN REPLY @172 + ANclerk2-NewsOK
IF ~Global("ANallGroupDead","GLOBAL",1) Global("ANClerkName","AN0720",0)~ THEN REPLY @172 + ANclerk2-NewsAllDead
IF ~Global("ANClerkName","AN0720",0) OR(2) GlobalTimerExpired("AnOwniBankThinkTimer","GLOBAL") GlobalTimerExpired("AnOwniBankBattleTimerSkipping","GLOBAL")~ THEN REPLY @172 + ANclerk2-NewsSkip
IF ~!Global("AnOwniBankTalk","GLOBAL",8) Global("ANClerkName","AN0720",0) !GlobalTimerExpired("AnOwniBankThinkTimer","GLOBAL") !GlobalTimerExpired("AnOwniBankBattleTimerSkipping","GLOBAL") !Global("ANallGroupDead","GLOBAL",1)~ THEN REPLY @172 + ANclerk2-Nonews
IF ~PartyGoldGT(999) PartyHasItem("ANveksl") !Global("AnKorganUriDeal","GLOBAL",1) !Global("AnKorganCreditOtkaz","GLOBAL",1) !Global("ANDwarfCreditPay","GLOBAL",3) !Global("ANDwarfCreditPay","GLOBAL",4) InParty("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN REPLY @140 + ANclerk2-Dwarf-veksel
IF ~PartyGoldGT(4999) Global("ANDwarfCreditPay","GLOBAL",1) InParty("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN REPLY @134 + ANclerk2-Dwarfcredit
IF ~PartyGoldGT(3999) Global("ANDwarfCreditPayPart","GLOBAL",1) Global("ANDwarfCreditPay","GLOBAL",2) InParty("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN REPLY @134 + ANclerk2-Dwarfcredit
IF ~PartyGoldGT(2999) Global("ANDwarfCreditPayPart","GLOBAL",2) Global("ANDwarfCreditPay","GLOBAL",2) InParty("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN REPLY @134 + ANclerk2-Dwarfcredit
IF ~PartyGoldGT(1999) Global("ANDwarfCreditPayPart","GLOBAL",3) Global("ANDwarfCreditPay","GLOBAL",2) InParty("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN REPLY @134 + ANclerk2-Dwarfcredit
IF ~PartyGoldGT(999) Global("ANDwarfCreditPayPart","GLOBAL",4) Global("ANDwarfCreditPay","GLOBAL",2) InParty("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN REPLY @134 + ANclerk2-Dwarfcredit
IF ~!Global("ANbankDepositOpened","GLOBAL",1)~ THEN REPLY @68 DO ~SetGlobal("ANbankDepositOpened","GLOBAL",1)~ + ANclerk2-depositOpen
IF ~Global("ANbankDepositOpened","GLOBAL",1)~ THEN REPLY @69 + ANclerk2-depositPut
IF ~Global("ANbankDepositOpened","GLOBAL",1) GlobalGT("ANBankMoney","GLOBAL",0)~ THEN REPLY @70 + ANclerk2-depositTake
IF ~Global("ANbankDepositOpened","GLOBAL",1) GlobalGT("ANBankMoney","GLOBAL",0)~ THEN REPLY @130 + ANclerk2-depositCheck
IF ~~ THEN REPLY @34 + ANclerk2-bad
IF ~~ THEN REPLY @29 + ANclerk2-Goodbye
IF ~IsValidForPartyDialog("Jaheira") Global("ANKhalidDeposit","AN0720",0)~ THEN DO ~SetGlobal("ANKhalidDeposit","AN0720",1)~ EXTERN JAHEIRAJ ANclerk2-KhalidDeposit
END

IF ~~ THEN BEGIN ANclerk2-Nonews
  SAY @166
IF ~~ THEN REPLY @167 + ANclerk2-bank
IF ~~ THEN REPLY @39 + ANclerk2-hello1
IF ~~ THEN REPLY @170 + ANclerk2-bad
IF ~~ THEN REPLY @30 + ANclerk2-Goodbye
END

IF ~~ THEN BEGIN ANclerk2-NewsSkip
  SAY @164
 =@165 
IF ~~ THEN REPLY @167 + ANclerk2-bank
IF ~~ THEN REPLY @39 + ANclerk2-hello1
IF ~~ THEN REPLY @171 + ANclerk2-bad
IF ~~ THEN REPLY @30 + ANclerk2-Goodbye
END

IF ~~ THEN BEGIN ANclerk2-NewsOK
  SAY @164
 =@173 
IF ~~ THEN REPLY @167 + ANclerk2-bank
IF ~~ THEN REPLY @39 + ANclerk2-hello1
IF ~~ THEN REPLY @171 + ANclerk2-bad
IF ~~ THEN REPLY @30 + ANclerk2-Goodbye
END

IF ~~ THEN BEGIN ANclerk2-NewsAllDead
  SAY @164
 =@174 
IF ~~ THEN REPLY @167 + ANclerk2-bank
IF ~~ THEN REPLY @39 + ANclerk2-hello1
IF ~~ THEN REPLY @171 + ANclerk2-bad
IF ~~ THEN REPLY @30 + ANclerk2-Goodbye
END

IF ~~ THEN BEGIN ANclerk2-depositOpen
  SAY @71
 =@72
=@73 
IF ~~ THEN REPLY @74 + ANclerk2-depositPut
IF ~~ THEN REPLY @75 + ANclerk2-Goodbye
END

IF ~~ THEN BEGIN ANclerk2-depositPut
  SAY @76
=@77  
IF ~PartyGoldGT(99)~ THEN REPLY @81 DO ~TakePartyGold(100) DestroyGold(100) IncrementGlobal("ANBankMoney","GLOBAL",100) IncrementGlobal("ANBankMoney_Percent","GLOBAL",2) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_added
IF ~PartyGoldGT(499)~ THEN REPLY @82 DO ~TakePartyGold(500) DestroyGold(500) IncrementGlobal("ANBankMoney","GLOBAL",500) IncrementGlobal("ANBankMoney_Percent","GLOBAL",10) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_added
IF ~PartyGoldGT(999)~ THEN REPLY @83 DO ~TakePartyGold(1000) DestroyGold(1000) IncrementGlobal("ANBankMoney","GLOBAL",1000) IncrementGlobal("ANBankMoney_Percent","GLOBAL",20) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_added
IF ~PartyGoldGT(1999)~ THEN REPLY @84 DO ~TakePartyGold(2000) DestroyGold(2000) IncrementGlobal("ANBankMoney","GLOBAL",2000) IncrementGlobal("ANBankMoney_Percent","GLOBAL",40) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_added
IF ~PartyGoldGT(2999)~ THEN REPLY @85 DO ~TakePartyGold(3000) DestroyGold(3000) IncrementGlobal("ANBankMoney","GLOBAL",3000) IncrementGlobal("ANBankMoney_Percent","GLOBAL",60) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_added
IF ~PartyGoldGT(3999)~ THEN REPLY @86 DO ~TakePartyGold(4000) DestroyGold(4000) IncrementGlobal("ANBankMoney","GLOBAL",4000) IncrementGlobal("ANBankMoney_Percent","GLOBAL",80) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_added
IF ~PartyGoldGT(4999)~ THEN REPLY @87 DO ~TakePartyGold(5000) DestroyGold(5000) IncrementGlobal("ANBankMoney","GLOBAL",5000) IncrementGlobal("ANBankMoney_Percent","GLOBAL",100) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_added
IF ~PartyGoldGT(9999)~ THEN REPLY @88 DO ~TakePartyGold(10000) DestroyGold(10000) IncrementGlobal("ANBankMoney","GLOBAL",10000) IncrementGlobal("ANBankMoney_Percent","GLOBAL",200) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_added
IF ~PartyGoldGT(19999)~ THEN REPLY @89 DO ~TakePartyGold(20000) DestroyGold(20000) IncrementGlobal("ANBankMoney","GLOBAL",20000) IncrementGlobal("ANBankMoney_Percent","GLOBAL",400) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_added
IF ~PartyGoldGT(29999)~ THEN REPLY @90 DO ~TakePartyGold(30000) DestroyGold(30000) IncrementGlobal("ANBankMoney","GLOBAL",30000) IncrementGlobal("ANBankMoney_Percent","GLOBAL",600) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_added
IF ~PartyGoldGT(39999)~ THEN REPLY @91 DO ~TakePartyGold(40000) DestroyGold(40000) IncrementGlobal("ANBankMoney","GLOBAL",40000) IncrementGlobal("ANBankMoney_Percent","GLOBAL",800) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_added
IF ~PartyGoldGT(49999)~ THEN REPLY @92 DO ~TakePartyGold(50000) DestroyGold(50000) IncrementGlobal("ANBankMoney","GLOBAL",50000) IncrementGlobal("ANBankMoney_Percent","GLOBAL",1000) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_added
IF ~PartyGoldGT(99999)~ THEN REPLY @93 DO ~TakePartyGold(100000) DestroyGold(100000) IncrementGlobal("ANBankMoney","GLOBAL",100000) IncrementGlobal("ANBankMoney_Percent","GLOBAL",2000) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_added
IF ~~ THEN REPLY @80 + ANclerk2-Goodbye
END

IF ~~ THEN BEGIN ANclerk2-deposit_added
  SAY @78
IF ~~ THEN EXIT 
END

IF ~~ THEN BEGIN ANclerk2-depositTake
  SAY @76
=@77  
IF ~GlobalGT("ANBankMoney","GLOBAL",99)~     THEN REPLY @94    DO ~GiveGoldForce(100) IncrementGlobal("ANBankMoney","GLOBAL",-100) IncrementGlobal("ANBankMoney_Percent","GLOBAL",-2) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_taked  
IF ~GlobalGT("ANBankMoney","GLOBAL",499)~    THEN REPLY @95    DO ~GiveGoldForce(500) IncrementGlobal("ANBankMoney","GLOBAL",-500) IncrementGlobal("ANBankMoney_Percent","GLOBAL",-10) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_taked  
IF ~GlobalGT("ANBankMoney","GLOBAL",999)~    THEN REPLY @96   DO ~GiveGoldForce(1000) IncrementGlobal("ANBankMoney","GLOBAL",-1000) IncrementGlobal("ANBankMoney_Percent","GLOBAL",-20) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_taked  
IF ~GlobalGT("ANBankMoney","GLOBAL",1999)~   THEN REPLY @97   DO ~GiveGoldForce(2000) IncrementGlobal("ANBankMoney","GLOBAL",-2000) IncrementGlobal("ANBankMoney_Percent","GLOBAL",-40) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_taked  
IF ~GlobalGT("ANBankMoney","GLOBAL",2999)~   THEN REPLY @98   DO ~GiveGoldForce(3000) IncrementGlobal("ANBankMoney","GLOBAL",-3000) IncrementGlobal("ANBankMoney_Percent","GLOBAL",-60) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_taked  
IF ~GlobalGT("ANBankMoney","GLOBAL",3999)~   THEN REPLY @99   DO ~GiveGoldForce(4000) IncrementGlobal("ANBankMoney","GLOBAL",-4000) IncrementGlobal("ANBankMoney_Percent","GLOBAL",-80) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_taked  
IF ~GlobalGT("ANBankMoney","GLOBAL",4999)~   THEN REPLY @100   DO ~GiveGoldForce(5000) IncrementGlobal("ANBankMoney","GLOBAL",-5000) IncrementGlobal("ANBankMoney_Percent","GLOBAL",-100) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_taked  
IF ~GlobalGT("ANBankMoney","GLOBAL",9999)~   THEN REPLY @101  DO ~GiveGoldForce(10000) IncrementGlobal("ANBankMoney","GLOBAL",-10000) IncrementGlobal("ANBankMoney_Percent","GLOBAL",-200) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_taked  
IF ~GlobalGT("ANBankMoney","GLOBAL",19999)~  THEN REPLY @102  DO ~GiveGoldForce(20000) IncrementGlobal("ANBankMoney","GLOBAL",-20000) IncrementGlobal("ANBankMoney_Percent","GLOBAL",-400) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_taked  
IF ~GlobalGT("ANBankMoney","GLOBAL",29999)~  THEN REPLY @103  DO ~GiveGoldForce(30000) IncrementGlobal("ANBankMoney","GLOBAL",-30000) IncrementGlobal("ANBankMoney_Percent","GLOBAL",-600) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_taked  
IF ~GlobalGT("ANBankMoney","GLOBAL",39999)~  THEN REPLY @104  DO ~GiveGoldForce(40000) IncrementGlobal("ANBankMoney","GLOBAL",-40000) IncrementGlobal("ANBankMoney_Percent","GLOBAL",-800) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_taked  
IF ~GlobalGT("ANBankMoney","GLOBAL",49999)~  THEN REPLY @105  DO ~GiveGoldForce(50000) IncrementGlobal("ANBankMoney","GLOBAL",-50000) IncrementGlobal("ANBankMoney_Percent","GLOBAL",-1000) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_taked  
IF ~GlobalGT("ANBankMoney","GLOBAL",99999)~  THEN REPLY @106 DO ~GiveGoldForce(100000) IncrementGlobal("ANBankMoney","GLOBAL",-100000) IncrementGlobal("ANBankMoney_Percent","GLOBAL",-2000) SetGlobal("AN_Check_Money","GLOBAL",0) SetGlobal("ANBankTimerMoney","GLOBAL",1)SetTokenGlobal("ANBankMoney","GLOBAL","AN_BANK_GOLD")~ + ANclerk2-deposit_taked  
IF ~~ THEN REPLY @131 DO ~%bank_gld_give%~ + ANclerk2-deposit_taked 
IF ~~ THEN REPLY @80 + ANclerk2-Goodbye
END

IF ~~ THEN BEGIN ANclerk2-deposit_taked  
  SAY @79
IF ~~ THEN EXIT 
END

IF ~~ THEN BEGIN ANclerk2-depositCheck
SAY @132
IF ~~ THEN REPLY @133 + ANclerk2-hello1
IF ~~ THEN REPLY @30 + ANclerk2-Goodbye
END


IF ~~ THEN BEGIN ANclerk2-bank
  SAY @14
IF ~~ THEN DO ~SetGlobal("ANClerkName","AN0720",1)~ REPLY @15 + ANclerk2-name
IF ~~ THEN REPLY @16 + ANclerk2-calimport
IF ~~ THEN REPLY @17 + ANclerk2-whenopen
IF ~~ THEN REPLY @18 + ANclerk2-money
IF ~~ THEN REPLY @19 + ANclerk2-shares
IF ~!GlobalTimerExpired("AnOwniBankThinkTimer","GLOBAL") !GlobalTimerExpired("AnOwniBankBattleTimerSkipping","GLOBAL") !Global("AnOwniBankTalk","GLOBAL",8)~ THEN REPLY @35 + ANclerk2-stealNo
IF ~OR(3) GlobalTimerExpired("AnOwniBankThinkTimer","GLOBAL") GlobalTimerExpired("AnOwniBankBattleTimerSkipping","GLOBAL") Global("AnOwniBankTalk","GLOBAL",8)~ THEN REPLY @35 + ANclerk2-steal
IF ~~ THEN REPLY @39 + ANclerk2-hello1
IF ~~ THEN REPLY @32 + ANclerk2-bad
IF ~~ THEN REPLY @30 + ANclerk2-Goodbye
END

IF ~~ THEN BEGIN ANclerk2-name
  SAY @20
IF ~~ THEN REPLY @21 + ANclerk2-name1
IF ~~ THEN REPLY @31 + ANclerk2-bad
IF ~~ THEN REPLY @30 + ANclerk2-Goodbye
END

IF ~~ THEN BEGIN ANclerk2-name1
  SAY @22
IF ~~ THEN REPLY @24 + ANclerk2-training
IF ~~ THEN REPLY @23 + ANclerk2-bank
IF ~~ THEN REPLY @39 + ANclerk2-hello1
IF ~~ THEN REPLY @32 + ANclerk2-bad
IF ~~ THEN REPLY @30 + ANclerk2-Goodbye
END

IF ~~ THEN BEGIN ANclerk2-training
  SAY @25
IF ~CheckStatGT(Player1,8,CHR)~ THEN REPLY @26 + ANclerk2-training1
IF ~!CheckStatGT(Player1,8,CHR)~ THEN REPLY @26 + ANclerk2-training2
IF ~~ THEN REPLY @23 + ANclerk2-bank
IF ~~ THEN REPLY @39 + ANclerk2-hello1
IF ~~ THEN REPLY @32 + ANclerk2-bad
IF ~~ THEN REPLY @30 + ANclerk2-Goodbye
END

IF ~~ THEN BEGIN ANclerk2-training1
  SAY @28
IF ~~ THEN REPLY @40 + ANclerk2-training3
IF ~~ THEN REPLY @42 + ANclerk2-hello1
IF ~~ THEN REPLY @39 + ANclerk2-hello1
IF ~~ THEN REPLY @31 + ANclerk2-bad
IF ~~ THEN REPLY @30 + ANclerk2-Goodbye
END

IF ~~ THEN BEGIN ANclerk2-training2
  SAY @27
IF ~~ THEN + ANclerk2-hello1 
END

IF ~~ THEN BEGIN ANclerk2-training3
  SAY @41
=@43 
=@44 
=@45 
=@46 
=@47 
=@48  
IF ~~ THEN DO ~SetGlobal("ANClerkSoulTalk","AN0720",1)~ REPLY @49 + ANclerk2-training3.1
IF ~~ THEN DO ~SetGlobal("ANClerkSoulTalk","AN0720",1)~ REPLY @50 + ANclerk2-training3.2
IF ~OR(2) Class(Player1,DRUID) Class(Player1,CLERIC)~ THEN DO ~SetGlobal("ANClerkSoulTalk","AN0720",1)~ REPLY @51 + ANclerk2-training3.2
IF ~~ THEN DO ~SetGlobal("ANClerkSoulTalk","AN0720",1)~ REPLY @39 + ANclerk2-hello1
IF ~~ THEN DO ~SetGlobal("ANClerkSoulTalk","AN0720",1)~ REPLY @31 + ANclerk2-bad
IF ~~ THEN DO ~SetGlobal("ANClerkSoulTalk","AN0720",1)~ REPLY @30 + ANclerk2-Goodbye
END

IF ~~ THEN BEGIN ANclerk2-training3.1
  SAY @52
IF ~~ THEN REPLY @55 + ANclerk2-bank  
IF ~~ THEN REPLY @39 + ANclerk2-hello1
IF ~~ THEN REPLY @32 + ANclerk2-bad
IF ~~ THEN REPLY @30 + ANclerk2-Goodbye
END

IF ~~ THEN BEGIN ANclerk2-training3.2
  SAY @53
 =@54 
IF ~~ THEN REPLY @55 + ANclerk2-bank 
IF ~~ THEN REPLY @39 + ANclerk2-hello1
IF ~~ THEN REPLY @32 + ANclerk2-bad
IF ~~ THEN REPLY @30 + ANclerk2-Goodbye
END

IF ~~ THEN BEGIN ANclerk2-bad
  SAY @33
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANclerk2-stealNo
  SAY @36
IF ~~ THEN REPLY @37 + ANclerk2-hello1 
IF ~~ THEN REPLY @13 + ANclerk2-bank 
IF ~~ THEN REPLY @169 + ANclerk2-bad
IF ~~ THEN REPLY @30 + ANclerk2-Goodbye
END

IF ~~ THEN BEGIN ANclerk2-steal
  SAY @168
IF ~~ THEN REPLY @37 + ANclerk2-hello1 
IF ~~ THEN REPLY @13 + ANclerk2-bank 
IF ~~ THEN REPLY @169 + ANclerk2-bad
IF ~~ THEN REPLY @30 + ANclerk2-Goodbye
END

IF ~~ THEN BEGIN ANclerk2-calimport
  SAY @56
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ EXTERN PLAYER1 ANclerk2-calimport1
END

IF ~~ THEN BEGIN ANclerk2-calimport2
  SAY @58
=@59  
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ EXTERN PLAYER1 ANclerk2-calimport3
END

IF ~~ THEN BEGIN ANclerk2-calimport4
  SAY @61
IF ~~ THEN REPLY @55 + ANclerk2-bank  
IF ~~ THEN REPLY @30 + ANclerk2-Goodbye
END

IF ~~ THEN BEGIN ANclerk2-whenopen
  SAY @62
IF ~~ THEN REPLY @55 + ANclerk2-bank  
IF ~~ THEN REPLY @30 + ANclerk2-Goodbye
END

IF ~~ THEN BEGIN ANclerk2-money
  SAY @63
IF ~~ THEN REPLY @55 + ANclerk2-bank  
IF ~~ THEN REPLY @30 + ANclerk2-Goodbye
IF ~IsValidForPartyDialog("Jan") Global("AnJanClerkTalk","AN0720",0)~ THEN DO ~SetGlobal("AnJanClerkTalk","AN0720",1)~ EXTERN JANJ ANclerk2-TurnipDeposit
END

IF ~~ THEN BEGIN ANclerk2-shares
  SAY @64
IF ~~ THEN REPLY @65 + ANclerk2-hello1 
IF ~~ THEN REPLY @13 + ANclerk2-bank 
IF ~~ THEN REPLY @31 + ANclerk2-bad
IF ~~ THEN REPLY @30 + ANclerk2-Goodbye
END

IF ~~ THEN BEGIN ANclerk2-TurnipDeposit1
  SAY @128
IF ~~ THEN EXTERN JANJ ANclerk2-TurnipDeposit2 
END

IF ~~ THEN BEGIN ANclerk2-Goodbye
  SAY @67
IF ~~ THEN EXIT 
END


IF ~~ THEN BEGIN ANclerk2-Dwarf-veksel
  SAY @141
IF ~~ THEN REPLY @142 + ANclerk2-Dwarf-veksel1
END

IF ~~ THEN BEGIN ANclerk2-Dwarf-veksel1
  SAY @143
IF ~~ THEN REPLY @144 + ANclerk2-Dwarf-veksel1_OK
IF ~Global("ANClerkSoulTalk","AN0720",1)~ THEN REPLY @145 + ANclerk2-Dwarf-veksel1_900Yes
IF ~!Global("ANClerkSoulTalk","AN0720",1)~ THEN REPLY @145 + ANclerk2-Dwarf-veksel1_900No
END

IF ~~ THEN BEGIN ANclerk2-Dwarf-veksel1_900No
  SAY @147
IF ~~ THEN REPLY @148 + ANclerk2-Dwarf-veksel1_OK
IF ~~ THEN REPLY @157 + ANclerk2-Dwarf-veksel_Otkaz
END

IF ~~ THEN BEGIN ANclerk2-Dwarf-veksel1_900Yes
  SAY @146
IF ~~ THEN + ANclerk2-Dwarf-veksel1_OK
END

IF ~~ THEN BEGIN ANclerk2-Dwarf-veksel1_OK
  SAY @149  
IF ~~ THEN EXTERN KORGANJ ANkorgan_Uri
END

IF ~~ THEN BEGIN ANclerk2-Dwarf-veksel1_OK1
  SAY @152  
IF ~~ THEN REPLY @153 + ANclerk2-Dwarf-veksel1_OK2
END

IF ~~ THEN BEGIN ANclerk2-Dwarf-veksel1_OK2
  SAY @152  
IF ~~ THEN DO ~SetGlobal("AnKorganUriDeal","GLOBAL",1)~ REPLY @154 EXIT
END

IF ~~ THEN BEGIN ANclerk2-Dwarf-veksel_Otkaz
  SAY @159
IF ~~ THEN DO ~SetGlobal("AnKorganCreditOtkaz","GLOBAL",1)~ EXTERN KORGANJ ANkorgan_otkaz
END

IF ~~ THEN BEGIN ANclerk2-Dwarf-veksel_Otkaz_Promenade
  SAY @159
IF ~~ THEN DO ~SetGlobal("AnKorganCreditOtkaz","GLOBAL",1) ActionOverride("ANClerk2",EscapeArea())~ EXTERN KORGANJ ANkorgan_otkaz
END

// Ури у Променада
IF ~AreaCheck("AR0700") Global("AnKorganUriDeal","GLOBAL",1)~ THEN BEGIN AnKorganUriDeal_1
  SAY @155
IF ~~ THEN REPLY @156 + AnKorganUriDeal_2
IF ~~ THEN REPLY @157 + ANclerk2-Dwarf-veksel_Otkaz_Promenade
END

IF ~~ THEN BEGIN AnKorganUriDeal_2
  SAY @158
IF ~~ THEN REPLY @160 + AnKorganUriDeal_3
END

IF ~~ THEN BEGIN AnKorganUriDeal_3
  SAY @161
IF ~~ THEN DO ~SetGlobal("ANDwarfCreditPay","GLOBAL",3) AddJournalEntry(@1023,QUEST_DONE) ActionOverride("ANClerk2",EscapeArea())~ EXIT
END

APPEND KORGANJ

IF ~~ THEN BEGIN ANkorgan_otkaz
  SAY @162
IF ~~ THEN DO ~ChangeAIScript("",DEFAULT) SetLeavePartyDialogueFile() LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ANkorgan_Uri
  SAY @150
IF ~~ THEN REPLY @151 EXTERN ANClerk2 ANclerk2-Dwarf-veksel1_OK1
END

END


APPEND PLAYER1

IF ~~ THEN BEGIN ANclerk2-calimport1
  SAY @57
IF ~~ THEN EXTERN ANclerk2 ANclerk2-calimport2
END

IF ~~ THEN BEGIN ANclerk2-calimport3
  SAY @60
IF ~~ THEN EXTERN ANclerk2 ANclerk2-calimport4
END

END

// Clerk

BEGIN ANclerk1

IF ~!Global("ANStashVisit","GLOBAL",2) !Global("ANStashRenalJOB","GLOBAL",9) RandomNum(5,1)~ THEN BEGIN ANclerk1-1 
  SAY @0
IF ~~ THEN EXIT
END

IF ~!Global("ANStashVisit","GLOBAL",2) !Global("ANStashRenalJOB","GLOBAL",9) RandomNum(5,2)~ THEN BEGIN ANclerk1-2
  SAY @1 
IF ~~ THEN EXIT
END

IF ~!Global("ANStashVisit","GLOBAL",2) !Global("ANStashRenalJOB","GLOBAL",9) RandomNum(5,3)~ THEN BEGIN ANclerk1-3
  SAY @2 
IF ~~ THEN EXIT
END

IF ~!Global("ANStashVisit","GLOBAL",2) !Global("ANStashRenalJOB","GLOBAL",9) RandomNum(5,4)~ THEN BEGIN ANclerk1-4
  SAY @3 
IF ~~ THEN EXIT
END

IF ~!Global("ANStashVisit","GLOBAL",2) !Global("ANStashRenalJOB","GLOBAL",9) RandomNum(5,5)~ THEN BEGIN ANclerk1-5
  SAY @3000
IF ~~ THEN EXIT
END


// Director

BEGIN ANdirt

IF ~RandomNum(3,1)~ THEN BEGIN ANdirt-1 
  SAY @4
IF ~~ THEN EXIT
IF ~IsValidForPartyDialog("Jan") Global("AnJanDirtTalk","AN0721",0)~ THEN DO ~SetGlobal("AnJanDirtTalk","AN0721",1)~ EXTERN JANJ ANdirt-TurnipPrice
END

IF ~RandomNum(3,2)~ THEN BEGIN ANdirt-2
  SAY @5 
IF ~~ THEN EXIT
IF ~IsValidForPartyDialog("Jan") Global("AnJanDirtTalk","AN0721",0)~ THEN DO ~SetGlobal("AnJanDirtTalk","AN0721",1)~ EXTERN JANJ ANdirt-TurnipPrice
END

IF ~RandomNum(3,3)~ THEN BEGIN ANdirt-3
  SAY @6
IF ~~ THEN EXIT
IF ~IsValidForPartyDialog("Jan") Global("AnJanDirtTalk","AN0721",0)~ THEN DO ~SetGlobal("AnJanDirtTalk","AN0721",1)~ EXTERN JANJ ANdirt-TurnipPrice
END

IF ~~ THEN BEGIN ANdirt-TurnipPrice1
  SAY @601
IF ~~ THEN EXTERN JANJ ANdirt-TurnipPrice2
END

// Client-halfling

BEGIN ANHALF1

IF ~RandomNum(3,1)~ THEN BEGIN ANHALF1-1 
  SAY @7
IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)~ THEN BEGIN ANHALF1-2
  SAY @8 
IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)~ THEN BEGIN ANHALF1-3
  SAY @9
IF ~~ THEN EXIT
END

// Bank Guard
BEGIN ANBANKG

IF ~OR(2) TimeLT(8) TimeGT(19) Global("ANbankNight","LOCALS",1)~ THEN BEGIN ANBANKG_1
  SAY @10
  IF ~~ THEN EXIT
END

IF ~TimeGT(7) TimeLT(20)~ THEN BEGIN ANBANKG_2
  SAY @11
  IF ~~ THEN EXIT
END

BEGIN ANBANKG2

IF ~!TimeOfDay(NIGHT) RandomNum(2,1)~ THEN BEGIN ANBANKG2Talk1
  SAY @254
  IF ~~ THEN EXIT
END

IF ~!TimeOfDay(NIGHT) RandomNum(2,2)~ THEN BEGIN ANBANKG2Talk2
  SAY @255
  IF ~~ THEN EXIT
END

// Cat
BEGIN ANbcat

IF ~True()~ THEN BEGIN ANbcat1 
  SAY @500
IF ~~ THEN EXIT 
END

// Jan
APPEND JANJ
IF ~~ THEN BEGIN ANclerk2-TurnipDeposit
  SAY @127
IF ~~ THEN EXTERN ANclerk2 ANclerk2-TurnipDeposit1
END

IF ~~ THEN BEGIN ANclerk2-TurnipDeposit2
  SAY @129
IF ~~ THEN EXTERN ANclerk2 ANclerk2-hello1 
END

IF ~~ THEN BEGIN ANdirt-TurnipPrice
  SAY @600
IF ~~ THEN EXTERN ANdirt ANdirt-TurnipPrice1
END

IF ~~ THEN BEGIN ANdirt-TurnipPrice2
  SAY @602
IF ~~ THEN EXIT 
END

END

// Jaheira
APPEND JAHEIRAJ
IF ~~ THEN BEGIN ANclerk2-KhalidDeposit
  SAY @107
IF ~~ THEN EXTERN JAHEIRAJ ANclerk2-KhalidDeposit1
END
END

CHAIN 
IF ~InParty("Jaheira") InMyArea("Jaheira") Global("ANKhalidDeposit","AN0720",1)~ 
THEN JAHEIRAJ ANclerk2-KhalidDeposit1
@108 DO ~SetGlobal("ANKhalidDeposit","AN0720",2)~
= @109
= @110
== ANclerk2 @111
= @112
== JAHEIRAJ @113
== ANclerk2 @114
=@115
== JAHEIRAJ @116
== ANclerk2 @117
=@126
== JAHEIRAJ @118
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @119
== JAHEIRAJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @120
== JAHEIRAJ @121
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !Dead("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @122
== JAHEIRAJ IF ~InParty("Viconia") InMyArea("Viconia") !Dead("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @123
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !Dead("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @124
== JAHEIRAJ @125
EXIT

// Promo
BEGIN ANprom

IF ~RandomNum(2,1)~ THEN BEGIN ANpromo1
  SAY @200
IF ~~ THEN EXIT
END

IF ~RandomNum(2,2)~ THEN BEGIN ANpromo2
  SAY @201
IF ~~ THEN EXIT
END

// Promo - Imoen
CHAIN  
IF WEIGHT #-1 ~InParty("Imoen2") InMyArea("Imoen2") !Dead("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) Global("ANpromobuklets","GLOBAL",0)~ 
THEN ANprom ANpromobukletsTalk1
@202 DO ~SetGlobal("ANpromobuklets","GLOBAL",1) ActionOverride(Player1,SetDialog("PLAYER1"))~
== IMOEN2J @203
== ANprom @204
= @205
== IMOEN2J @206
== ANprom @207
== IMOEN2J @208
== ANprom @209
== IMOEN2J @210
== PLAYER1 @211
== IMOEN2J @212
== ANprom @213
== IMOEN2J @214
== ANprom @215
== IMOEN2J @216
== ANprom @217
= @218 
DO ~GiveItemCreate("ANbukl","Imoen2",10,0,0)~
== IMOEN2J @219
== ANprom @220
== PLAYER1 @221
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @222
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @223
== JANJ IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @230
= @231
== ANprom IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @232
== IMOEN2J @224
== ANprom @225
== IMOEN2J @226
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @227
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @228
== IMOEN2J @229 DO ~AddJournalEntry(@1009,QUEST)~
EXIT

CHAIN  
IF WEIGHT #-2 ~InParty("Imoen2") InMyArea("Imoen2") !Dead("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) Global("ANpromobuklets","GLOBAL",2)~ 
THEN ANprom ANpromobukletsTalk2 
@233 DO ~SetGlobal("ANpromobuklets","GLOBAL",3) GiveGoldForce(500) AddexperienceParty(1000) EraseJournalEntry(@1009) AddJournalEntry(@1010,QUEST_DONE)~
= @234 
== IMOEN2J @235
== ANprom @236 
== IMOEN2J @237
EXIT

CHAIN  
IF WEIGHT #-2 ~InParty("Imoen2") InMyArea("Imoen2") !Dead("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) Global("ANpromobuklets","GLOBAL",1) PartyHasItem("ANbukl") PartyGoldGT(99)~ 
THEN TOWNC01 ANtowncrImoenTalk1 
@238 DO ~SetGlobal("ANpromobuklets","GLOBAL",2)~
== IMOEN2J @239
== TOWNC01 @240
== IMOEN2J @241
== TOWNC01 @242 DO ~TakePartyItemAll("ANbukl") TakePartyGold(100)~
== IMOEN2J @243 
= @244
== JANJ IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @245
== IMOEN2J IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @246
EXIT

CHAIN  
IF WEIGHT #-3 ~InParty("Imoen2") InMyArea("Imoen2") !Dead("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) Global("ANpromobuklets","GLOBAL",1) Global("ANtowncrimoen","GLOBAL",0) PartyHasItem("ANbukl") PartyGoldLT(100)~ 
THEN TOWNC01 ANtowncrImoenTalk2 
@238 
== IMOEN2J @239
== TOWNC01 @240
== IMOEN2J @241
== TOWNC01 @247 DO ~SetGlobal("ANtowncrimoen","GLOBAL",1)~
EXIT

CHAIN  
IF WEIGHT #-4 ~InParty("Imoen2") InMyArea("Imoen2") !Dead("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) Global("ANpromobuklets","GLOBAL",1) Global("ANtowncrimoen","GLOBAL",1) PartyHasItem("ANbukl") PartyGoldGT(99)~ 
THEN TOWNC01 ANtowncrImoenTalk3 
@248 DO ~SetGlobal("ANpromobuklets","GLOBAL",2) TakePartyItemAll("ANbukl") TakePartyGold(100)~
== IMOEN2J @243
= @244
== JANJ IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @245
== IMOEN2J IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @246
EXIT

// Promo - Neera

CHAIN  
IF WEIGHT #-1 ~InParty("Neera") Global("ANpromobuklets","GLOBAL",0)~ 
THEN ANprom ANpromobukletsTalkNeera1
@202 DO ~SetGlobal("ANpromobuklets","GLOBAL",1) ActionOverride(Player1,SetDialog("PLAYER1"))~
== IF_FILE_EXISTS NEERAJ @203
== ANprom @204
= @205
== IF_FILE_EXISTS NEERAJ @206
== ANprom @207
== IF_FILE_EXISTS NEERAJ @208
== ANprom @209
== IF_FILE_EXISTS NEERAJ @210
== PLAYER1 @249
== IF_FILE_EXISTS NEERAJ @212
== ANprom @213
== IF_FILE_EXISTS NEERAJ @214
== ANprom @215
== IF_FILE_EXISTS NEERAJ @216
== ANprom @217
= @252 
DO ~GiveItemCreate("ANbukl","Neera",10,0,0)~
== IF_FILE_EXISTS NEERAJ @219
== ANprom @220
== PLAYER1 @250
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @222
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @251
== JANJ IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @230
= @231
== ANprom IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @232
== IF_FILE_EXISTS NEERAJ @224
== ANprom @225
== IF_FILE_EXISTS NEERAJ @226
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @253
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @228
== IF_FILE_EXISTS NEERAJ @229 DO ~AddJournalEntry(@1011,QUEST)~
EXIT

CHAIN  
IF WEIGHT #-2 ~InParty("Neera") InMyArea("Neera") !Dead("Neera") !StateCheck("Neera",CD_STATE_NOTVALID) Global("ANpromobuklets","GLOBAL",2)~ 
THEN ANprom ANpromobukletsTalkNeera2 
@233 DO ~SetGlobal("ANpromobuklets","GLOBAL",3) GiveGoldForce(500) AddexperienceParty(1000) EraseJournalEntry(@1011) AddJournalEntry(@1012,QUEST_DONE)~
= @234 
== IF_FILE_EXISTS NEERAJ @235
== ANprom @236 
== IF_FILE_EXISTS NEERAJ @237
EXIT

CHAIN  
IF WEIGHT #-2 ~InParty("Neera") InMyArea("Neera") !Dead("Neera") !StateCheck("Neera",CD_STATE_NOTVALID) Global("ANpromobuklets","GLOBAL",1) PartyHasItem("ANbukl") PartyGoldGT(99)~ 
THEN TOWNC01 ANtowncrNeeraTalk1 
@238 DO ~SetGlobal("ANpromobuklets","GLOBAL",2)~
== IF_FILE_EXISTS NEERAJ @239
== TOWNC01 @240
== IF_FILE_EXISTS NEERAJ @241
== TOWNC01 @242 DO ~TakePartyItemAll("ANbukl") TakePartyGold(100)~
== IF_FILE_EXISTS NEERAJ @243 
= @244
== JANJ IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @245
== IF_FILE_EXISTS NEERAJ IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @246
EXIT

CHAIN  
IF WEIGHT #-3 ~InParty("Neera") InMyArea("Neera") !Dead("Neera") !StateCheck("Neera",CD_STATE_NOTVALID) Global("ANpromobuklets","GLOBAL",1) Global("ANtowncrneera","GLOBAL",0) PartyHasItem("ANbukl") PartyGoldLT(100)~ 
THEN TOWNC01 ANtowncrNeeraTalk2 
@238 
== IF_FILE_EXISTS NEERAJ @239
== TOWNC01 @240
== IF_FILE_EXISTS NEERAJ @241
== TOWNC01 @247 DO ~SetGlobal("ANtowncrneera","GLOBAL",1)~
EXIT

CHAIN  
IF WEIGHT #-4 ~InParty("Neera") InMyArea("Neera") !Dead("Neera") !StateCheck("Neera",CD_STATE_NOTVALID) Global("ANpromobuklets","GLOBAL",1) Global("ANtowncrneera","GLOBAL",1) PartyHasItem("ANbukl") PartyGoldGT(99)~ 
THEN TOWNC01 ANtowncrNeeraTalk3 
@248 DO ~SetGlobal("ANpromobuklets","GLOBAL",2) TakePartyItemAll("ANbukl") TakePartyGold(100)~
== IF_FILE_EXISTS NEERAJ @243
= @244
== JANJ IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @245
== IF_FILE_EXISTS NEERAJ IF ~InParty("Jan") InMyArea("Jan") !Dead("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @246
EXIT

CHAIN 
IF ~~ THEN ANclerk2 ANclerk2-Dwarfcredit
@135
== KORGANJ @136
== ANclerk2 IF ~Global("ANDwarfCreditPay","GLOBAL",1)~ THEN @137 DO ~TakePartyGold(5000) SetGlobal("ANDwarfCreditPay","GLOBAL",3)~ 
== ANclerk2 IF ~Global("ANDwarfCreditPayPart","GLOBAL",1)~ THEN @137 DO ~TakePartyGold(4000) SetGlobal("ANDwarfCreditPayPart","GLOBAL",10) SetGlobal("ANDwarfCreditPay","GLOBAL",3)~ 
== ANclerk2 IF ~Global("ANDwarfCreditPayPart","GLOBAL",2)~ THEN @137 DO ~TakePartyGold(3000) SetGlobal("ANDwarfCreditPayPart","GLOBAL",10) SetGlobal("ANDwarfCreditPay","GLOBAL",3)~ 
== ANclerk2 IF ~Global("ANDwarfCreditPayPart","GLOBAL",3)~ THEN @137 DO ~TakePartyGold(2000) SetGlobal("ANDwarfCreditPayPart","GLOBAL",10) SetGlobal("ANDwarfCreditPay","GLOBAL",3)~ 
== ANclerk2 IF ~Global("ANDwarfCreditPayPart","GLOBAL",4)~ THEN @137 DO ~TakePartyGold(1000) SetGlobal("ANDwarfCreditPayPart","GLOBAL",10) SetGlobal("ANDwarfCreditPay","GLOBAL",3)~ 
== KORGANJ @139 DO ~AddJournalEntry(@1020,QUEST_DONE)~
EXIT