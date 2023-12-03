tests - arithmetic
testDivideMayOverflow
	"Dividing a SmallInteger by another Integer may answer a Large Integer.
	These cases have caused several VM bugs in the past, it's better to keep some assrtion around."
	
	self assert: (SmallInteger minVal / -1) isLarge.
	self assert: (SmallInteger minVal / -1) = (SmallInteger maxVal + 1).
	
	self assert: (SmallInteger minVal quo: -1) isLarge.
	self assert: (SmallInteger minVal quo: -1) = (SmallInteger maxVal + 1).
	
	self assert: (SmallInteger minVal // -1) isLarge.
	self assert: (SmallInteger minVal // -1) = (SmallInteger maxVal + 1).