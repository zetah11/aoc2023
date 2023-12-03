tests
testSecureDivisionDoesNotOverflow
	
	| c1 c2 scale |
	"Note: this test used to fail with legacy version of divideSecureBy:"
	c1 := (2 + 1i).
	c2 := (1 + 1i).
	scale := Float fmax.
	self testSecureDivisionOf: c1 by: c2 scaledBy: scale.
	"And this one fails with incomplete correction of above method"
	c1 := (1/2 + 1i) / (5 << 48).
	c2 := (1 + 1i).
	scale := Float fminDenormalized.
	self testSecureDivisionOf: c1 by: c2 scaledBy: scale