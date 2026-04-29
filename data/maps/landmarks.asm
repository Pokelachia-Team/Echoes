MACRO landmark
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
	table_width 4
	landmark  -8, -16, SpecialMapName
	landmark 140, 100, NewBarkTownName
	landmark  28,  52, BattleTowerName	
	assert_table_length KANTO_LANDMARK
	assert_table_length NUM_LANDMARKS

NewBarkTownName:       rawchar "New Bark¯Town@"	
BattleTowerName:       rawchar "Battle¯Tower@"
SpecialMapName:        rawchar "?@"
