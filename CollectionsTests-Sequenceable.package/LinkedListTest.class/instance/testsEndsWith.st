tests - begins ends with
testsEndsWith
	
	self assert: (self nonEmpty endsWith: self nonEmpty allButFirst).
	self assert: (self nonEmpty endsWith: self nonEmpty).
	self deny: (self nonEmpty endsWith: (self nonEmpty copyWith: self nonEmpty first)).