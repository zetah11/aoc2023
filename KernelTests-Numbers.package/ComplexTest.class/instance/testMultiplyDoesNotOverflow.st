tests
testMultiplyDoesNotOverflow
	
	| c1 c2 product smallProduct scale |
	c1 := (1 + 1 i) sqrt * Float fmax sqrt.
	product := c1 squared.
	self assert: product real isFinite.
	self assert: product imaginary isFinite.
	self assert: (product real - Float fmax) / Float fmax ulp < 3.
	self assert: (product imaginary - Float fmax) / Float fmax ulp < 3.

	"a more tricky case"
	c1 := 1.0 + 0.25 i.
	c2 := 1.125+ 0.5 i.
	smallProduct := c1 * c2.
	"check that we will not overflow in precondition"
	self assert: smallProduct real abs <= 1.
	self assert: smallProduct imaginary abs <= 1.
	"now retry with a large scale"
	scale := Float fmax.
	product := c1 * scale * c2.
	self assert: product real isFinite.
	self assert: product imaginary isFinite.
	self assert: (scale * smallProduct real - product real) / (scale * smallProduct real) ulp < 3.
	self assert: (scale * smallProduct imaginary - product imaginary) / (scale * smallProduct imaginary) ulp < 3.