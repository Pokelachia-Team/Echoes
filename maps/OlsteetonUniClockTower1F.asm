OlsteetonUniClockTower1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  7, OLSTEETON_UNI, 5
	warp_event  5,  7, OLSTEETON_UNI, 5
	warp_event  6,  0, OLSTEETON_UNI_CLOCK_TOWER_2F, 1

	def_coord_events

	def_bg_events
	bg_event  2,  5, BGEVENT_JUMPTEXT, OlsteetonUniClockTower1FStatueText
	bg_event  7,  5, BGEVENT_JUMPTEXT, OlsteetonUniClockTower1FStatueText

	def_object_events
	object_event  5,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, OlsteetonUniClockTower1FTeacherScript, -1
	itemball_event  1,  1, PARALYZEHEAL, 1, EVENT_SPROUT_TOWER1F_PARALYZEHEAL

	object_const_def


OlsteetonUniClockTower1FTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM10_HIDDEN_POWER
	iftruefwd .CheckHiddenPower
	writetext .ClockTower1FTeacherText1

.CheckHiddenPower
	writetext .HPText1
	yesorno
	iffalse_jumpopenedtext .HPText3
	writetext .HPText2
	promptbutton
	special Special_HiddenPowerGuru
	iffalse_jumpopenedtext .HPText3
	ifequalfwd $1, .Egg
	jumpthisopenedtext

	text "Hmm… Ah!"

	para "Your "
	text_ram wStringBuffer3
	line "has a Hidden Power"
	cont "of "
	text_ram wStringBuffer1
	text "!"
	done

.Egg:
	jumpthisopenedtext

	text "An Egg has not yet"
	line "developed a Hidden"
	cont "Power…"
	done

.ClockTower1FTeacherText1:
	text "Here for the"
	line "Clock Tower"
	cont "Challenge?"

	para "Good luck..."
	line "See ya shortly,"
	cont "I'm sure."
	done

.HPText1:
	text "Want me to check"
	line "the Hidden Power"
	cont "of your #mon?"
	done

.HPText2:
	text "Which #mon's"
	line "Hidden Power"
	cont "should I find?"
	done

.HPText3:
	text "…Okay then…"
	done

OlsteetonUniClockTower1FStatueText:
	text "The placard"
	line "displays a"
	cont "list of names."
	done
