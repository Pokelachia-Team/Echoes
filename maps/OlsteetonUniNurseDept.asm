OlsteetonUniNurseDept_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  6,  9, OLSTEETON_UNI_SCIENCE_CENTER, 3
	warp_event  7,  9, OLSTEETON_UNI_SCIENCE_CENTER, 3

	def_coord_events

	def_bg_events
	bg_event  8,  6, BGEVENT_JUMPTEXT, OlsteetonUniNurseDeptSignText

	def_object_events
	object_event  9,  3, SPRITE_BOWING_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, OlsteetonUniNurseDeptNurseScript, -1
	object_event  9,  7, SPRITE_BOWING_NURSE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniNurseDeptSignText, -1
	object_event  1,  4, SPRITE_BOWING_NURSE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniNurseDeptSignText, -1
	object_event  3,  8, SPRITE_BOWING_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniNurseDeptSignText, -1
	pokemon_event  4,  3, CHANSEY, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_PINK, NurseDeptFluttrfawnText, -1


OlsteetonUniNurseDeptNurseScript:
	showtextfaceplayer OlsteetonUniNurseDeptNurseText
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special Special_FadeInQuickly
	special RestartMapMusic
	jumpthistext

	text "and that's how you"
	line "heal a #mon!"
	done

OlsteetonUniNurseDeptNurseText:
	text "Needs dialogue"
	done

OlsteetonUniNurseDeptSignText:
	text "A healthy #mon"
	line "is a happy #-"
	cont "mon!"

	para "Don't let your"
	line "friends faint"
	cont "during battle!"
	done

NurseDeptFluttrfawnText:
	text "Fluttrfawn: Chan"
	line "sey! sey!"
	done