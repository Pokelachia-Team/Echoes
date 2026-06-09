MACRO scene_var
; db group, map
; dw address
	map_id \1
	dw \2
ENDM

MapScenes::
	scene_var BATTLE_TOWER_1F,                   wBattleFacilitySceneID
	scene_var BATTLE_TOWER_BATTLE_ROOM,          wAlways0SceneID
	scene_var BATTLE_TOWER_ELEVATOR,             wAlways0SceneID
	scene_var BATTLE_TOWER_HALLWAY,              wAlways0SceneID
	scene_var BATTLE_TOWER_OUTSIDE,              wBattleTowerOutsideSceneID
	scene_var COLOSSEUM,                         wColosseumSceneID
	scene_var HALL_OF_FAME,                      wHallOfFameSceneID
	scene_var HOLLOWPORT,                        wHollowportSceneID
	scene_var PLAYERS_HOUSE_1F,                  wPlayersHouse1FSceneID
	scene_var POKECENTER_2F,                     wPokecenter2FSceneID
	scene_var FIELD_LAB,                         wFieldLabSceneID
	scene_var ROUTE_101,                         wRoute101SceneID
	scene_var RIVERFRONT_APT_ROOF,               wRiverfrontAptRoofSceneID
	scene_var OLSTEETON_UNI_CLASSROOM_BIO,       wOlsteetonUniClassroomBioSceneID
	scene_var OLSTEETON_UNI_OFFICE_POPLAR,       wOlsteetonUniOfficePoplarSceneID
	db -1
