tests
testReciprocalDoesNotOverflow
	"Note: intermediate overflow might cause the answer to be zero in careless implementation"
	
	| c scale cScaled cScaledInv expected |
	c := (1 + 1i).
	scale := Float fmax.
	cScaled := c * scale.
	cScaledInv := cScaled reciprocal.
	expected := c reciprocal real / scale + (c reciprocal imaginary / scale) i.
	self assert: (expected real- cScaledInv real) abs / expected real ulp < 3.
	self assert: (expected imaginary - cScaledInv imaginary) abs / expected imaginary ulp < 3.