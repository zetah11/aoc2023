tests - iterating
testRejectAllThenCollect
	| result |
	
	result := (self collectionWithoutNilElements 
		reject: [ :each | each notNil ] )
		collect: [ :each| self fail ].
	
	self assert: result isEmpty