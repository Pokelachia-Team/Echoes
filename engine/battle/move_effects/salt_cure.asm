BattleCommand_saltcure:
	; 1/16 max HP for all types other than steel/water types
	; ld a, BATTLE_VARS_MOVE_TYPE
	; call GetBattleVar
	; cp WATER
	; jr z, .steelwater
	; cp STEEL
	; jr z, .steelwater

	call CheckHiddenOpponent
	jr nz, .failed
	call CheckSubstituteOpp
	jr nz, .failed

	ld a, BATTLE_VARS_SUBSTATUS1_OPP
	call GetBattleVarAddr
	bit SUBSTATUS_SALT_CURE, [hl]
	jr nz, .failed

	set SUBSTATUS_SALT_CURE, [hl]
	ld a, 1
	ld [wBattleAnimParam], a
	call AnimateCurrentMove
	ld hl, SaltCureText 
	jmp StdBattleTextbox

.failed
	call AnimateFailedMove
	jmp PrintButItFailed


; .steelwater
; 	; 1/8 max HP for steel/water types
; 	call CheckHiddenOpponent
; 	jr nz, .failed
; 	call CheckSubstituteOpp
; 	jr nz, .failed

; 	ld a, BATTLE_VARS_SUBSTATUS1_OPP
; 	call GetBattleVarAddr
; 	bit SUBSTATUS_SALT_CURE, [hl]
; 	jr nz, .failed

; 	set SUBSTATUS_SALT_CURE, [hl]
; 	ld a, 1
; 	ld [wBattleAnimParam], a
; 	call AnimateCurrentMove
; 	ld hl, SaltCureText 
; 	jmp StdBattleTextbox

; .failed
; 	call AnimateFailedMove
; 	jmp PrintButItFailed
