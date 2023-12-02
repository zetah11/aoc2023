accessing
power
	^ self max values inject: 1 into: [:a :b | a * b]