RiverfrontApt5F_MapScriptHeader:
	def_scene_scripts
	scene_script RiverfrontApt5FMeetingScene, SCENE_RIVERFRONT_APT_5F_PROF_MEETING
	scene_script RiverfrontApt5NoopScene, SCENE_RIVERFRONT_APT_5F_NOOP

	def_callbacks

	def_warp_events
	warp_event 12,  2, RIVERFRONT_APT_4F, 2
	warp_event 14,  3, RIVERFRONT_APT_ROOF, 1
	warp_event  7,  1, RIVERFRONT_APT_ELEVATOR, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  5, SPRITE_POPLAR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ProfMeeting_PoplarScript, EVENT_PROF_MEETING
	object_event  7,  5, SPRITE_PAWPAW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ProfMeeting_PawpawScript, EVENT_PROF_MEETING
	object_event  4,  5, SPRITE_FIR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ProfMeeting_FirScript, EVENT_PROF_MEETING
	object_event  4,  4, SPRITE_ASHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ProfMeeting_AsherScript, EVENT_PROF_MEETING
	object_event  6,  3, SPRITE_BROOKE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, ProfMeeting_BrookeScript, EVENT_PROF_MEETING
	itemball_event 12,  6, WIDE_LENS, 1, EVENT_OLIVINE_LIGHTHOUSE_6F_WIDE_LENS

	object_const_def
	const RIVERFRONT_APT_5F_POPLAR
	const RIVERFRONT_APT_5F_PAWPAW
	const RIVERFRONT_APT_5F_FIR
	const RIVERFRONT_APT_5F_ASHER
	const RIVERFRONT_APT_5F_BROOKE

RiverfrontApt5FMeetingScene:
	sdefer ProfMeetingScript
RiverfrontApt5NoopScene:
	end


ProfMeetingScript:
	applyonemovement PLAYER, step_down
	playmusic MUSIC_PROF_OAK
	showemote EMOTE_SHOCK, RIVERFRONT_APT_5F_POPLAR, 15
	turnobject RIVERFRONT_APT_5F_POPLAR, UP
	showtext ProfMeeting_PoplarText1
	applyonemovement PLAYER, step_down
	turnobject RIVERFRONT_APT_5F_BROOKE, RIGHT
	showemote EMOTE_HAPPY, RIVERFRONT_APT_5F_BROOKE, 15
	showemote EMOTE_BOLT, RIVERFRONT_APT_5F_ASHER, 15
	turnobject RIVERFRONT_APT_5F_BROOKE, UP
	turnobject RIVERFRONT_APT_5F_POPLAR, LEFT
	turnobject RIVERFRONT_APT_5F_POPLAR, UP
	turnobject RIVERFRONT_APT_5F_PAWPAW, UP
	showtext ProfMeeting_PoplarText2
	showemote EMOTE_SHOCK, RIVERFRONT_APT_5F_PAWPAW, 15
	showtext ProfMeeting_PawpawText1
	turnobject RIVERFRONT_APT_5F_POPLAR, LEFT
	turnobject RIVERFRONT_APT_5F_POPLAR, UP
	showtext ProfMeeting_PoplarText3
	showemote EMOTE_SHOCK, RIVERFRONT_APT_5F_BROOKE, 15
	showemote EMOTE_SHOCK, RIVERFRONT_APT_5F_ASHER, 15
	showemote EMOTE_SHOCK, PLAYER, 15
	showtext ProfMeeting_PawpawText2
	applyonemovement RIVERFRONT_APT_5F_FIR, step_right
	showtext ProfMeeting_FirText1
	applyonemovement RIVERFRONT_APT_5F_POPLAR, step_up
	turnobject RIVERFRONT_APT_5F_POPLAR, RIGHT
	turnobject PLAYER, LEFT
	showtext ProfMeeting_PoplarText4
	applyonemovement RIVERFRONT_APT_5F_POPLAR, step_down
	turnobject RIVERFRONT_APT_5F_POPLAR, UP
	waitsfx
	special RestartMapMusic
	setscene SCENE_RIVERFRONT_APT_5F_NOOP
	end


ProfMeeting_PlayerWalksIn:
	step_down
	step_down
	step_end


ProfMeeting_PoplarText1:
	text "Oh, <PLAYER>!"
	line "Please come in!"
	done

ProfMeeting_PoplarText2:
	text "Poplar: Thank you"
	line "all for coming."

	para "We three have" 
	line "been conducting"
	cont "secret research..."
	done

ProfMeeting_PawpawText1:
	text "Pawpaw: Yessirree!"
	line "And what we've"
	cont "found is no joke!"
	done

ProfMeeting_PoplarText3:
	text "Poplar: That's"
	line "right, Cecil!"
	
	para "Several habitats"
	line "across Folkora are"

	para "showing signs of"
	line "degredation."
	done

ProfMeeting_PawpawText2:
	text "Pawpaw: My find-"
	line "ings confirm what "

	para "Profs.Poplar & Fir"
	line "have been documen-"
	cont "ting. You see,"

	para "there are types of"
	line "#mon called"
	cont "indicator species."

	para "These #mon only"
	line "appear when their"

	para "habitat is healthy"
	line "and thriving!"
	done
	
ProfMeeting_FirText1:
	text "We have identified"
	line "5 such locations"
	cont "in the region."

	para "So, we will split"
	line "those locations"
	cont "to investigate."

	para "And we believe"
	line "there may be a"
	cont "group causing this"

	para "so we need to be"
	line "discrete about how"
	cont "we handle this."
	done

ProfMeeting_PoplarText4:
	text "<PLAYER>, you'll"
	line "act as a runner."

	para "Meaning you'll go"
	line "to each location"
	cont "to assist."

	para "Since I can't"
	line "leave town without"
	cont "raising suspicion,"

	para "I'll be assigned"
	line "to Jolly Sods."

	para "Please join me"
	line "when you can!"

	para "Asher and Brooke,"
	line "please speak to"

	para "Prof. Pawpaw for"
	line "your assignments!"
	done


ProfMeeting_PoplarScript:
	jumpthistextfaceplayer

	text "Jolly Sods is just"
	line "south of Olsteeton"

	para "Meet me there"
	line "soon as you can,"
	cont "<PLAYER>!"
	done 

ProfMeeting_PawpawScript:
	jumpthistextfaceplayer

	text "We're all countin'"
	line "on ya, <PLAYER>!"
	done 

ProfMeeting_FirScript:
	jumpthistextfaceplayer

	text "I'll be assigned"
	line "to Cranberry Bog."

	para "My lab is near"
	line "there anyway."
	done 

ProfMeeting_AsherScript:
	jumpthistextfaceplayer
	
	text "...I better be"
	line "assigned somewhere"

	para "that I can help"
	line "Bug #mon..."
	done

ProfMeeting_BrookeScript:
	jumpthistextfaceplayer
	
	text "Ohh those poor"
	line "#mon..."

	para "We have to help"
	line "them, <PLAYER>!"
	done
