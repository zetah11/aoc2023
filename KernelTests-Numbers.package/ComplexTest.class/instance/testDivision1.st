tests
testDivision1
	"self run: #testDivision1"
	"self debug: #testDivision1"
	
	| c1 c2 quotient |
	c1 := 2.0e252 + 3.0e70 i.
	c2 := c1.
	quotient := c1 / c2.
	
	"This used to fail when / was not protected against floating point overflow in intermediate computations
	but it should now work correctly if divideSecureBy: is correctly used as fallback case"
 	self assert: (quotient - 1) isZero
	
