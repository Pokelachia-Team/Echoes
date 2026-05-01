MACRO map_attributes
; label, map, border block, connections
	DEF CURRENT_MAP_WIDTH = \2_WIDTH
	DEF CURRENT_MAP_HEIGHT = \2_HEIGHT
\1_MapAttributes::
	db \3, \2_HEIGHT, \2_WIDTH
	dba \1_BlockData, \1_MapScriptHeader
	db \4
ENDM

	map_attributes Hollowport, HOLLOWPORT, $5, NORTH
	connection north, Route101, ROUTE_101, 2

	map_attributes Route101, ROUTE_101, $5, SOUTH
	connection south, Hollowport, HOLLOWPORT, -2

	map_attributes FieldLab, FIELD_LAB, $0, 0
	map_attributes FieldLab2F, FIELD_LAB_2F, $0, 0
	map_attributes EchoingCave, ECHOING_CAVE, $0, 0
	map_attributes PlayersHouse1F, PLAYERS_HOUSE_1F, $0, 0
	map_attributes PlayersHouse2F, PLAYERS_HOUSE_2F, $0, 0
	map_attributes HollowportRival1F, HOLLOWPORT_RIVAL_1F, $0, 0
	map_attributes HollowportRival2F, HOLLOWPORT_RIVAL_2F, $0, 0
	map_attributes HollowportNeighbor, HOLLOWPORT_NEIGHBOR, $0, 0
	map_attributes Route101House, ROUTE_101_HOUSE, $0, 0
	map_attributes Route101Cave, ROUTE_101_CAVE, $0, 0
	map_attributes Route102, ROUTE_102, $5, 0
	map_attributes Route101102Gate, ROUTE_101_102_GATE, $0, 0
	map_attributes Route102OlsteetonGate, ROUTE_102_OLSTEETON_GATE, $0, 0
    map_attributes Olsteeton, OLSTEETON, $5, 0
	map_attributes OlsteetonGym1F, OLSTEETON_GYM_1F, $0, 0
	map_attributes OlsteetonGym2F, OLSTEETON_GYM_2F, $0, 0
	map_attributes OlsteetonGym3F, OLSTEETON_GYM_3F, $0, 0
	map_attributes OlsteetonPokeCenter, OLSTEETON_POKE_CENTER, $0, 0
	map_attributes OlsteetonMall1, OLSTEETON_MALL_1, $0, 0
	map_attributes OlsteetonMall2, OLSTEETON_MALL_2, $0, 0
	map_attributes OlsteetonMall3, OLSTEETON_MALL_3, $0, 0
	map_attributes OlsteetonMart, OLSTEETON_MART, $0, 0	
	map_attributes RiverfrontApt1F, RIVERFRONT_APT_1F, $0, 0
	map_attributes RiverfrontApt2F, RIVERFRONT_APT_2F, $0, 0
	map_attributes RiverfrontApt2FRoom1, RIVERFRONT_APT_2F_ROOM_1, $0, 0
	map_attributes RiverfrontApt2FRoom2, RIVERFRONT_APT_2F_ROOM_2, $0, 0
	map_attributes RiverfrontApt2FRoom3, RIVERFRONT_APT_2F_ROOM_3, $0, 0
	map_attributes RiverfrontApt3F, RIVERFRONT_APT_3F, $0, 0
	map_attributes RiverfrontApt3FRoom1, RIVERFRONT_APT_3F_ROOM_1, $0, 0
	map_attributes RiverfrontApt3FRoom2, RIVERFRONT_APT_3F_ROOM_2, $0, 0
	map_attributes RiverfrontApt4F, RIVERFRONT_APT_4F, $0, 0
	map_attributes RiverfrontApt4FRoom1, RIVERFRONT_APT_4F_ROOM_1, $0, 0
	map_attributes RiverfrontApt4FRoom3, RIVERFRONT_APT_4F_ROOM_3, $0, 0
	map_attributes RiverfrontApt5F, RIVERFRONT_APT_5F, $0, 0
	map_attributes RiverfrontAptRoof, RIVERFRONT_APT_ROOF, $68, 0
	map_attributes RiverfrontAptElevator, RIVERFRONT_APT_ELEVATOR, $0, 0
	map_attributes OlsteetonDiner, OLSTEETON_DINER, $0, 0	
	map_attributes OlsteetonArcade, OLSTEETON_ARCADE, $0, 0
	map_attributes OlsteetonTrainStation, OLSTEETON_TRAIN_STATION, $0, 0
	map_attributes OlsteetonNameRater, OLSTEETON_NAME_RATER, $0, 0
	map_attributes OlsteetonFisherHouse, OLSTEETON_FISHER_HOUSE, $0, 0
	map_attributes OlsteetonQuickHouse, OLSTEETON_QUICK_HOUSE, $0, 0
	map_attributes OlsteetonGymHouse, OLSTEETON_GYM_HOUSE, $0, 0
	map_attributes OlsteetonForestGate, OLSTEETON_FOREST_GATE, $0, 0
	map_attributes NationalForest1, NATIONAL_FOREST_1, $53, 0
	map_attributes OlsteetonUniGate, OLSTEETON_UNI_GATE, $0, 0
	map_attributes OlsteetonRoute103Gate, OLSTEETON_ROUTE_103_GATE, $0, 0
	map_attributes OlsteetonAbandonedMill, OLSTEETON_ABANDONED_MILL, $0, 0
	map_attributes OlsteetonAbandonedMillOutside, OLSTEETON_ABANDONED_MILL_OUTSIDE, $0F, 0
	; map_attributes OlsteetonUni, OLSTEETON_UNI, $35, 0
	; map_attributes OlsteetonUniLibrary1F, OLSTEETON_UNI_LIBRARY_1F, $0, 0
	; map_attributes OlsteetonUniLibrary2F, OLSTEETON_UNI_LIBRARY_2F, $0, 0
	; map_attributes OlsteetonUniScienceCenter, OLSTEETON_UNI_SCIENCE_CENTER, $0, 0
	; map_attributes OlsteetonUniNurseDept, OLSTEETON_UNI_NURSE_DEPT, $0, 0
	; map_attributes OlsteetonUniWaterLab, OLSTEETON_UNI_WATER_LAB, $0, 0
	; map_attributes OlsteetonUniOffice, OLSTEETON_UNI_OFFICE, $0, 0
	; map_attributes OlsteetonUniDeansOffice, OLSTEETON_UNI_DEANS_OFFICE, $0, 0
	; map_attributes OlsteetonUniOfficeSpruce, OLSTEETON_UNI_OFFICE_SPRUCE, $0, 0
	; map_attributes OlsteetonUniOfficePoplar, OLSTEETON_UNI_OFFICE_POPLAR, $0, 0
	; map_attributes OlsteetonUniOfficePawpaw, OLSTEETON_UNI_OFFICE_PAWPAW, $0, 0
	; map_attributes OlsteetonUniOfficeLounge, OLSTEETON_UNI_OFFICE_LOUNGE, $0, 0
	; map_attributes OlsteetonUniOfficeTA, OLSTEETON_UNI_OFFICE_TA, $0, 0
	; map_attributes OlsteetonUniClockTower1F, OLSTEETON_UNI_CLOCK_TOWER_1F, $0, 0
	; map_attributes OlsteetonUniClockTower2F, OLSTEETON_UNI_CLOCK_TOWER_2F, $0, 0
	; map_attributes OlsteetonUniClockTower3F, OLSTEETON_UNI_CLOCK_TOWER_3F, $0, 0
	; map_attributes OlsteetonUniClassroomBldg, OLSTEETON_UNI_CLASSROOM_BLDG, $0, 0
	; map_attributes OlsteetonUniClassroomBiology, OLSTEETON_UNI_CLASSROOM_BIOLOGY, $0, 0
	; map_attributes OlsteetonUniClassroomArt, OLSTEETON_UNI_CLASSROOM_ART, $0, 0
	; map_attributes OlsteetonUniClassroomBusiness, OLSTEETON_UNI_CLASSROOM_BUSINESS, $0, 0
	; map_attributes OlsteetonUniClassroomStrategy, OLSTEETON_UNI_CLASSROOM_STRATEGY, $0, 0
	; map_attributes OlsteetonUniClassroomHistory, OLSTEETON_UNI_CLASSROOM_HISTORY, $0, 0
	; map_attributes OlsteetonUniClassroomTheory, OLSTEETON_UNI_CLASSROOM_THEORY, $0, 0
	; map_attributes OlsteetonUniDormWest1F, OLSTEETON_UNI_DORM_WEST_1F, $0, 0
	; map_attributes OlsteetonUniDormWest2F, OLSTEETON_UNI_DORM_WEST_2F, $0, 0
	; map_attributes OlsteetonUniDormWest2FRoom2, OLSTEETON_UNI_DORM_WEST_2F_ROOM_2, $0, 0
	; map_attributes OlsteetonUniDormWest2FRoom3, OLSTEETON_UNI_DORM_WEST_2F_ROOM_3, $0, 0
	; map_attributes OlsteetonUniDormWest3F, OLSTEETON_UNI_DORM_WEST_3F, $0, 0
	; map_attributes OlsteetonUniDormWest3FRoom1, OLSTEETON_UNI_DORM_WEST_3F_ROOM_1, $0, 0
	; map_attributes OlsteetonUniDormWest3FRoom3, OLSTEETON_UNI_DORM_WEST_3F_ROOM_3, $0, 0
	; map_attributes OlsteetonUniDormWestElevator, OLSTEETON_UNI_DORM_WEST_ELEVATOR, $0, 0
	; map_attributes OlsteetonUniDiningHall, OLSTEETON_UNI_DINING_HALL, $0, 0
	; map_attributes OlsteetonUniDormEast1F, OLSTEETON_UNI_DORM_EAST_1F, $0, 0
	; map_attributes OlsteetonUniDormEast2F, OLSTEETON_UNI_DORM_EAST_2F, $0, 0
	; map_attributes OlsteetonUniDormEast2FRoom1, OLSTEETON_UNI_DORM_EAST_2F_ROOM_1, $0, 0
	; map_attributes OlsteetonUniDormEast2FRoom3, OLSTEETON_UNI_DORM_EAST_2F_ROOM_3, $0, 0
	; map_attributes OlsteetonUniDormEast3F, OLSTEETON_UNI_DORM_EAST_3F, $0, 0
	; map_attributes OlsteetonUniDormEast3FRoom2, OLSTEETON_UNI_DORM_EAST_3F_ROOM_2, $0, 0
	; map_attributes OlsteetonUniDormEast3FRoom3, OLSTEETON_UNI_DORM_EAST_3F_ROOM_3, $0, 0
	; map_attributes OlsteetonUniDormEastElevator, OLSTEETON_UNI_DORM_EAST_ELEVATOR, $0, 0
	; map_attributes OlsteetonUniGymDept, OLSTEETON_UNI_GYM_DEPT, $0, 0
	

	;necessary maps
	map_attributes HallOfFame, HALL_OF_FAME, $0, 0
	map_attributes PokeCenter2F, POKECENTER_2F, $0, 0
	map_attributes TradeCenter, TRADE_CENTER, $0, 0
	map_attributes Colosseum, COLOSSEUM, $0, 0
	map_attributes HiddenTreeGrotto, HIDDEN_TREE_GROTTO, $0, 0
	map_attributes HiddenCaveGrotto, HIDDEN_CAVE_GROTTO, $1, 0
	map_attributes BattleTower1F, BATTLE_TOWER_1F, $0, 0
	map_attributes BattleTower2F, BATTLE_TOWER_2F, $0, 0
	map_attributes BattleTowerBattleRoom, BATTLE_TOWER_BATTLE_ROOM, $0, 0
	map_attributes BattleTowerElevator, BATTLE_TOWER_ELEVATOR, $0, 0
	map_attributes BattleTowerHallway, BATTLE_TOWER_HALLWAY, $0, 0
	map_attributes BattleTowerOutside, BATTLE_TOWER_OUTSIDE, $5, 0
