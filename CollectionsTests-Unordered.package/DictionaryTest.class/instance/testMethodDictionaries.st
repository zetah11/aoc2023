tests - integrity
testMethodDictionaries
	MethodDictionary allInstancesDo: [ :dictionary |
		dictionary keysAndValuesDo: [ :key :value |
			self assert: (dictionary at: key) == value ].
		1 to: dictionary basicSize do: [ :index |
			(dictionary basicAt: index)
				ifNil: [ self assert: (dictionary array at: index) isNil ]
				ifNotNil: [ :key |
					self assert: (dictionary scanFor: key) = index ] ] ]