tests
testIncludesBound
	"This interval is crafted for including 1.2
	but a careless definition of size might exclude this bound"
	self assert: (((0.3 to: 1.2 by: 0.1) includes: 1.2) ==> [(0.3 to: 1.2 by: 0.1) anySatisfy: [:each | each = 1.2]]).