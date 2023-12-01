tests - converting
testFlatten2

	self
		assert: {3 .4 .2 .4 .'hi' .'ho'}
		equals: {3 .4 .{2 .4 .{'hi'} .'ho'} readStream } flatten
		description: '#flatten should deeply inline all collection-like elements and work with streams'.