tests - conversion
testLargeNegativeIntegerAsFloat
	"assert IEEE 754 round to nearest even mode is honoured"
	
	self assert: SmallInteger minVal asFloat negative.
	self assert: SmallInteger minVal isAnExactFloat description: 'this test requires this condition. If not met, change the test'.
	self assert: SmallInteger minVal equals: SmallInteger minVal asFloat. "this test requires integrity of negative SmallInteger asFloat"
	self assert: SmallInteger minVal asFloat - 1.0 equals: (SmallInteger minVal - 1) asFloat "same for LargeNegativeInteger"
	