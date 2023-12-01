tests - converting
testFlattened

	| randomCollection |
	self
		assert: {3 .4 .2 .4 .'hi' .'ho'}
		equals: {3 .4 .{2 .4 .{'hi'} .'ho'}} flattened
		description: '#flattened should deeply inline all collection-like elements'.
	self
		assert: #( (1 2) (3 4) ) concatenation
		equals: #( (1 2) (3 4) ) flattened
		description: '#flattened of one-level collection-nesting should be the same as its concatenation'.
	
	" ensure that #flatten and #flattened are compatible "
	randomCollection := OrderedCollection new: 10.
	10 timesRepeat: [randomCollection add: 50 atRandom].
	
	self
		assert: randomCollection flatten
		equals: randomCollection flattened
		description: '#flatten and #flattened should be exchangeable'
	