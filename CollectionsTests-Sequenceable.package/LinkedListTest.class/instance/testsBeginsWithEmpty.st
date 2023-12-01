tests - begins ends with
testsBeginsWithEmpty
	
	self assert: (self nonEmpty beginsWith:(self empty)).
	self deny: (self empty beginsWith:(self nonEmpty )).
