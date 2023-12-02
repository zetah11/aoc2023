tests - integrity
testIntegrityOfDictionaries
	#(
		Dictionary
		IdentityDictionary
		SystemDictionary
		LiteralDictionary
		OrderedDictionary
		PluggableDictionary
		WeakValueDictionary) do: [ :dictionaryClassName |
			Smalltalk at: dictionaryClassName ifPresent: [ :dictionaryClass |
				dictionaryClass allInstancesDo: [ :dictionary |
					dictionary keysAndValuesDo: [ :key :value |
						self assert: (dictionary at: key) == value ].
					dictionary array withIndexDo: [ :association :index |
		                        association ifNotNil: [
	 	                               self assert: (dictionary scanFor: association key) = index ] ] ] ] ]