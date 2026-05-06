MACRO fishmon_map
	map_id \1
	db \2 ; fish group
ENDM

FishMonMaps:
	fishmon_map HOLLOWPORT, FISHGROUP_RIVER
	fishmon_map ROUTE_102, FISHGROUP_RIVER
	fishmon_map ROUTE_101, FISHGROUP_RIVER
	fishmon_map OLSTEETON, FISHGROUP_RIVER
	fishmon_map OLSTEETON_UNI, FISHGROUP_RIVER
	fishmon_map NATIONAL_FOREST_1, FISHGROUP_POND
	db -1
