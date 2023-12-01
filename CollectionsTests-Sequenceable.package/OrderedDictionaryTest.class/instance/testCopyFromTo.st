tests - copying
testCopyFromTo

	| copy |
	1 to: 10 do: [:index |
		sut at: index put: nil].

	copy := sut copyFrom: 3 to: 5.
	self assert: (3 to: 5) asArray equals: copy keys.
	copy at: 3 put: #foo.
	self assert: (sut at: 3) isNil.
	
	copy at: 11 put: #ba.
	self assert: #ba equals: (copy at: 11).