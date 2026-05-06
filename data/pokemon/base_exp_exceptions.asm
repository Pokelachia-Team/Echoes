MACRO base_exception
; mon, actual yield
	dp \1, \2
	dw \3
ENDM

NewBaseExpExceptions:
	base_exception FLUTTRFAWN, PLAIN_FORM, 395 ; BST x 87.7% as of gen V (unchanged in VIII)
	base_exception ETHEREDEER, PLAIN_FORM, 635 ; BST x 117.5% as of gen VIII
	base_exception NOFAWTS, PLAIN_FORM, 110 ; BST x 50.0% as of gen V (unchanged in VIII)
	dw -1
