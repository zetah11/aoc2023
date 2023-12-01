tests - iterating
testRejectThenCollectEmpty

	self assert: ((self empty reject: [:e | self fail ]) collect: [ :each| self fail ]) isEmpty