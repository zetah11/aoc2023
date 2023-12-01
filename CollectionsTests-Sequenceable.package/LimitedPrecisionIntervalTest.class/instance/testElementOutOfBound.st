tests
testElementOutOfBound
	"Note: this is a test for correct implementation of size.
	With super definition of size, an element past the bound could be included"
	
	self deny: ((1/5 to: 1.2 by: 1) anySatisfy: [:e | e > 1.2]).