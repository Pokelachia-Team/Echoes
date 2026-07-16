BrinesburgGym_MapScriptHeader:
	def_scene_scripts
	scene_const SCENE_BRINESBURGGYM_NOOP
	; scene_script BrinesburgGymSalAwayScene, SCENE_BRINESBURGGYM_SAL_AWAY

	def_callbacks

	def_warp_events
	warp_event 11,  9, BRINESBURG, 5
	warp_event 10,  9, BRINESBURG, 5

	def_coord_events

	def_bg_events
	bg_event 13,  9, BGEVENT_READ, BrinesburgGymStatue
	bg_event  8,  9, BGEVENT_READ, BrinesburgGymStatue

	def_object_events
	object_event 11,  1, SPRITE_SAL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, BrinesburgGymSalScript, -1
	object_event  2,  2, SPRITE_BAKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerBaker_Sylvia, -1
	object_event  2,  7, SPRITE_WAITRESS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerWaitress_Twila, -1
	object_event 14,  6, SPRITE_WAITRESS, SPRITEMOVEDATA_STANDING_UP, 0, 2, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerWaitress_Bev, -1
	object_event  9,  8, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgGymGuyText, -1
	object_event  4,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgGymTeacherText, -1
	object_event 13,  4, SPRITE_FAT_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgGymFisherText, -1
	object_event  6,  8, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgGymLassText, -1
	object_event 16,  4, SPRITE_AROMA_LADY, SPRITEMOVEDATA_STANDING_LEFT, 0, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgGymPickyText, -1
	object_event 14,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgGymDateMText, -1
	object_event 17,  9, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgGymDateFText, -1
	object_event 18,  5, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgBoothSchoolBoyText, -1
	object_event 19,  5, SPRITE_RICH_BOY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgBoothRichBoyText, -1
	object_event 19,  7, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgBoothCuteGirlText, -1

	object_const_def
	const BRINESBURG_GYM_SAL

; BrinesburgGymNoopScene
	; sdefer BrinesburgGymSalAwayScript
	; end

; BrinesburgGymSalAwayScript:
; 	showemote EMOTE_SHOCK, BRINESBURGGYM_GYM_GUY2, 15
; 	applyonemovement BRINESBURGGYM_GYM_GUY2, step_down
; 	showtext BrinesburgGymGuySalAwayText
; 	turnobject PLAYER, DOWN
; 	warpcheck
; 	warpsound
; 	newloadmap MAPSETUP_DOOR
; 	end

; BrinesburgGymBakerScript:
; 	checkevent EVENT_BEAT_SAL
; 	iftrue_jumptextfaceplayer .SylviaAfterSalText
; 	faceplayer
; 	checkevent EVENT_BEAT_BAKER_SYLVIA
; 	iftrue_jumptext .SylviaOutroText
; 	checkevent EVENT_BEAT_WAITRESS_TWILA
; 	iffalse_jumptext .SylviaOrdersText
; 	checkevent EVENT_BEAT_WAITRESS_BEV
; 	iffalse_jumptext .SylviaOrdersText
; 	showtext .SylviaIntroText
; 	winlosstext .SylviaWinLossText, 0
; 	setlasttalked BRINESBURG_GYM_BAKER
; 	loadtrainer BAKER, SYLVIA
; 	startbattle
; 	reloadmapafterbattle
; 	setevent EVENT_BEAT_BAKER_SYLVIA
; .SylviaBeaten:
; 	opentext
; 	writetext .AfterText
; 	promptbutton
; 	verbosegiveitem FRESH_WATER
; 	jumpthisopenedtext

; .SylviaOutroText:
; 	text "Good luck facing"
; 	line "Sal! He's one"
; 	cont "tough cookie."
; 	done

; .SylviaWinLossText:
; 	text "If ya can't take"
; 	line "the heat... "

; 	para "don't cook with"
; 	line "fire #mon!"
; 	done

; .SylviaIntroText:
; 	text "Ok, finally caught"
; 	line "up on orders. So"
; 	cont "battle? Let's go!"
; 	done

; .SylviaOrdersText:
; 	text "Hi! Sorry, can't"
; 	line "talk now!"

; 	para "Got too many"
; 	line "orders to fill!"
; 	done

; .SylviaAfterSalText:
; 	text "Wow, you even"
; 	line "beat Sal, and dur-"
; 	cont "ing the rush too!"
; 	done

; .AfterText:
; 	text "Shooweee! That was"
; 	line "a blazing hot"
; 	cont "battle!"

; 	para "Take this! I know"
; 	line "I sure need one"
; 	cont "after that..."
; 	done

BrinesburgGymSalScript: 
	checkevent EVENT_BEAT_WAITRESS_TWILA
	iffalse_jumptext .SalStaffText
	checkevent EVENT_BEAT_WAITRESS_BEV
	iffalse_jumptext .SalStaffText
	checkevent EVENT_BEAT_BAKER_SYLVIA
	iffalse_jumptext .SalStaffText
	sjumpfwd .FightSal
.FightSal
	checkevent EVENT_BEAT_SAL
	iftruefwd .FightDone
	faceplayer
	opentext
	writetext .SalIntroText
	waitbutton
	closetext
	winlosstext .SalWinLossText, 0
	loadtrainer SAL, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SAL
	opentext
	givebadge ZEPHYRBADGE, JOHTO_REGION
	closetext
.FightDone:
	opentext
	checkevent EVENT_GOT_TM63_WATER_PULSE
	iftrue_jumpopenedtext .SalFightDoneText
	; setmapscene FIELD_LAB, SCENE_FIELDLAB_NOOP
	; specialphonecall SPECIALCALL_ASSISTANT
	writetext .SalZephyrBadgeText
	promptbutton
	verbosegivetmhm TM_WATER_PULSE
	setevent EVENT_GOT_TM63_WATER_PULSE
	clearevent EVENT_FOUGHT_FIELD_LAB_MAGIGOON
	setmapscene BRINESBURG, SCENE_BRINESBURG_MAGIGOON
	jumpthisopenedtext

	text "By using a TM, a"
	line "#mon will"

	para "instantly learn a"
	line "new move."

	para "A TM can be used"
	line "as many times as"
	cont "you want."

	para "This contains the"
	line "move Water Pulse."

	para "It can sometimes"
	line "confuse your foe."
	done

.SalStaffText: 
	text "Welcome in!"
	line "You came today"
	cont "for a battle?"

	para "Apologies, but"
	line "we're in a bit of"
	cont "a rush right now."

	para "Could you give"
	line "the staff a hand"
	cont "with the orders?"
	done
	
.SalIntroText:
	text "I'm Sal, Brines-"
	line "burg's #mon"
	cont "Gym Leader."

	para "I love #mon"
	line "battling almost as"
	cont "much as I love"
	cont "cooking."

	para "Prepare your"
	line "tastebuds and your"
	cont "#mon!"

	para "Both will surely"
	line "remember this day"
	cont "forever!"
	done

.SalWinLossText:
	text "…well then. Time"
	line "for dessert"
	cont "I guess..."

	para "All right."
	line "Take this."

	para "It's the official"
	line "#mon League"
	cont "Chef Badge."
	done

.SalZephyrBadgeText:
	text "The Chef Badge"
	line "enables you to"

	para "command #mon,"
	line "even traded ones,"
	cont "up to <LV>20."

	para "Here--take this"
	line "too."
	done

.SalFightDoneText:
	text "There are #mon"
	line "Gyms in cities and"
	cont "towns ahead."

	para "You should test"
	line "your skills at"
	cont "these Gyms."

	para "I'm going to train"
	line "harder to become"

	para "the greatest chef"
	line "& #mon master!"
	done

GenericTrainerWaitress_Twila:
	generictrainer WAITRESS, TWILA, EVENT_BEAT_WAITRESS_TWILA, Waitress_TwilaSeenText, Waitress_TwilaBeatenText

	text "Ugh! I wasted my"
	line "my break on this!!"

	para "We need 2 Oddish"
	line "leaf & pecha berry"
	cont "salads for table 2"
	done

Waitress_TwilaSeenText:
	text "Yes, yes! I'll"
	line "take your order"
	cont "shortly..."

	para "Oh, a battle?"
	line "Sounds good!"

	para "I needed to take"
	line "my 15 anyway."

	para "Let's go!"
	done

Waitress_TwilaBeatenText:
	text "Did you have"
	line "to come during"
	cont "the rush?"

	para "Call ahead next"
	line "time you want to"
	cont "order up a battle!"
	done

GenericTrainerWaitress_Bev:
	generictrainer WAITRESS, BEV, EVENT_BEAT_WAITRESS_BEV, Waitress_BevSeenText, Waitress_BevBeatenText

	text "I guess I ain't"
	line "got room to talk!"

	para "Got an order for 2"
	line "Tauros Steaks rare"

	para "& 3 Finneon Filets"
	line "for table 4!"
	done

Waitress_BevSeenText:
	text "Your palette is"
	line "not refined enough"
	cont "to face Sal!"
	done

Waitress_BevBeatenText:
	text "I hope I don't"
	line "get fired for"
	cont "losing to you..."
	done

GenericTrainerBaker_Sylvia:
	generictrainer BAKER, SYLVIA, EVENT_BEAT_BAKER_SYLVIA, Baker_SylviaSeenText, Baker_SylviaBeatenText

	text "If ya can't take"
	line "the heat... "

	para "don't cook with"
	line "fire #mon!"
	done

Baker_SylviaSeenText:
	text "I've got orders to"
	line "fill, but I can"

	para "let these simmer"
	line "for a minute."
	done

Baker_SylviaBeatenText:
	text "Ok, finally caught"
	line "up on orders."

	para "Good luck facing"
	line "Sal! He's one"
	cont "tough cookie."
	done

BrinesburgGymStatue:
	gettrainername SAL, 1, STRING_BUFFER_4
	checkflag ENGINE_ZEPHYRBADGE
	iftruefwd .Beaten
	jumpstd gymstatue1
.Beaten:
	readvar VAR_BADGES
	ifgreater 8, .LyraToo
	jumpstd gymstatue2
.LyraToo
	jumpstd gymstatue3

BrinesburgGymGuyText:
	text "Hey! I'm no train-"
	line "er but I can give"
	cont "some advice!"

	para "Folkoran gyms"
	line "aren't aligned"

	para "to solely one type"
	line "like in other"
	cont "regions."

	para "Instead, they are"
	line "based around a"
	cont "particular theme."
	done

BrinesburgGymFisherText:
	text "I should get"
	line "an appetizer..."

	para "But I probably"
	line "won't finish"
	cont "my meal..."

	para "Ugh, but I'm "
	line "so hungry..."
	done

BrinesburgGymTeacherText:
	text "Should I get"
	line "the Glowing"

	para "Finneon Filet or"
	line "Stampedin' Tauros"
	cont "Steak?"
	done

BrinesburgGymPickyText:
	text "Do you think they"
	line "serve combusken"
	cont "nuggets here?"
	done

BrinesburgGymDateMText:
	text "I booked this"
	line "res months ago."

	para "You'd think she'd"
	line "appreciate the"
	cont "ambiance."
	done

BrinesburgGymDateFText:
	text "I can't believe"
	line "he brought me here"

	para "but he's not even"
	line "gonna battle Sal."

	para "What a poser..."
	done

BrinesburgBoothSchoolBoyText:
	text "We shouldn't have"
	line "cut class to come"

	para "here. We're gonna"
	line "get in trouble!"
	done
	
BrinesburgBoothRichBoyText:
	text "Sheesh, I wish"
	line "this guy would"
	cont "lighten up..."
	done

BrinesburgBoothCuteGirlText:
	text "..he is cuter, but"
	line "the other one is"
	cont "smarter..."

	para "Gah!"
	line "You heard nothing!"
	done

BrinesburgGymLassText:
	text "Can you move?"
	line "I'm trying to"

	para "make eye contact"
	line "with the waitress"
	cont "to get my check."
	done
