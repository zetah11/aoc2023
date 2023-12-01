tests - begins ends with
testsEndsWithEmpty
	
	self assert: (self nonEmpty endsWith: self empty).
	self deny: (self empty endsWith: self nonEmpty).
	