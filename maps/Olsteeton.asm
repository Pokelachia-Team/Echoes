Olsteeton_MapScriptHeader:
	def_scene_scripts
	scene_const SCENE_OLSTEETON_PSYDUCK_FOUND

	def_callbacks

	def_warp_events
	warp_event  6, 22, ROUTE_102_OLSTEETON_GATE, 3
	warp_event  6, 23, ROUTE_102_OLSTEETON_GATE, 4
	warp_event 10, 13, OLSTEETON_GYM_1F, 1
	warp_event 17, 19, OLSTEETON_POKE_CENTER, 1
	warp_event 15, 13, OLSTEETON_MALL_1, 1
	warp_event 18, 13, OLSTEETON_MALL_2, 1
	warp_event 21, 13, OLSTEETON_MALL_3, 1
	warp_event 29, 13, OLSTEETON_MART, 1
	warp_event 31, 22, RIVERFRONT_APT_1F, 1
	warp_event 31, 23, RIVERFRONT_APT_1F, 2
	warp_event 36, 22, RIVERFRONT_APT_1F, 3
	warp_event 36, 23, RIVERFRONT_APT_1F, 4
	warp_event 11, 19, OLSTEETON_DINER, 1
	warp_event 10, 28, OLSTEETON_TRAIN_STATION, 1
	warp_event 10, 29, OLSTEETON_TRAIN_STATION, 2
	warp_event 29, 33, OLSTEETON_NAME_RATER, 1
	warp_event  7, 31, OLSTEETON_FISHER_HOUSE, 1
	warp_event 31, 37, OLSTEETON_QUICK_HOUSE, 1
	warp_event 13, 37, OLSTEETON_GYM_HOUSE, 1
	warp_event 21, 35, OLSTEETON_FOREST_GATE, 1
	warp_event 22, 35, OLSTEETON_FOREST_GATE, 2
	warp_event 37, 12, OLSTEETON_UNI_GATE, 1
	warp_event 37, 13, OLSTEETON_UNI_GATE, 2
	warp_event 35, 30, OLSTEETON_ROUTE_103_GATE, 1
	warp_event 35, 31, OLSTEETON_ROUTE_103_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 19, 27, BGEVENT_JUMPTEXT, OlsteetonSignText
	bg_event  8, 14, BGEVENT_JUMPTEXT, OlsteetonGymSignText
	bg_event  6, 32, BGEVENT_JUMPTEXT, OlsteetonFishingGuruSignText
	bg_event 27, 33, BGEVENT_JUMPTEXT, OlsteetonNameRaterSignText
	bg_event 37, 11, BGEVENT_JUMPTEXT, OlsteetonUniversitySignText
	bg_event 16, 13, BGEVENT_JUMPTEXT, OlsteetonDeptStoreSignText
	bg_event 30, 13, BGEVENT_JUMPTEXT, OlsteetonMartSignText
	bg_event 18, 19, BGEVENT_JUMPTEXT, OlsteetonPokeCenterSignText
	bg_event 20, 14, BGEVENT_JUMPTEXT, OlsteetonHomeDecorStoreSignText
	bg_event 38,  3, BGEVENT_RIGHT,    OlsteetonBoatScript
	bg_event 20, 32, BGEVENT_JUMPTEXT, OlsteetonForestSignText
	bg_event 14, 19, BGEVENT_JUMPTEXT, OlsteetonCafeSignText
	bg_event 31, 21, BGEVENT_JUMPTEXT, OlsteetonHotelSignText
	bg_event  6, 20, BGEVENT_JUMPTEXT, OlsteetonRoute102Text
	bg_event 34, 27, BGEVENT_JUMPTEXT, OlsteetonRoute103Text
	bg_event 11, 27, BGEVENT_JUMPTEXT, OlsteetonTrainSignText

	; bg_event  3, 24, BGEVENT_ITEM + PP_UP, EVENT_Olsteeton_CITY_HIDDEN_PP_UP

	def_object_events
	object_event 36,  3, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonFisherText, -1
	pokemon_event 35,  3, RIVEBLOK, SPRITEMOVEDATA_POKEMON, -1, PAL_MON_BLUE, OlsteetonRiveblokText, -1
	object_event 12, 22, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonTeacher1Text, -1
	object_event 27, 27, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonGramps1Text, -1
	object_event 25, 18, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonGramps2Text, -1
	object_event 23,  5, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonYoungster1Text, -1
	object_event  8, 35, SPRITE_CAMPER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonYoungster2Text, -1
	object_event 20, 30, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, 0, OBJECTTYPE_SCRIPT, 0, OlsteetonPsyduckLadyScript, EVENT_GOT_TM54_FALSE_SWIPE
	object_event 26, 36, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonLassText_PCC, -1
	object_event 23, 19, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonLassText, -1
	object_event 22, 16, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonBandRocker1Text, -1
	object_event 24, 16, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonBandRocker2Text, -1
	object_event 26, 16, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonBandRocker3Text, -1
	object_event 26, 19, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonBandCooltrainerFText, -1
	object_event 10, 14, SPRITE_RUSTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlsteetonRustyScript, EVENT_OLSTEETON_ABANDONED_MILL_METAL_COAT


	object_const_def
	const OLSTEETON_RUSTY

	itemball_event 24,  10, ETHER, 1, EVENT_OLSTEETON_ETHER
	; cuttree_event 33, 34, EVENT_Olsteeton_CITY_CUT_TREE
	; cuttree_event -5, 24, EVENT_ROUTE_16_CUT_TREE

OlsteetonBoatScript:
	checkevent EVENT_BOAT_PERMISSION
	iffalse_jumptext OlsteetonBoatText
	sjumpfwd .Olsteeton_BoatQuestion
	
	 
.Olsteeton_BoatQuestion:
	opentext
	writetext BoatText_Ask
	yesorno
	iftruefwd Olsteeton_BoatRide
	endtext

Olsteeton_BoatRide:
	warp OLSTEETON_ABANDONED_MILL_OUTSIDE, $A, $D
	end

OlsteetonPsyduckLadyScript:
	faceplayer
	opentext
	writetext OlsteetonPsyduckLadyText
	yesorno
	iffalse_jumpopenedtext OlsteetonPsyduckLadyRejectedText
	writetext OlsteetonPsyduckLadyAcceptedText
	waitbutton
	closetext
	setmapscene RIVERFRONT_APT_ROOF, SCENE_RIVERFRONTAPTROOF_FOUND_PSYDUCK
	end

OlsteetonRustyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_RUSTY_CHECK
	iftrue_jumpopenedtext OlsteetonRustyCrewText
	checkevent EVENT_FOUGHT_FIELD_LAB_MAGIGOON
	iftruefwd .RustyBattleCheck
	jumpopenedtext OlsteetonRustyText1
	end

.RustyBattleCheck
	writetext RustyAskBattleText
	yesorno
	iffalsefwd .RustyWait
	writetext RustySeenText
	waitbutton
	closetext
	winlosstext RustyWinText, RustyLoseText
	setlasttalked OLSTEETON_RUSTY
	loadtrainer RUSTY, 1
	startbattle
	reloadmap
	special HealParty
	sjumpfwd .FinishRusty

.RustyWait:
	opentext
	writetext OlsteetonRusty_HurryText
	waitbutton
	playmapmusic
	closetext
	end

.FinishRusty:
	opentext
	writetext OlsteetonRusty_NotReadyText
	waitbutton
	writetext OlsteetonRustyCrewText
	setevent EVENT_BEAT_RUSTY_CHECK
	waitbutton
	closetext
	special HealParty
	playmapmusic
	end

RustyAskBattleText:
	text "So ya think yer"
	line "ready to challenge"
	cont "the Wrecking"
	cont "Ball, eh?"
	done

OlsteetonRusty_HurryText:
	text "Well hurry up"
	line "then! I ain't"
	cont "got all day!"
	done

RustySeenText:
	text "Let's see if the"
	line "mettle yer made"
	cont "of is tough enough"
	done

RustyWinText:
	text "Hmm. Interestin'"
	done

RustyLoseText:
	text "Well, it was"
	line "to be expected."
	cont "Don't fret."
	done

OlsteetonRusty_NotReadyText:
	text "As I thought,"
	line "you're not ready"
	cont "to challenge my"
	cont "gym anyhow."

	para "Those #mon"
	line "are ones I caught"
	cont "recently..."

	para "My real team is"
	line "much stronger."

	para "Try the Brinesburg"
	line "Gym. It's a good"
	cont "one for beginners."

	para "You might be"
	line "strong enough to"
	cont "help out though..."
	done

OlsteetonRustyCrewText:
	text "My crew are set"
	line "up in a place"
	cont "downtown."

	para "Go talk to Betty"
	line "there about the"
	cont "old steel mill."
	done

BoatText_Ask:
	text "Take the boat"
	line "to the abandoned"
	cont "steel mill?"
	done

OlsteetonSailboatText:
	text "It's a boat"
	line "named Magic Harp."
	done

OlsteetonFlyPoint:
	setflag ENGINE_FLYPOINT_OLSTEETON
	endcallback

OlsteetonBandRocker1Text: 
	text "Country Routes!"
	line "Take me to"
	cont "my house!"
	done

OlsteetonBandRocker2Text:
	text "I beloooong"
	line "in Folkora!"
	done

OlsteetonBandRocker3Text:
	text "I belooong"
	line "HEY! You messed"
	cont "up my harmony!"
	done

OlsteetonRustyText1:
	text "Gym's still under"
	line "construction. Come"
	cont "back later."

	para "Gah, what to"
	line "do about the"
	cont "old mill..."

	para "Huh? Oh it's"
	line "nothin to trouble"
	cont "yourself with."
	done

OlsteetonBandCooltrainerFText:
	text "Olsteeton Mall"
	line "has a wide"
	cont "variety and"

	para "best selection"
	line "of merchandise"
	cont "in the area!"

	para "But nothing beats"
	line "Sunset Mountain"
	cont "Shopping Center"
	done

OlsteetonFisherText:
	text "This Riveblok is"
	line "my partner."

	para "It rescued me"
	line "from a boating"

	para "accident when I"
	line "was just a lad."

	para "It's the"
	line "bestest swimmer!"
	done

OlsteetonRiveblokText:
	text "Riveblok: Bloklok!"
	done

OlsteetonTeacher1Text:
	text "It's a real shame"
	line "what happened with"
	cont "the ol steel mill."

	para "Not even Rusty"
	line "could stop the"
	cont "acquisition."
	done

OlsteetonGramps1Text:
	text "Nihihi! I'm an"
	line "ol' coot!"
	done

OlsteetonGramps2Text:
	text "THIS BAND ROCKS!!"
	line "WOOOOO!"

	para "Maybe I should"
	line "crowd surf!"
	done

OlsteetonYoungster1Text:
	text "Want to know a"
	line "secret?"

	para "One of the shops"
	line "has a restricted"
	cont "basement."
	done

OlsteetonYoungster2Text:
	text "The restaurant's"
	line "specialty is"
	cont "spaghetti,"

	para "but if you ask me,"
	line "I think it's"
	cont "just alright."

	para "The restaurant in"
	line "Brinesburg is so"

	para "much better, and"
	line "you can battle"
	cont "in there!"
	done

OlsteetonPsyduckLadyText:
	text "LUCY! HEEEEERE"
	line "LUCELU...OH!"

	para "Er...you..."
	line "I'm looking for"
	cont "my lost Psyduck,"
	cont "Lucy..."
	
	para "Would you help me"
	line "find my Lucy?"
	done

OlsteetonPsyduckLadyAcceptedText:
	text "Oh, you will?"
	line "Thank you!"

	para "I'll be glad"
	line "to reward you"
	cont "if you find her!"
	done

OlsteetonPsyduckLadyRejectedText:
	text "No? Oh, well"
	line "if you're not"

	para "going to help,"
	line "get lost."
	cont "LUUUU..."
	done

OlsteetonLassText_PCC:
	text "I love being"
	line "woken by the"
	cont "train at night!"

	para "..."
	line "NOT!"
	done

OlsteetonLassText:
	text "In another town,"
	line "#mon are offer-"
	cont "ed as prizes at"
	cont "the Arcade..."

	para "Kinda unethical"
	line "if you ask me."
	done

OlsteetonSignText:
	text "Olsteeton"

	para "The City of"
	line "Old Industry"
	done

OlsteetonGymSignText:
	text "Olsteeton"
	line "#mon Gym"
	cont "Leader: Rusty"

	para "The Wrecking Ball"
	line "OPEN SOON"
	done

OlsteetonUniversitySignText:
	text "Bouffalant Academy"

	para "“Growth Through"
	line "Intense Study”"
	done

OlsteetonDeptStoreSignText:
	text "Find What You"
	line "Need at Olsteeton"
	cont "Mall!"
	done

OlsteetonMartSignText:
	text "Olsteeton Mart"
	line "Standard trainer"
	cont "goods sold here!"
	done

OlsteetonPokeCenterSignText:
	text "#Center"

	para "We heal hurt"
	line "#mon!"
	done

OlsteetonFishingGuruSignText:
	text "Seeking promising"
	line "young fisher."
	cont "Inquire within!"
	done

OlsteetonHomeDecorStoreSignText:
	text "Olsteeton Mall"
	line "MagiMart"

	para "Have you Herb?"
	line "Bob's Battle Emp."
	done

OlsteetonBoatText:
	text "It's a boat"
	line "called Magic Harp."
	done

OlsteetonCafeSignText:
	text "Olsteeton Diner"

	para "Our spaghetti is"
	line "to di(n)e for!"
	done

OlsteetonHotelSignText:
	text "Riverside Apts."

	para "Now leasing"
	line "1 BR apartments!"
	done

OlsteetonTrainSignText:
	text "Olsteeton Train"
	line "Station"

	para "We'll get ya"
	line "there eventually."
	done

OlsteetonRoute102Text:
	text "Welcome to"
	line "Olsteeton!"

	para "WEST: Route 102"
	done

OlsteetonRoute103Text:
	text "WEST: Olsteeton"
	line "EAST: Route 103"
	done

OlsteetonNameRaterSignText:
	text "Name Rater's"
	line "House"
	done

OlsteetonForestSignText:
	text "SOUTH: Jolly Sods"
	line "Regional Park"

	para "NORTH: Olsteeton"
	done