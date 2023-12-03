tests
testSecureDivisionOf: c1 by: c2 scaledBy: scale
	"Note: this test used to fail with legacy version of divideSecureBy:"
	
	| quo expected |
	quo := c1 / c2.
	expected := quo real / scale + (quo imaginary / scale) i.
	"check in precondition that the scaled division c1/(c2*scale) would not oevrflow"
	self assert: expected real isFinite.
	self assert: expected imaginary isFinite.
	"now retry with scaling"
	quo := c1 divideSecureBy: (c2 * scale).
	self assert: quo real isFinite.
	self assert: quo imaginary isFinite.
	self assert: (expected real - quo real) abs / (expected real ulp) < 3.
	self assert: (expected imaginary - quo imaginary) abs / (expected imaginary ulp) < 3.