EXTEND_TOP RENAL 62 
+ ~InParty("Edwin") Global("RenalJob","GLOBAL",4) !Alignment(Player1,LAWFUL_GOOD) Global("ANStashRenalJOB","GLOBAL",0)~ + @0 + ANStashRenal1
END

EXTEND_TOP RENAL 87 
+ ~InParty("Edwin") Global("RenalJob","GLOBAL",4) !Alignment(Player1,LAWFUL_GOOD) Global("ANStashRenalJOB","GLOBAL",0)~ + @0 + ANStashRenal1
END

EXTEND_TOP RENAL 76 
+ ~InParty("Edwin") Global("RenalJob","GLOBAL",4) !Alignment(Player1,LAWFUL_GOOD) Global("ANStashRenalJOB","GLOBAL",0)~ + @0 + ANStashRenal1
+ ~OR(4) Global("ANStashRenalJOB","GLOBAL",11) Global("ANStashRenalJOB","GLOBAL",12) Global("ANStashRenalJOB","GLOBAL",13) Global("ANstashBankERROR","GLOBAL",2)~ + @165 + ANStashRenalFinal
END

APPEND ~RENAL~


IF ~~ BEGIN ANStashRenalFinal
  SAY @166
IF ~Global("ANStashRenalJOB","GLOBAL",13) OR(2) Global("ANStashHURPsecretly","GLOBAL",1) !Global("ANStashHurpDead","GLOBAL",0)~ THEN REPLY @167 + ANStashRenalFinal_LIENOOPEN
IF ~Global("ANStashRenalJOB","GLOBAL",13) Global("ANStashHURPopenly","GLOBAL",1)~ THEN DO ~CreateCreature("ANButch",[735.519],0) CreateCreature("ANHurp",[841.577],0)~ REPLY @167 + ANStashRenalFinal_LIEOPEN
IF ~PartyHasItem("ANgemM") Global("ANStashHURPopenly","GLOBAL",1) OR(3) Global("ANStashRenalJOB","GLOBAL",11) Global("ANStashRenalJOB","GLOBAL",12) Global("ANStashRenalJOB","GLOBAL",13)~ THEN REPLY @172 + ANStashRenalFinalTRUE_HURP
IF ~PartyHasItem("ANgemM") OR(3) Global("ANStashRenalJOB","GLOBAL",11) Global("ANStashRenalJOB","GLOBAL",12) Global("ANStashRenalJOB","GLOBAL",13) OR(2) Global("ANStashHURPsecretly","GLOBAL",1) !Global("ANStashHurpDead","GLOBAL",0)~ THEN REPLY @172 + ANStashRenalFinalTRUE_NOHURP
IF ~Global("ANstashBankERROR","GLOBAL",2)~ THEN REPLY @185 + ANStashRenalFinal_Error
END

IF ~~ THEN BEGIN ANStashRenalFinal_LIENOOPEN
  SAY @173
= @174 
IF ~~ THEN DO ~SetGlobal("ANStashRenalJOB","GLOBAL",16) AddJournalEntry(@1007,QUEST_DONE) 
TakePartyItem("ANgross1")
TakePartyItem("ANgross2")
EraseJournalEntry(@999)
EraseJournalEntry(@1000)
EraseJournalEntry(@1001)
EraseJournalEntry(@1002)
EraseJournalEntry(@1002)
EraseJournalEntry(@1003)
EraseJournalEntry(@1006)
AddexperienceParty(10000)~ EXIT
END

IF ~~ BEGIN ANStashRenalFinal_LIEOPEN 
SAY @168 
IF ~~ THEN EXTERN ANButch ANStashRenalFinal_LIEOPEN1
END

IF ~~ BEGIN ANStashRenalFinal_LIEOPEN3 
SAY @171 
= @178
IF ~~ THEN DO ~SetGlobal("ANStashRenalJOB","GLOBAL",15) SetGlobal("ANStashRenalJOBFAILED","AR0306",1)  
TakePartyItem("ANlistM") TakePartyItem("ANgemM")
AddJournalEntry(@1005,QUEST_DONE) 
EraseJournalEntry(@999)
EraseJournalEntry(@1000)
EraseJournalEntry(@1001)
EraseJournalEntry(@1002)
EraseJournalEntry(@1002)
EraseJournalEntry(@1003)
EraseJournalEntry(@1006)~ EXIT
END

IF ~~ BEGIN ANStashRenalFinalTRUE_HURP
  SAY @175
IF ~PartyHasItem("ANgross1")~ THEN REPLY @176 + ANStashRenalFinalTRUE_HURP1
IF ~~ THEN REPLY @189 + ANStashRenalFinalTRUE_HURP2
END

IF ~~ BEGIN ANStashRenalFinalTRUE_HURP1
  SAY @177
IF ~Global("ANStashRenalTORG","GLOBAL",1)~ THEN DO ~SetGlobal("ANStashRenalJOB","GLOBAL",17) AddJournalEntry(@1007,QUEST_DONE) 
TakePartyItem("ANlistM")
TakePartyItem("ANgemM")
TakePartyItem("ANgross1")
TakePartyItem("ANgross2")
EraseJournalEntry(@999)
EraseJournalEntry(@1000)
EraseJournalEntry(@1001)
EraseJournalEntry(@1002)
EraseJournalEntry(@1002)
EraseJournalEntry(@1003)
GiveGoldForce(220)
GiveItemCreate("MISC34",Player1,1,0,0)
GiveItemCreate("MISC38",Player1,3,0,0)
GiveItemCreate("MISC39",Player1,2,0,0)
GiveItemCreate("MISC42",Player1,1,0,0)
GiveItemCreate("MISC43",Player1,2,0,0)
AddexperienceParty(10000)
~ EXIT
IF ~Global("ANStashRenalTORG","GLOBAL",0)~ THEN DO ~SetGlobal("ANStashRenalJOB","GLOBAL",17) AddJournalEntry(@1007,QUEST_DONE) 
TakePartyItem("ANlistM")
TakePartyItem("ANgemM")
TakePartyItem("ANgross1")
TakePartyItem("ANgross2")
EraseJournalEntry(@999)
EraseJournalEntry(@1000)
EraseJournalEntry(@1001)
EraseJournalEntry(@1002)
EraseJournalEntry(@1002)
EraseJournalEntry(@1003)
GiveGoldForce(220)
GiveItemCreate("MISC34",Player1,1,0,0)
GiveItemCreate("MISC38",Player1,2,0,0)
GiveItemCreate("MISC39",Player1,2,0,0)
GiveItemCreate("MISC42",Player1,1,0,0)
GiveItemCreate("MISC43",Player1,2,0,0)
AddexperienceParty(10000)
~ EXIT
END

IF ~~ BEGIN ANStashRenalFinalTRUE_HURP2
  SAY @190
IF ~Global("ANStashRenalTORG","GLOBAL",1)~ THEN DO ~SetGlobal("ANStashRenalJOB","GLOBAL",17) AddJournalEntry(@1007,QUEST_DONE) 
TakePartyItem("ANlistM")
TakePartyItem("ANgemM")
TakePartyItem("ANgross2")
EraseJournalEntry(@999)
EraseJournalEntry(@1000)
EraseJournalEntry(@1001)
EraseJournalEntry(@1002)
EraseJournalEntry(@1002)
EraseJournalEntry(@1003)
GiveItemCreate("MISC34",Player1,1,0,0)
GiveItemCreate("MISC38",Player1,3,0,0)
GiveItemCreate("MISC39",Player1,2,0,0)
GiveItemCreate("MISC42",Player1,1,0,0)
GiveItemCreate("MISC43",Player1,2,0,0)
AddexperienceParty(10000)
~ EXIT
IF ~Global("ANStashRenalTORG","GLOBAL",0)~ THEN DO ~SetGlobal("ANStashRenalJOB","GLOBAL",17) AddJournalEntry(@1007,QUEST_DONE) 
TakePartyItem("ANlistM")
TakePartyItem("ANgemM")
TakePartyItem("ANgross2")
EraseJournalEntry(@999)
EraseJournalEntry(@1000)
EraseJournalEntry(@1001)
EraseJournalEntry(@1002)
EraseJournalEntry(@1002)
EraseJournalEntry(@1003)
GiveItemCreate("MISC34",Player1,1,0,0)
GiveItemCreate("MISC38",Player1,2,0,0)
GiveItemCreate("MISC39",Player1,2,0,0)
GiveItemCreate("MISC42",Player1,1,0,0)
GiveItemCreate("MISC43",Player1,2,0,0)
AddexperienceParty(10000)
~ EXIT
END


IF ~~ BEGIN ANStashRenalFinalTRUE_NOHURP
  SAY @179
=@180  
IF ~~ REPLY @181 + ANStashRenalFinalTRUE_NOHURP1
END

IF ~~ BEGIN ANStashRenalFinalTRUE_NOHURP1
  SAY @182
IF ~~ THEN REPLY @183 + ANStashRenalFinalTRUE_NOHURP2
END

IF ~~ BEGIN ANStashRenalFinalTRUE_NOHURP2
  SAY @184
IF ~Global("ANStashRenalTORG","GLOBAL",1)~ THEN DO ~SetGlobal("ANStashRenalJOB","GLOBAL",16) AddJournalEntry(@1007,QUEST_DONE) 
TakePartyItem("ANlistM")
TakePartyItem("ANgemM")
TakePartyItem("ANgross1")
TakePartyItem("ANgross2")
EraseJournalEntry(@999)
EraseJournalEntry(@1000)
EraseJournalEntry(@1001)
EraseJournalEntry(@1002)
EraseJournalEntry(@1002)
EraseJournalEntry(@1003)
GiveItemCreate("MISC34",Player1,1,0,0)
GiveItemCreate("MISC38",Player1,3,0,0)
GiveItemCreate("MISC39",Player1,2,0,0)
GiveItemCreate("MISC42",Player1,1,0,0)
GiveItemCreate("MISC43",Player1,2,0,0)
AddexperienceParty(10000)
~ EXIT
IF ~Global("ANStashRenalTORG","GLOBAL",0)~ THEN DO ~SetGlobal("ANStashRenalJOB","GLOBAL",16) AddJournalEntry(@1007,QUEST_DONE) 
TakePartyItem("ANlistM")
TakePartyItem("ANgemM")
TakePartyItem("ANgross1")
TakePartyItem("ANgross2")
EraseJournalEntry(@999)
EraseJournalEntry(@1000)
EraseJournalEntry(@1001)
EraseJournalEntry(@1002)
EraseJournalEntry(@1002)
EraseJournalEntry(@1003)
GiveItemCreate("MISC34",Player1,1,0,0)
GiveItemCreate("MISC38",Player1,2,0,0)
GiveItemCreate("MISC39",Player1,2,0,0)
GiveItemCreate("MISC42",Player1,1,0,0)
GiveItemCreate("MISC43",Player1,2,0,0)
AddexperienceParty(10000)
~ EXIT
END

IF ~~ BEGIN ANStashRenalFinal_Error
  SAY @182
IF ~~ THEN REPLY @186 + ANStashRenalFinal_Error1
END

IF ~~ BEGIN ANStashRenalFinal_Error1
  SAY @187
=@188  
IF ~~ THEN REPLY @189 + ANStashRenalFinal_Error2
END


IF ~~ BEGIN ANStashRenalFinal_Error2
  SAY @190 
IF ~~ THEN DO ~SetGlobal("ANStashRenalJOB","GLOBAL",16) AddJournalEntry(@1008,QUEST_DONE) 
TakePartyItem("ANgross1")
TakePartyItem("ANgross2")
EraseJournalEntry(@999)
EraseJournalEntry(@1000)
EraseJournalEntry(@1001)
EraseJournalEntry(@1002)
EraseJournalEntry(@1002)
EraseJournalEntry(@1003)
EraseJournalEntry(@1004)~ EXIT
END




IF ~~ BEGIN ANStashRenal1
  SAY @1
IF ~~ THEN REPLY @2 + ANStashRenal2 
IF ~~ THEN REPLY @3 + ANStashRenal2
END

IF ~~ BEGIN ANStashRenal2 
SAY @4
IF ~~ THEN REPLY @5 + ANStashRenal2.1
IF ~CheckStatGT(Player1,17,CHR)~ THEN REPLY @6 + ANStashRenal2.2
IF ~!CheckStatGT(Player1,17,CHR)~ THEN REPLY @6 + ANStashRenal2.2.1
IF ~~ THEN REPLY @7 + ANStashRenal2.3
END

IF ~~ BEGIN ANStashRenal2.1
SAY @8
IF ~~ THEN DO ~SetGlobal("ANStashRenalJOB","GLOBAL",1) AddJournalEntry(@999,QUEST)~ EXIT
END

IF ~~ BEGIN ANStashRenal2.2
SAY @9 
IF ~~ THEN DO ~SetGlobal("ANStashRenalTORG","GLOBAL",1)~ REPLY @12 GOTO ANStashRenal2.1
END

IF ~~ BEGIN ANStashRenal2.2.1
SAY @10
IF ~~ THEN REPLY @5 + ANStashRenal2.1
IF ~~ THEN REPLY @7 + ANStashRenal2.3
END

IF ~~ BEGIN ANStashRenal2.3
SAY @11
IF ~~ THEN EXIT
END

END


APPEND PLAYER1

IF ~~ BEGIN ANstashBank6
  SAY @122
IF ~~ THEN EXTERN ANClerk1 ANstashBank6.1
END

IF ~~ BEGIN ANstashBankStart1
SAY @131
IF ~~ THEN EXTERN ANclerk1 ANstashBankStart2
END

END



BEGIN ANButch

IF ~~ BEGIN ANStashRenalFinal_LIEOPEN1
SAY @169 
IF ~~ THEN DO ~EscapeArea()~ EXTERN ANHurp ANStashRenalFinal_LIEOPEN2
END

IF ~Global("ANStashRenalJOB","GLOBAL",1)~ BEGIN ANButch1 
SAY @14
IF ~~ THEN REPLY @15 + ANButch1.1 
IF ~~ THEN REPLY @16 + ANButch1.2 
IF ~~ THEN REPLY @192 + ANButch1.3
END

IF ~~ BEGIN ANButch1.1 
SAY @17
IF ~~ THEN REPLY @19 + ANButch2 
IF ~~ THEN REPLY @191 GOTO ANButch2
IF ~~ THEN REPLY @194 GOTO ANButch2
END

IF ~~ BEGIN ANButch1.2 
SAY @18
IF ~~ THEN REPLY @19 + ANButch2 
END

IF ~~ BEGIN ANButch1.3 
SAY @193
IF ~~ THEN REPLY @19 + ANButch2 
END

IF ~~ BEGIN ANButch2 
SAY @20
IF ~~ THEN DO ~GiveItem("ANcode1",Player1)~ REPLY @21 GOTO ANButch3
IF ~~ THEN DO ~GiveItem("ANcode1",Player1)~ REPLY @25 GOTO ANButch5
IF ~~ THEN DO ~GiveItem("ANcode1",Player1)~ REPLY @195 GOTO ANButch5
IF ~~ THEN DO ~GiveItem("ANcode1",Player1)~ REPLY @196 GOTO ANButch5
END


IF ~~ BEGIN ANButch3 
SAY @22
IF ~~ THEN REPLY @23 GOTO ANButch4 
IF ~~ THEN REPLY @25 GOTO ANButch5
IF ~~ THEN REPLY @195 GOTO ANButch5
IF ~~ THEN REPLY @196 GOTO ANButch5
END

IF ~~ BEGIN ANButch4 
SAY @24
IF ~~ THEN REPLY @25 GOTO ANButch5
IF ~~ THEN REPLY @195 GOTO ANButch5
IF ~~ THEN REPLY @196 GOTO ANButch5
END

IF ~~ BEGIN ANButch5 
SAY @26
IF ~~ THEN REPLY @27 GOTO ANButch6 
IF ~~ THEN REPLY @197 GOTO ANButch6 
END

IF ~~ BEGIN ANButch6 
SAY @28
IF ~~ THEN DO ~SetGlobal("ANStashRenalJOB","GLOBAL",2) AddJournalEntry(@1000,QUEST) EscapeArea()~ EXIT
END

APPEND EDWINJ

IF ~Global("ANStashRenalJOB","GLOBAL",3)~ BEGIN ANstashEdwinTalk1
  SAY @30 
IF ~~ THEN DO ~SetGlobal("ANStashRenalJOB","GLOBAL",4)~ REPLY @31 + ANstashEdwinTalk2
END

IF ~~ BEGIN ANstashEdwinTalk2
  SAY @32 
IF ~~ THEN REPLY @33 + ANstashEdwinTalk3-1
IF ~~ THEN REPLY @198 + ANstashEdwinTalk3-2
IF ~~ THEN REPLY @199 + ANstashEdwinTalk3-3
END

IF ~~ BEGIN ANstashEdwinTalk3-1
  SAY @34 
IF ~~ THEN REPLY @35 + ANstashEdwinTalk4
IF ~~ THEN REPLY @202 + ANstashEdwinTalk4
END

IF ~~ BEGIN ANstashEdwinTalk3-2
  SAY @201 
IF ~~ THEN REPLY @35 + ANstashEdwinTalk4
IF ~~ THEN REPLY @202 + ANstashEdwinTalk4
END

IF ~~ BEGIN ANstashEdwinTalk3-3
  SAY @200
IF ~~ THEN REPLY @35 + ANstashEdwinTalk4
IF ~~ THEN REPLY @202 + ANstashEdwinTalk4
END

IF ~~ BEGIN ANstashEdwinTalk4
  SAY @36 
IF ~~ THEN REPLY @37 GOTO ANstashEdwinTalk5
IF ~~ THEN REPLY @203 GOTO ANstashEdwinTalk5
IF ~~ THEN REPLY @204 GOTO ANstashEdwinTalk5
END

IF ~~ BEGIN ANstashEdwinTalk5
  SAY @38 
IF ~~ THEN GOTO ANstashEdwinTalk6
END

IF ~~ BEGIN ANstashEdwinTalk6
  SAY @39
IF ~~ THEN REPLY @40 + ANstashEdwinTalk7-1
IF ~~ THEN REPLY @205 + ANstashEdwinTalk7-2
IF ~~ THEN REPLY @206 + ANstashEdwinTalk7-2
END

IF ~~ BEGIN ANstashEdwinTalk7-1
  SAY @41
= @42
IF ~~ THEN REPLY @43 + ANstashEdwinTalk8.1
IF ~~ THEN REPLY @44 + ANstashEdwinTalk8.2
END

IF ~~ BEGIN ANstashEdwinTalk7-2
  SAY @207
IF ~~ THEN REPLY @43 + ANstashEdwinTalk8.1
IF ~~ THEN REPLY @44 + ANstashEdwinTalk8.2
END

IF ~~ BEGIN ANstashEdwinTalk8.1
  SAY @45
= @47 
IF ~~ THEN DO ~AddJournalEntry(@1001,QUEST)~ EXIT
END

IF ~~ BEGIN ANstashEdwinTalk8.2
  SAY @46
= @47 
IF ~~ THEN DO ~AddJournalEntry(@1001,QUEST)~ EXIT
END

IF ~~ BEGIN ANstashEdwinHurp5
  SAY @60
IF ~~ THEN EXTERN ANHurp ANstashEdwinHurp6
END

IF ~~ BEGIN ANstashEdwinHurp13
  SAY @74
IF ~~ THEN REPLY @75 EXTERN ANHurp ANstashEdwinHurp14
IF ~~ THEN REPLY @76 EXTERN ANHurp ANstashEdwinHurp15
IF ~~ THEN REPLY @77 EXTERN ANHurp ANstashEdwinHurp16
END

IF ~~ BEGIN ANstashEdwinHurp17
  SAY @79
IF ~~ THEN REPLY @80 EXTERN ANHurp ANstashEdwinHurp17.1
IF ~~ THEN DO ~SetGlobal("ANStashHurpDead","GLOBAL",1)~ REPLY @83 EXTERN ANHurp ANstashEdwinHurp17.2
END

IF ~~ BEGIN ANstashEdwinHurp17.1.1
  SAY @82
IF ~~ THEN REPLY @76 EXTERN ANHurp ANstashEdwinHurp15
IF ~~ THEN REPLY @77 EXTERN ANHurp ANstashEdwinHurp16
END

IF ~~ BEGIN ANstashEdwinHurp16.1
  SAY @87
IF ~~ THEN EXTERN ANHurp ANstashEdwinHurpEND2
END

IF ~~ BEGIN ANstashEdwinHurpEND1
  SAY @90
IF ~~ THEN DO ~SetGlobal("ANStashRenalJOB","GLOBAL",7) AddJournalEntry(@1002,QUEST)~ EXIT
END

IF ~Global("ANStashHurpDead","GLOBAL",1)~ BEGIN ANstashEdwinHurpDead
  SAY @91 
IF ~~ THEN DO ~SetGlobal("ANStashRenalJOB","GLOBAL",7) SetGlobal("ANStashHurpDead","GLOBAL",2) AddJournalEntry(@1002,QUEST)~ EXIT
END

IF ~Global("ANStashRenalJOB","GLOBAL",9)~ BEGIN ANstashEdwinBank
  SAY @103 
IF ~~ THEN DO ~SetGlobal("ANStashEdwinBankTalk","AN0720",1)~ REPLY @104 EXIT
IF ~~ THEN DO ~SetGlobal("ANStashEdwinBankTalk","AN0720",1)~ REPLY @208 EXIT
END

IF ~~ BEGIN ANStashEdwinFinalTalk1
  SAY @145
IF ~~ THEN DO ~SetGlobal("ANStashRenalJOB","GLOBAL",12)~ REPLY @146 + ANStashEdwinFinalTalk1.1
END

IF ~~ BEGIN ANStashEdwinFinalTalk2
  SAY @145
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANStashEdwinFinalTalk1.1
  SAY @147
IF ~~ THEN EXIT
END

END


CHAIN  
IF ~Global("ANStashRenalJOB","GLOBAL",5) InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN EDWINJ ANstashEdwinTalk9
@49 DO ~SetGlobal("ANStashRenalJOB","GLOBAL",6)~
= @50
EXIT


BEGIN ANHurp

IF ~~ BEGIN ANStashRenalFinal_LIEOPEN2
SAY @170 
IF ~~ THEN DO ~EscapeArea()~ EXTERN RENAL ANStashRenalFinal_LIEOPEN3
END

IF ~~ BEGIN ANstashEdwinHurp2
  SAY @55
IF ~~ THEN REPLY @56 GOTO ANstashEdwinHurp3
IF ~~ THEN REPLY @209 GOTO ANstashEdwinHurp3
IF ~~ THEN REPLY @210 GOTO ANstashEdwinHurp3
END

IF ~~ BEGIN ANstashEdwinHurp3
  SAY @57
IF ~~ THEN REPLY @58 GOTO ANstashEdwinHurp4
IF ~~ THEN REPLY @211 GOTO ANstashEdwinHurp4
IF ~~ THEN REPLY @212 GOTO ANstashEdwinHurp4
END

IF ~~ BEGIN ANstashEdwinHurp4
  SAY @59
IF ~~ THEN EXTERN EDWINJ ANstashEdwinHurp5
END


IF ~~ BEGIN ANstashEdwinHurp6
  SAY @61
IF ~~ THEN REPLY @62 GOTO ANstashEdwinHurp7
IF ~~ THEN DO ~GiveItem("ANgross1",Player1)~ REPLY @213 GOTO ANstashEdwinHurp8
IF ~~ THEN DO ~GiveItem("ANgross1",Player1)~ REPLY @64 GOTO ANstashEdwinHurp8
IF ~~ THEN REPLY @66 GOTO ANstashEdwinHurp9-1
IF ~~ THEN REPLY @214 GOTO ANstashEdwinHurp9-1
END

IF ~~ BEGIN ANstashEdwinHurp7
  SAY @63
IF ~~ THEN DO ~GiveItem("ANgross1",Player1)~ REPLY @213 GOTO ANstashEdwinHurp8  
IF ~~ THEN DO ~GiveItem("ANgross1",Player1)~ REPLY @64 GOTO ANstashEdwinHurp8
END

IF ~~ BEGIN ANstashEdwinHurp8
  SAY @65
IF ~~ THEN REPLY @66 GOTO ANstashEdwinHurp9
IF ~~ THEN REPLY @214 GOTO ANstashEdwinHurp9
END

IF ~~ BEGIN ANstashEdwinHurp9
  SAY @67
IF ~~ THEN DO ~GiveItem("ANgross2",Player1)~ GOTO ANstashEdwinHurp10
END

IF ~~ BEGIN ANstashEdwinHurp9-1
  SAY @67
=@69  
IF ~~ THEN DO ~GiveItem("ANgross2",Player1)~ REPLY @62 GOTO ANstashEdwinHurp7-1
IF ~~ THEN DO ~GiveItem("ANgross2",Player1)~ REPLY @213 GOTO ANstashEdwinHurp8-1
IF ~~ THEN DO ~GiveItem("ANgross2",Player1)~ REPLY @64 GOTO ANstashEdwinHurp8-1
END

IF ~~ BEGIN ANstashEdwinHurp7-1
  SAY @63
IF ~~ THEN REPLY @213 GOTO ANstashEdwinHurp8-1
IF ~~ THEN REPLY @64 GOTO ANstashEdwinHurp8-1
END

IF ~~ BEGIN ANstashEdwinHurp8-1
  SAY @65
IF ~~ THEN DO ~GiveItem("ANgross1",Player1)~ REPLY @70 GOTO ANstashEdwinHurp11
END

IF ~~ BEGIN ANstashEdwinHurp10
  SAY @69
IF ~~ THEN REPLY @70 GOTO ANstashEdwinHurp11
END

IF ~~ BEGIN ANstashEdwinHurp11
  SAY @71
IF ~~ THEN REPLY @72 GOTO ANstashEdwinHurp12
IF ~~ THEN REPLY @215 GOTO ANstashEdwinHurp12
IF ~~ THEN REPLY @216 GOTO ANstashEdwinHurp12
END

IF ~~ BEGIN ANstashEdwinHurp12
  SAY @73
IF ~~ THEN EXTERN EDWINJ ANstashEdwinHurp13
END

IF ~~ BEGIN ANstashEdwinHurp14
  SAY @78
IF ~~ THEN EXTERN EDWINJ ANstashEdwinHurp17
END

IF ~~ BEGIN ANstashEdwinHurp15
  SAY @85
=@88
IF ~~ THEN REPLY @89 DO ~SetGlobal("ANStashHURPopenly","GLOBAL",1) EscapeArea()~ EXTERN EDWINJ ANstashEdwinHurpEND1
END

IF ~~ BEGIN ANstashEdwinHurp16
  SAY @86
IF ~~ THEN DO ~SetGlobal("ANStashHURPsecretly","GLOBAL",1) EscapeArea()~ EXTERN EDWINJ ANstashEdwinHurp16.1
END

IF ~~ BEGIN ANstashEdwinHurp17.1
  SAY @81
IF ~~ THEN EXTERN EDWINJ ANstashEdwinHurp17.1.1
END

IF ~~ BEGIN ANstashEdwinHurp17.2
  SAY @84
IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ BEGIN ANstashEdwinHurpEND2
  SAY @88
IF ~~ THEN REPLY @89 EXTERN EDWINJ ANstashEdwinHurpEND1
END

CHAIN
IF ~Global("ANStashRenalJOB","GLOBAL",6) InParty("Edwin") !Dead("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ANHurp ANstashEdwinHurp1
@51
== EDWINJ @52
== ANHurp @53
== EDWINJ @54
EXTERN ANHurp ANstashEdwinHurp2


CHAIN
IF ~Global("ANStashRenalJOB","GLOBAL",7) Global("ANStashEdwinGross","GLOBAL",1)~ THEN EDWINJ ANStashEdwinGross1
@92 DO ~SetGlobal("ANStashEdwinGross","GLOBAL",2) SetGlobal("ANStashRenalJOB","GLOBAL",9)~
=@93
END
IF ~~ THEN REPLY @94 EXTERN EDWINJ ANStashEdwinGross1_1

CHAIN EDWINJ ANStashEdwinGross1_1
@95
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @96
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !Dead("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @97
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !Dead("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @98
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !Dead("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @99
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !Dead("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @100
END
IF ~~ THEN REPLY @101 EXIT


APPEND ANclerk1

IF ~Global("ANStashRenalJOB","GLOBAL",9) !Global("ANstashBankERROR","GLOBAL",2) !Global("ANStashVisit","GLOBAL",2)~ BEGIN ANstashBankStart
SAY @105 
=@130 
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ EXTERN PLAYER1 ANstashBankStart1
END

IF ~~ BEGIN ANstashBankStart2
SAY @106  
IF ~~ THEN + ANstashBank1
END

// First, the summer month (Flamerule, number 7), then the autumn (Nightal, number 12), then the winter (Uktar, number 11). Answer: 71211
IF ~~ BEGIN ANstashBank1
SAY @107
= @108
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @109 + ANstashBank2 
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @110 + ANstashBank2
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @111 + ANstashBank2
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @112 + ANstashBank2
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @113 + ANstashBank2
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @114 + ANstashBank2
IF ~~ THEN REPLY @115 + ANstashBank2
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @116 + ANstashBank2
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @117 + ANstashBank2
END

IF ~~ BEGIN ANstashBank2
  SAY @118
IF ~~ THEN REPLY @109 + ANstashBank3 
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @110 + ANstashBank3
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @111 + ANstashBank3
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @112 + ANstashBank3
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @113 + ANstashBank3
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @114 + ANstashBank3
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @115 + ANstashBank3
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @116 + ANstashBank3
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @117 + ANstashBank3
END

IF ~~ BEGIN ANstashBank3
  SAY @119
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @109 + ANstashBank4 
IF ~~ THEN REPLY @110 + ANstashBank4
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @111 + ANstashBank4
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @112 + ANstashBank4
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @113 + ANstashBank4
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @114 + ANstashBank4
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @115 + ANstashBank4
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @116 + ANstashBank4
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @117 + ANstashBank4
END

IF ~~ BEGIN ANstashBank4
  SAY @120
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @109 + ANstashBank5 
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @110 + ANstashBank5
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @111 + ANstashBank5
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @112 + ANstashBank5
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @113 + ANstashBank5
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @114 + ANstashBank5
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @115 + ANstashBank5
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @116 + ANstashBank5
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @117 + ANstashBank5
END

IF ~~ BEGIN ANstashBank5
  SAY @121
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @109 EXTERN PLAYER1 ANstashBank6 
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @110 EXTERN PLAYER1 ANstashBank6
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @111 EXTERN PLAYER1 ANstashBank6
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @112 EXTERN PLAYER1 ANstashBank6
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @113 EXTERN PLAYER1 ANstashBank6
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @114 EXTERN PLAYER1 ANstashBank6
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @115 EXTERN PLAYER1 ANstashBank6
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @116 EXTERN PLAYER1 ANstashBank6
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @117 EXTERN PLAYER1 ANstashBank6
END

IF ~~ BEGIN ANstashBank6.1
  SAY @1222
IF ~!Global("ANstashBankNO","GLOBAL",1)~ THEN DO ~SetGlobal("ANStashRenalJOB","GLOBAL",10)~ + ANstashBankOPEN
IF ~Global("ANstashBankNO","GLOBAL",1)~ THEN DO ~SetGlobal("ANstashBankERROR","GLOBAL",1) SetGlobal("ANStashRenalJOB","GLOBAL",10)~ + ANstashBankCLOSE
IF ~Global("ANstashBankNO","GLOBAL",1) Global("ANstashBankERROR","GLOBAL",1)~ + ANstashBankCLOSEFINAL
END

IF ~~ BEGIN ANstashBank1REPEAT
SAY @108 
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",0)~ REPLY @109 + ANstashBank2 
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @110 + ANstashBank2
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @111 + ANstashBank2
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @112 + ANstashBank2
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @113 + ANstashBank2
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @114 + ANstashBank2
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @115 + ANstashBank2
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @116 + ANstashBank2
IF ~~ THEN DO ~SetGlobal("ANstashBankNO","GLOBAL",1)~ REPLY @117 + ANstashBank2
END

IF ~~ BEGIN ANstashBankOPEN
  SAY @123
IF ~~ THEN DO ~SetGlobal("ANStashVisit","GLOBAL",3)~ REPLY @124 + ANstashBankOPEN1
END

IF ~~ BEGIN ANstashBankOPEN1
  SAY @125
IF ~~ THEN REPLY @126 + ANstashBankOPEN2
END

IF ~~ BEGIN ANstashBankOPEN2
  SAY @127
IF ~~ THEN DO ~AddJournalEntry(@1003,QUEST) GiveItemCreate("ANgemM",Player1,1,0,0) GiveItemCreate("ANlistM",Player1,1,0,0) SetGlobal("ANStashRenalJOB","GLOBAL",11)~ REPLY @128 + ANstashBankOPEN3
END

IF ~~ BEGIN ANstashBankOPEN3
  SAY @129
IF ~~ THEN EXIT
END

IF ~~ BEGIN ANstashBankCLOSE
  SAY @132 
IF ~~ THEN DO ~SetGlobal("ANStashVisit","GLOBAL",3)~ REPLY @133 + ANstashBank1REPEAT
IF ~~ THEN REPLY @134 + ANstashBankOUT
END

IF ~~ BEGIN ANstashBankOUT
  SAY @135 
IF ~~ THEN DO ~SetGlobal("ANStashVisit","GLOBAL",2)~ EXIT
END

IF ~~ BEGIN ANstashBankCLOSEFINAL
  SAY @136 
IF ~~ THEN EXTERN ANclerk2 ANstashBankCLOSEFINAL1
END

IF ~Global("ANStashRenalJOB","GLOBAL",10) Global("ANStashVisit","GLOBAL",2) Global("ANstashBankERROR","GLOBAL",1)~ THEN BEGIN ANstashBankSECOND
  SAY @138 
IF ~~ THEN DO ~SetGlobal("ANStashVisit","GLOBAL",3)~ REPLY @139 + ANstashBank1REPEAT
IF ~~ THEN REPLY @140 EXIT
END

END


APPEND ANclerk2

IF WEIGHT #10 ~~ BEGIN ANstashBankCLOSEFINAL1
  SAY @137 
IF ~~ THEN DO ~AddJournalEntry(@1004,QUEST) SetGlobal("ANstashBankERROR","GLOBAL",2)~ EXIT
END

END 

CHAIN
IF ~Global("ANStashRenalJOB","GLOBAL",11) Global("ANStashEdwinFinalTalk","AR0700",1)~ THEN PLAYER1 ANStashEdwinFinal_Talk
@141 DO ~SetGlobal("ANStashEdwinFinalTalk","AR0700",2)~
== EDWINJ @142
END
IF ~~ THEN REPLY @143 EXTERN EDWINJ ANStashEdwinFinalTalk1
IF ~~ THEN REPLY @144 EXTERN EDWINJ ANStashEdwinFinalTalk2


CHAIN
IF ~Global("ANStashRenalJOB","GLOBAL",12) Global("ANStashEdwinGraveTalk","AR0800",1)~ THEN PLAYER1 ANStashGraveTalk
@148 DO ~SetGlobal("ANStashEdwinGraveTalk","AR0800",2) SetGlobal("ANStashRenalJOB","GLOBAL",13)~
END
IF ~~ THEN REPLY @149 EXTERN EDWINJ ANStashGraveTalk_1

CHAIN EDWINJ ANStashGraveTalk_1
@150
END
IF ~~ THEN REPLY @151 EXTERN EDWINJ ANStashGraveTalk_2

CHAIN EDWINJ ANStashGraveTalk_2
@152
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !Dead("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @154
== EDWINJ IF ~InParty("Minsc") InMyArea("Minsc") !Dead("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @155
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !Dead("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @156
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @157
END
IF ~OR(2) !InParty("Wilson") StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN EXTERN EDWINJ ANStashGraveTalk_3
IF ~InParty("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN REPLY @164 EXTERN IF_FILE_EXISTS WILSONJ ANStashGraveTalk_2WIlson

APPEND IF_FILE_EXISTS WILSONJ
IF ~~ BEGIN ANStashGraveTalk_2WIlson
  SAY @158 
IF ~~ THEN EXTERN EDWINJ ANStashGraveTalk_3
END
END

CHAIN EDWINJ ANStashGraveTalk_3
@159
END
IF ~~ THEN DO ~AddJournalEntry(@1006,QUEST)~ REPLY @160 EXTERN EDWINJ ANStashGraveTalk_4

CHAIN EDWINJ ANStashGraveTalk_4
@161
END
IF ~~ THEN REPLY @162 EXIT