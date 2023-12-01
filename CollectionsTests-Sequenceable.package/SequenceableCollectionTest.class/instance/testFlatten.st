tests - converting
testFlatten

	self
		assert: {3 .4 .2 .4 .'hi' .'ho'}
		equals: {3 .4 .{2 .4 .{'hi'} .'ho'}} flatten
		description: '#flatten should deeply inline all collection-like elements'.
	self
		assert: #( (1 2) (3 4) ) concatenation
		equals: #( (1 2) (3 4) ) flatten
		description: '#flatten of one-level collection-nesting should be the same as its concatenation'.
