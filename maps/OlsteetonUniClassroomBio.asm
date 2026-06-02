OlsteetonUniClassroomBio_MapScriptHeader:
	def_scene_scripts
	scene_script OlsteetonUniClassroomBioMeetPoplarScene, SCENE_OLSTEETONUNICLASSROOMBIO_MEET_POPLAR
	scene_script OlsteetonUniClassroomBioNoopScene, SCENE_OLSTEETONUNICLASSROOMBIO_NOOP


	def_callbacks

	def_warp_events
	warp_event  5,  9, OLSTEETON_UNI_CLASSROOM_BLDG, 3
	warp_event  6,  9, OLSTEETON_UNI_CLASSROOM_BLDG, 3

	def_coord_events

	def_bg_events
	bg_event  7,  0, BGEVENT_JUMPTEXT, OlsteetonUniClassroomBioBlackboardText
	bg_event  5,  0, BGEVENT_JUMPTEXT, OlsteetonUniClassroomBioBlackboardText
	bg_event  6,  0, BGEVENT_JUMPTEXT, OlsteetonUniClassroomBioBlackboardText
	bg_event 10,  1, BGEVENT_JUMPTEXT, OlsteetonUniClassroomBioBookshelf1Text
	bg_event  9,  1, BGEVENT_JUMPTEXT, OlsteetonUniClassroomBioBookshelf2Text

	def_object_events
	object_event  5,  2, SPRITE_POPLAR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_GOT_POKEDEX_FROM_POPLAR
	object_event  3,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, (1 << EVE) | (1 << NITE), 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniClassroomBioLassText, -1
	object_event  9,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, (1 << EVE) | (1 << NITE), 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniClassroomBioSuperNerdText, -1
	object_event  5,  2, SPRITE_POPLAR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, (1 << EVE) | (1 << NITE), PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, UniClassroomBio_ProfPoplarScript, -1

	object_const_def
	const OLSTEETONUNICLASSROOMBIO_POPLAR

OlsteetonUniClassroomBioMeetPoplarScene:
	sdefer OlsteetonUniClassroom_AutowalkUpToPoplar
OlsteetonUniClassroomBioNoopScene:
	end

OlsteetonUniClassroom_AutowalkUpToPoplar:
	applymovement PLAYER, UniClassroomBio_PlayerWalksToPoplar
	showtext PoplarIntroText1
	showemote EMOTE_SHOCK, OLSTEETONUNICLASSROOMBIO_POPLAR, 15
	turnobject PLAYER, RIGHT
	turnobject OLSTEETONUNICLASSROOMBIO_POPLAR, LEFT
	opentext
	writetext PoplarIntroText2
	promptbutton
	waitsfx
	writetext PoplarIntroText3
	promptbutton
	turnobject OLSTEETONUNICLASSROOMBIO_POPLAR, DOWN
	writetext PoplarIntroText4
	promptbutton
	turnobject OLSTEETONUNICLASSROOMBIO_POPLAR, LEFT
	writetext PoplarIntroText5
	clearevent EVENT_GOT_POKEDEX_FROM_POPLAR
	clearevent EVENT_POPLAR_OFFICE_FIR
	waitbutton
	closetext
	applymovement OLSTEETONUNICLASSROOMBIO_POPLAR, UniClassroomBio_PoplarExits
	playsound SFX_EXIT_BUILDING
	disappear OLSTEETONUNICLASSROOMBIO_POPLAR
	waitsfx
	setmapscene OLSTEETON_UNI_OFFICE_POPLAR, SCENE_UNI_OFFICE_POPLAR_DEX
	setscene SCENE_OLSTEETONUNICLASSROOMBIO_NOOP
	playmapmusic
	end

UniClassroomBio_ProfPoplarScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_POKEDEX_FROM_POPLAR
	iftrue_jumpopenedtext MrPokemonText_AlwaysNewDiscoveries
	checkevent EVENT_GAVE_DOSSIER_TO_PAWPAW
	jumpopenedtext MrPokemonText_ImDependingOnYou


UniClassroomBio_PlayerWalksToPoplar:
	step_up
	step_up
	step_up
	step_up
	step_left
	step_up
	step_end

UniClassroomBio_PoplarExits:
	step_up
	step_right
	step_right
	step_down
	step_down
	step_down
	step_down
	step_down
	step_left
	step_down
	step_down
	step_end


PoplarIntroText1:
	text "POPLAR: Ok class!"
	line "Today we're gonna"
	cont "talk about one"
	cont "of #mon's big-"
	cont "gest mysteries!"

	para "Regional Variants!"
	done

PoplarIntroText2:
	text "Oh hi there! You"
	line "must be <PLAYER>."

	para "Prof.Pawpaw said"
	line "he was sending"
	cont "a new assistant."
	done

PoplarIntroText3:
	text "I have some"
	line "urgent documents"
	cont "for Prof. Pawpaw."

	para "This is not"
	line "the best place"
	cont "to talk about it."
	done

PoplarIntroText4:
	text "Sorry folks!"
	line "Something has come"
	cont "up, so we'll"
	cont "call it there."

	para "Read chapter 4"
	line "for next time."
	cont "Class dismissed!"
	done

PoplarIntroText5:
	para "Come meet me"
	line "in my office."
	done

OlsteetonUniClassroomBioLassText:
	text "Some #mon have"
	line "different forms"
	cont "even in the"
	cont "same region!"

	para "My mamaw has"
	line "a Castorch to"
	cont "help in her"
	cont "kitchen."

	para "But I hear that"
	line "Rusty's is much"
	cont "different!"
	done

OlsteetonUniClassroomBioSuperNerdText:
	text "Do you know any-"
	line "thing about"
	cont "Meowth?"

	para "It's evolved to"
	line "have several"
	cont "regional variants!"

	para "We even have our"
	line "own!"
	done

OlsteetonUniClassroomBioBlackboardText:
	text "'Variation'"
	line "is written on the"
	cont "blackboard."

	para "'... many things"
	line "can lead to reg-"
	cont "ional variation."

	para "Certain #mon may"
	line "adapt to new env-"
	cont "ironments by"
	cont "evolving in new"
	cont "& unusual ways!'"
	done

OlsteetonUniClassroomBioBookshelf1Text:
	text "There's a book!"

	para "It's called"
	line "'The Proper Evolut-"
	cont "ionary Biologist's"
	cont "Compendium of Term-"
	cont "inology & Historic"
	cont "Data-Driven"
	cont "Insights'"

	para "..."
	
	para "Okay, that one is"
	line "a little over your"
	cont "head..."
	done

OlsteetonUniClassroomBioBookshelf2Text:
	text "It's a paper writ-"
	line "ten by Prof."
	cont "Pawpaw."

	para "'Biomes &"
	line "Bouffalants:"
	
	para "A Study of BU's"
	line "Head Honcho...'"
	done

MrPokemonText_ImDependingOnYou:
	text "I'm depending on"
	line "you!"
	done

MrPokemonText_AlwaysNewDiscoveries:
	text "Life is delight-"
	line "ful! Always, new"

	para "discoveries to be"
	line "made!"
	done
