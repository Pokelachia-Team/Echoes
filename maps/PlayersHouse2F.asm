PlayersHouse2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, PlayersHouse2FInitializeRoom
	callback MAPCALLBACK_TILES, PlayersHouse2FSetSpawn

	def_warp_events
	warp_event  7,  0, PLAYERS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  4,  1, BGEVENT_UP, PlayersHousePC
	bg_event  5,  1, BGEVENT_READ, PlayersHouseRadio
	bg_event  3,  1, BGEVENT_READ, PokemonJournalProfPawpawScript
	bg_event  1,  1, BGEVENT_UP, PlayerHouse2FTVScript
	bg_event  6,  0, BGEVENT_IFSET, PlayersHousePoster

	def_object_events
	object_event  0,  1, SPRITE_CONSOLE, SPRITEMOVEDATA_STILL, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, GameConsole, EVENT_PLAYERS_HOUSE_2F_CONSOLE
	object_event  4,  4, SPRITE_DOLL_1, SPRITEMOVEDATA_STILL, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, Doll1, EVENT_PLAYERS_HOUSE_2F_DOLL_1
	object_event  5,  4, SPRITE_DOLL_2, SPRITEMOVEDATA_STILL, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, Doll2, EVENT_PLAYERS_HOUSE_2F_DOLL_2
	object_event  0,  3, SPRITE_BIG_DOLL, SPRITEMOVEDATA_BIGDOLL, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, BigDoll, EVENT_PLAYERS_HOUSE_2F_BIG_DOLL
	itemball_event  7,  4, POTION, 1, EVENT_PLAYER_HOUSE_POTION


PlayersHouse2FInitializeRoom:
	special ToggleDecorationsVisibility
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	endcallback

PlayersHouse2FSetSpawn:
	special ToggleMaptileDecorations
	endcallback

Doll1:
	describedecoration 1

Doll2:
	describedecoration 2

BigDoll:
	describedecoration 3

GameConsole:
	describedecoration 4

PlayersHousePoster:
	dw EVENT_PLAYERS_ROOM_POSTER
	describedecoration 0

PlayersHouseRadio:

if DEF(DEBUG)

	opentext
	; time
	special Special_SetDayOfWeek
	special Special_InitialClearDSTFlag
	; full pokegear
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	setflag ENGINE_MAP_CARD
	setflag ENGINE_RADIO_CARD
	setflag ENGINE_EXPN_CARD
	; pokedex
	setflag ENGINE_POKEDEX
;	setflag ENGINE_UNOWN_DEX
	; judge machine
	setflag ENGINE_JUDGE_MACHINE
	; all key items
for x, 1, NUM_KEY_ITEMS + 1
if x != MACHINE_PART
	givekeyitem x
endc
endr
	; all tms+hms
for x, NUM_TMS + NUM_HMS
	givetmhm x
endr
	; useful items
for x, POKE_BALL, MAGI_BALL + 1
if x != PARK_BALL && x != SAFARI_BALL
	giveitem x, 99
endc
endr
	giveitem MAX_POTION, 99
	giveitem FULL_RESTORE, 99
	giveitem MAX_REVIVE, 99
	giveitem MAX_ELIXIR, 99
	giveitem HP_UP, 99
	giveitem PROTEIN, 99
	giveitem IRON, 99
	giveitem CARBOS, 99
	giveitem CALCIUM, 99
	giveitem ZINC, 99
	giveitem RARE_CANDY, 99
	giveitem PP_UP, 99
	giveitem PP_MAX, 99
	giveitem SACRED_ASH, 99
	giveitem MAX_REPEL, 99
	giveitem MAX_REPEL, 99
	giveitem ESCAPE_ROPE, 99
	giveitem ABILITY_CAP, 99
	giveitem LEAF_STONE, 99
	giveitem FIRE_STONE, 99
	giveitem WATER_STONE, 99
	giveitem THUNDERSTONE, 99
	giveitem ICE_STONE, 99
	giveitem MOON_STONE, 99
	giveitem SUN_STONE, 99
	giveitem DUSK_STONE, 99
	giveitem SHINY_STONE, 99
	giveitem ODD_SOUVENIR, 99
	giveitem EXP_SHARE, 99
	giveitem LEFTOVERS, 99
	giveitem MULCH, 99
	giveitem SWEET_HONEY, 99
	giveitem SILVER_LEAF, 99
	giveitem GOLD_LEAF, 99
	giveitem MINT_LEAF, 99
	giveitem BOTTLE_CAP, 99
	giveitem BIG_NUGGET, 99
	giveitem PORTRAITMAIL, 99
	giveitem ARMOR_SUIT, 1
for x, FIRST_BERRY, FIRST_BERRY + NUM_BERRIES
	giveitem x, 99
endr
	; all decorations except Diploma
for x, EVENT_DECO_BED_1, EVENT_DECO_BIG_LAPRAS_DOLL + 1
	setevent x
endr
	; max money
	loadmem wMoney+0, 9_999_999 >> 16
	loadmem wMoney+1, HIGH(9_999_999)
	loadmem wMoney+2, LOW(9_999_999)
	givecoins 50000
	loadmem wBlueCardBalance, 99
	loadmem wBattlePoints+0, 0
	loadmem wBattlePoints+1, 250
for x, NUM_CANDIES
	loadmem wCandyAmounts + x, 99
endr
for x, NUM_WINGS
	loadmem wWingAmounts + x * 2 + 0, HIGH(999)
	loadmem wWingAmounts + x * 2 + 1, LOW(999)
endr
for x, NUM_APRICORNS
	loadmem wApricorns + x, 99
endr
	; all badges
	; setflag ENGINE_ZEPHYRBADGE
	; setflag ENGINE_HIVEBADGE
	; setflag ENGINE_PLAINBADGE
	; setflag ENGINE_FOGBADGE
	; setflag ENGINE_STORMBADGE
	; setflag ENGINE_MINERALBADGE
	; setflag ENGINE_GLACIERBADGE
	; setflag ENGINE_RISINGBADGE
	; setflag ENGINE_BOULDERBADGE
	; setflag ENGINE_CASCADEBADGE
	; setflag ENGINE_THUNDERBADGE
	; setflag ENGINE_RAINBOWBADGE
	; setflag ENGINE_MARSHBADGE
	; setflag ENGINE_SOULBADGE
	; setflag ENGINE_VOLCANOBADGE
	; setflag ENGINE_EARTHBADGE
	; setevent EVENT_BEAT_SAL
	; setevent EVENT_BEAT_BUGSY
	; setevent EVENT_BEAT_WHITNEY
	; setevent EVENT_BEAT_MORTY
	; setevent EVENT_BEAT_RUSTY
	; setevent EVENT_BEAT_JASMINE
	; setevent EVENT_BEAT_PRYCE
	; setevent EVENT_BEAT_CLAIR
	; setevent EVENT_BEAT_BROCK
	; setevent EVENT_BEAT_MISTY
	; setevent EVENT_BEAT_LTSURGE
	; setevent EVENT_BEAT_ERIKA
	; setevent EVENT_BEAT_JANINE
	; setevent EVENT_BEAT_SABRINA
	; setevent EVENT_BEAT_BLAINE
	; setevent EVENT_BEAT_BLUE
	; setevent EVENT_BEAT_ELITE_FOUR
	; setevent EVENT_BEAT_ELITE_FOUR_AGAIN
	; setevent EVENT_BATTLE_TOWER_OPEN
	; clearevent EVENT_BATTLE_TOWER_CLOSED
	; setevent EVENT_ENABLE_DIPLOMA_PRINTING
;	clearevent EVENT_AZALEA_TOWN_SLOWPOKES ; enables random overcast weather
	; fly anywhere
	setflag ENGINE_FLYPOINT_HOLLOWPORT
	setflag ENGINE_FLYPOINT_OLSTEETON
	setflag ENGINE_FLYPOINT_BRINESBURG
;	setevent EVENT_RESTORED_POWER_TO_KANTO ; magnet train works
	; post-e4
	setflag ENGINE_CREDITS_SKIP
	; pokebliterater
	givepoke AUGUROTH, PLAIN_FORM, 100, BRIGHTPOWDER
for x, NUM_STATS
	loadmem wPartyMon1EVs+x, 252
endr
for x, 3
	loadmem wPartyMon1DVs+x, $ff
endr
	loadmem wPartyMon1Personality, ABILITY_2 | NAT_SATK_UP_ATK_DOWN
for x, NUM_BATTLE_STATS
	loadmem wPartyMon1Stats + x * 2 + 0, HIGH(999)
	loadmem wPartyMon1Stats + x * 2 + 1, LOW(999)
endr
	; hm slave
	givepoke MEW, PLAIN_FORM, 100, LEFTOVERS
	loadmem wPartyMon2Moves+0, FLY
	loadmem wPartyMon2Moves+1, HEADBUTT
	loadmem wPartyMon2Moves+2, DIG
	loadmem wPartyMon2Moves+3, FRESH_SNACK
	loadmem wPartyMon2PP+0, 15
	loadmem wPartyMon2PP+1, 15
	loadmem wPartyMon2PP+2, 10
	loadmem wPartyMon2PP+3, 10
	loadmem wPartyMon2PokerusStatus, 1
	; folkoran mon test
	givepoke CUPICO, PLAIN_FORM, 7, ORAN_BERRY
	givepoke FLIKLIT, PLAIN_FORM, 7, ORAN_BERRY
	givepoke GLUTTLE, PLAIN_FORM, 7, ORAN_BERRY
	givepoke NOCTOWL, PLAIN_FORM, 50, ORAN_BERRY
	; variant form test
	; givepoke TYPHLOSION, HISUIAN_FORM, 50
	; loadmem wPartyMon3Shiny, SHINY_MASK
	; loadmem wPartyMon3PokerusStatus, POKERUS_CURED
	; ; ext species test
	; givepoke URSALUNA, URSALUNA_BLOODMOON_FORM, 50
	; givepoke DUDUNSPARCE, DUDUNSPARCE_THREE_SEGMENT_FORM, 50
	; ; evolve during battle
	; givepoke PUPITAR, 54
	; loadmem wPartyMon6Exp+0, 207967 >> 16
	; loadmem wPartyMon6Exp+1, HIGH(207967)
	; loadmem wPartyMon6Exp+2, LOW(207967)
	; ; max modern evs
	; loadmem wPartyMon6HPEV, MODERN_MAX_EV
	; loadmem wPartyMon6AtkEV, MODERN_MAX_EV
	; loadmem wPartyMon6SpeEV, MODERN_EV_LIMIT - MODERN_MAX_EV * 2
	; ; hyper training
	; loadmem wPartyMon6HyperTraining, %01000000
	; fill pokedex
	callasm FillPokedex
;	; hollowport events
	addcellnum PHONE_MOM
	setmapscene PLAYERS_HOUSE_1F, SCENE_PLAYERSHOUSE1F_NOOP
	setmapscene HOLLOWPORT, SCENE_HOLLOWPORT_NOOP
	setevent EVENT_PLAYERS_HOUSE_MOM_1
	clearevent EVENT_PLAYERS_HOUSE_MOM_2
	addcellnum PHONE_ELM
	setevent EVENT_GOT_FLIKLIT_FROM_PAWPAW
;	setevent EVENT_FLIKLIT_POKEBALL_IN_ELMS_LAB
;	setevent EVENT_CUPICO_POKEBALL_IN_ELMS_LAB
;	setevent EVENT_GOT_A_POKEMON_FROM_PAWPAW
	; clearevent EVENT_GOT_POKEDEX_FROM_POPLAR
	setmapscene OLSTEETON_UNI_CLASSROOM_BIO, SCENE_OLSTEETONUNICLASSROOMBIO_NOOP
	setmapscene OLSTEETON_UNI_OFFICE_POPLAR, SCENE_UNI_OFFICE_POPLAR_NOOP
	setmapscene FIELD_LAB, SCENE_FIELDLAB_MAGIGOON_BATTLE
	setevent EVENT_APTROOF_FOUND_PSYDUCK
	setmapscene RIVERFRONT_APT_ROOF, SCENE_RIVERFRONTAPTROOF_FOUND_PSYDUCK
	setevent EVENT_POPLAR_OFFICE_FIR
	setevent EVENT_GOT_POKEDEX_FROM_POPLAR
	setevent EVENT_GOT_DOSSIER_FROM_POPLAR
	setevent EVENT_FOUGHT_FIELD_LAB_MAGIGOON
	setevent EVENT_BEAT_RUSTY_CHECK
	setevent EVENT_BOAT_PERMISSION
	closetext
	warpfacing DOWN, OLSTEETON, 17, 20
	; warpfacing DOWN, OLSTEETON_UNI, 10, 20
	; warpfacing DOWN, BRINESBURG, 53, 12
	end

FillPokedex:
	ld hl, wPokedexSeen
	call .Fill
	ld hl, wPokedexCaught
.Fill:
	ld a, %11111111
	ld bc, NUM_UNIQUE_POKEMON / 8
	rst ByteFill
if NUM_UNIQUE_POKEMON % 8
	ld [hl], 2**(NUM_UNIQUE_POKEMON % 8) - 1
endc
	ret

else

	checkevent EVENT_GOT_A_POKEMON_FROM_PAWPAW
	iftruefwd .NormalRadio
	checkevent EVENT_LISTENED_TO_INITIAL_RADIO
	iftruefwd .AbbreviatedRadio
	playmusic MUSIC_POKEMON_TALK
	opentext
	writetext PlayerRadioText1
	pause 45
	writetext PlayerRadioText2
	pause 45
	writetext PlayerRadioText3
	pause 45
	musicfadeout MUSIC_NEW_BARK_TOWN, 16
	writetext PlayerRadioText4
	pause 45
	closetext
	setevent EVENT_LISTENED_TO_INITIAL_RADIO
	end

.NormalRadio:
	jumpstd radio1

.AbbreviatedRadio:
	opentext
	writetext PlayerRadioText4
	pause 45
	endtext

endc

PlayerHouse2FTVScript:
	jumpthistext

	text "There's a show on"
	line "TV: An armor clad"

	para "knight rides a"
	line "Pyroboros into"
	cont "battle..."

	para "I'd better go"
	line "before I get"
	cont "sucked in!"
	done

PokemonJournalProfPawpawScript:
	setflag ENGINE_READ_PROF_ELM_JOURNAL
	jumpthistext

	text "#mon Journal"

	para "Special Feature:"
	line "Prof.Cecil Pawpaw!"

	para "Prof.Pawpaw was"
	line "the first to"
	cont "study #mon"
	cont "biomes."

	para "Often in the field"
	line "instead of the lab,"

	para "When asked, Pawpaw"
	line "stated 'Quality'"

	para "'research begins'"
 	line "'with boots on'"

	para "'the ground and'"
	line "'hands in the mud!'"
	done

PlayersHousePC:
	opentext
	special Special_PlayersHousePC
	iffalse_endtext
.Warp:
	warp NONE, 0, 0
	end

PlayerRadioText1:
	text "Prof.Poplar's"
	line "#mon Talk!"
	cont "Tune in next time!"
	done

PlayerRadioText2:
	text "#mon Channel!"
	done

PlayerRadioText3:
	text "I'm DJ Dunsparce,"
	line "your main mon"
	cont "for the next hour!"
	done

PlayerRadioText4:
	text "#mon!"
	line "#mon Channel…"
	done
