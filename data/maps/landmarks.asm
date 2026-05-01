MACRO landmark
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
	table_width 4
	landmark  -8, -16, SpecialMapName
	landmark 140, 100, HollowportName
	landmark  44,  76, Route101Name
	landmark  52,  68, Route102Name
	landmark  60,  68, OlsteetonName
	landmark  60,  76, NationalForest1Name
	landmark  68,  68, OlsteetonUniName
	landmark  70,  75, BrinesburgName
	landmark  28,  52, BattleTowerName	
	assert_table_length KANTO_LANDMARK
	assert_table_length NUM_LANDMARKS

HollowportName:       rawchar "Hollowport@"
Route101Name:          rawchar "Route 101@"
Route102Name:          rawchar "Route 102@"
OlsteetonName: 		   rawchar "Olsteeton@"
NationalForest1Name:   rawchar "Jolly Sods@"
OlsteetonUniName: 	   rawchar "Bouffalant¯Academy@"
BrinesburgName: 	   rawchar "Brinesburg@"
BattleTowerName:       rawchar "Battle¯Tower@"
SpecialMapName:        rawchar "?@"
