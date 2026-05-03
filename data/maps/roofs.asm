MapGroupRoofs:
; entries correspond to map groups
; values are indexes for LoadMapGroupRoof.Roofs
	table_width 1
	db -1             ; 0
	db ROOF_OLIVINE   ; 1 (Battle Tower Outside)
	db -1             ; 2
	db ROOF_NEW_BARK  ; 3 (Hollowport)
	db ROOF_VIOLET    ; 4 Olsteeton
	db ROOF_VIOLET    ; 5 Uni
	db ROOF_OLIVINE   ; 6 Brinesburg
	assert_table_length NUM_MAP_GROUPS + 1
