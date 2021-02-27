CHAIN
IF ~Global("ANsirene","GLOBAL",32)~ THEN ANsirene ANsirene1FinalTalk1QuayleImp
@140 DO ~SetGlobal("ANsirene","GLOBAL",33)~
== 7XQUAYJ @141
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @142
== 7XQUAYJ @143
EXIT

CHAIN
IF ~Global("ANsirene","GLOBAL",34)~ THEN ANsirene ANsirene1FinalTalk2
@144 DO ~SetGlobal("ANsirene","GLOBAL",35) AddJournalEntry(@1092,QUEST)~
== PLAYER1 @145
== ANsirene @146 DO ~GiveItemCreate("AMUL11",Player1,1,0,0) EscapeArea()~
== 7XQUAYJ @147 
EXIT

CHAIN
IF ~Global("ANsirene","GLOBAL",61)~ THEN ANsirene ANsirene2FinalTalk1QuayleImp
@140 DO ~SetGlobal("ANsirene","GLOBAL",62)~
== 7XQUAYJ @141
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @142
== 7XQUAYJ @143
EXIT

CHAIN
IF ~Global("ANsirene","GLOBAL",63)~ THEN ANsirene ANsirene2FinalTalk2QuayleImp
@144 DO ~SetGlobal("ANsirene","GLOBAL",64)~
== 7XQUAYJ @148
== ANlorio @149
== ANsirene @150
== ANlorio @151
== ANsirene @152
=@153
== ANlorio @154
== ANsirene @155
== ANlorio @156
== ANsirene @157
== PLAYER1 @158
== ANlorio @159 DO ~GiveItemCreate("SW1H42",Player1,1,0,0)~
== ANsirene IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @160 DO ~GiveItemCreate("AMUL11","Aerie",1,0,0)~
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @161
== ANsirene @162 DO ~AddJournalEntry(@1093,QUEST_DONE) EscapeArea()~
== ANlorio @163 DO ~EscapeArea()~
== 7XQUAYJ @147 
== IF_FILE_EXISTS 7XGarJ IF ~InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @202
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @203
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @204
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @205
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @204
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @205
EXIT