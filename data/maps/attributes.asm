MACRO map_attributes
; label, map, border block, connections
	DEF CURRENT_MAP_WIDTH = \2_WIDTH
	DEF CURRENT_MAP_HEIGHT = \2_HEIGHT
\1_MapAttributes::
	db \3, \2_HEIGHT, \2_WIDTH
	dba \1_BlockData, \1_MapScriptHeader
	db \4
ENDM

	map_attributes Hollowport, HOLLOWPORT, $5, 0
	
	; map_attributes Hollowport, HOLLOWPORT, $5, NORTH
	; connection north, Route101, ROUTE_101, 2

	; map_attributes Route101, ROUTE_101, $5, SOUTH
	; connection south, Hollowport, HOLLOWPORT, -2

	map_attributes FieldLab, FIELD_LAB, $0, 0
	map_attributes FieldLab2F, FIELD_LAB_2F, $0, 0
	map_attributes EchoingCave, ECHOING_CAVE, $0, 0
	map_attributes PlayersHouse1F, PLAYERS_HOUSE_1F, $0, 0
	map_attributes PlayersHouse2F, PLAYERS_HOUSE_2F, $0, 0
	map_attributes HollowportRival1F, HOLLOWPORT_RIVAL_1F, $0, 0
	map_attributes HollowportRival2F, HOLLOWPORT_RIVAL_2F, $0, 0
	map_attributes HollowportNeighbor, HOLLOWPORT_NEIGHBOR, $0, 0
	; map_attributes Route101House, ROUTE_101_HOUSE, $0, 0
	; map_attributes Route101Cave, ROUTE_101_CAVE, $0, 0
	; map_attributes Route102, ROUTE_102, $5, 0
	; map_attributes Route101102Gate, ROUTE_101_102_GATE, $0, 0
	; map_attributes Route102OlsteetonGate, ROUTE_102_OLSTEETON_GATE, $0, 0
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
