// Main Clerk + "BG1NPCBG2" mod by Smiling Imp

EXTEND_TOP ANclerk2 2 
IF ~~ THEN REPLY @0 + ANclerk2-exchange
END

APPEND ANclerk2

IF ~~ THEN BEGIN ANclerk2-exchange
  SAY @1
IF ~~ THEN REPLY @2 + ANclerk2-exchange1
IF ~~ THEN REPLY @3 + ANclerk2-exchange2
IF ~~ THEN REPLY @4 + ANclerk2-NOexchangeEXIT
END

IF ~~ THEN BEGIN ANclerk2-exchange1
  SAY @5
IF ~PartyGoldGT("99999")~ THEN REPLY @6 DO ~TakePartyGold("100000")DestroyGold("100000")GiveItemCreate("PLATNUM",PLAYER1,10000,0,0)~ + ANclerk2-exchangeNICE
IF ~PartyGoldGT("9999")~ THEN REPLY @7 DO ~TakePartyGold("10000")DestroyGold("10000")GiveItemCreate("PLATNUM",PLAYER1,1000,0,0)~ + ANclerk2-exchangeNICE
IF ~PartyGoldGT("999")~ THEN REPLY @8 DO ~TakePartyGold("1000")DestroyGold("1000")GiveItemCreate("PLATNUM",PLAYER1,100,0,0)~ + ANclerk2-exchangeNICE
IF ~PartyGoldGT("499")~ THEN REPLY @9 DO ~TakePartyGold("500")DestroyGold("500")GiveItemCreate("PLATNUM",PLAYER1,50,0,0)~ + ANclerk2-exchangeNICE
IF ~PartyGoldGT("99")~ THEN REPLY @10 DO ~TakePartyGold("100")DestroyGold("100")GiveItemCreate("PLATNUM",PLAYER1,10,0,0)~ + ANclerk2-exchangeNICE
IF ~PartyGoldGT("49")~ THEN REPLY @11 DO ~TakePartyGold("50")DestroyGold("50")GiveItemCreate("PLATNUM",PLAYER1,5,0,0)~ + ANclerk2-exchangeNICE
IF ~PartyGoldGT("9")~ THEN REPLY @12 DO ~TakePartyGold("10")DestroyGold("10")GiveItemCreate("PLATNUM",PLAYER1,1,0,0)~ + ANclerk2-exchangeNICE
IF ~~ THEN REPLY @4 + ANclerk2-NOexchangeEXIT 
END

IF ~~ THEN BEGIN ANclerk2-exchange2
  SAY @5
IF ~NumItemsPartyGT("Platnum",9999)~ THEN REPLY @13 DO ~GiveItemCreate("MISC07",PLAYER1,100000,0,0)TakePartyItemNum("Platnum",10000)DestroyItem("Platnum")~ + ANclerk2-exchangeNICE
IF ~NumItemsPartyGT("Platnum",999)~ THEN REPLY @14 DO ~GiveItemCreate("MISC07",PLAYER1,10000,0,0)TakePartyItemNum("Platnum",1000)DestroyItem("Platnum")~ + ANclerk2-exchangeNICE
IF ~NumItemsPartyGT("Platnum",99)~ THEN REPLY @15 DO ~GiveItemCreate("MISC07",PLAYER1,1000,0,0)TakePartyItemNum("Platnum",100)DestroyItem("Platnum")~ + ANclerk2-exchangeNICE
IF ~NumItemsPartyGT("Platnum",49)~ THEN REPLY @16 DO ~GiveItemCreate("MISC07",PLAYER1,500,0,0)TakePartyItemNum("Platnum",50)DestroyItem("Platnum")~ + ANclerk2-exchangeNICE
IF ~NumItemsPartyGT("Platnum",9)~ THEN REPLY @17 DO ~GiveItemCreate("MISC07",PLAYER1,100,0,0)TakePartyItemNum("Platnum",10)DestroyItem("Platnum")~ + ANclerk2-exchangeNICE
IF ~NumItemsPartyGT("Platnum",4)~ THEN REPLY @18 DO ~GiveItemCreate("MISC07",PLAYER1,50,0,0)TakePartyItemNum("Platnum",5)DestroyItem("Platnum")~ + ANclerk2-exchangeNICE
IF ~NumItemsPartyGT("Platnum",0)~ THEN REPLY @19 DO ~GiveItemCreate("MISC07",PLAYER1,10,0,0)TakePartyItemNum("Platnum",1)~ + ANclerk2-exchangeNICE
IF ~~ THEN REPLY @4 + ANclerk2-NOexchangeEXIT 
END

IF ~~ THEN BEGIN ANclerk2-exchangeNICE
SAY @20
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANclerk2-NOexchangeEXIT
SAY @21
IF ~~ THEN EXIT
END

END