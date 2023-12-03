testing
testAlternativeStream
	| parser expected actual |
	parser := (Parsing literally: 'hello') / (Parsing literally: 'world') / (Parsing literally: '!').
	expected := { 'hello'. 'world'. '!' }.
	actual := parser readStream upToEnd asArray.
	self assert: expected equals: actual.