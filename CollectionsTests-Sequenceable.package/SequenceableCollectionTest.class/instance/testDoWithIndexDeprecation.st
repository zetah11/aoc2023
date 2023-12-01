tests - deprecation
testDoWithIndexDeprecation

	| selector senders |
	selector := #doWithIndex:.
	senders := self systemNavigation allCallsOn: selector.
	self 
		assert: senders size = 1
		description: (String streamContents: [ :stream |
			| thisSelector |
			stream
				nextPutAll: 'Unexpected senders of ';
				print: selector;
				nextPutAll: ': '.
			thisSelector := thisContext method selector.
			(senders reject: [ :each |
				(each actualClass == self class
					and: [ each selector == thisSelector ]) ])
				do: [ :each | 
					stream 
						nextPutAll: each actualClass name;
						nextPutAll: ' >> ';
						print: each selector ]
				separatedBy: [ stream nextPutAll: ', ' ] ])