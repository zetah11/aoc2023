tests - keys and value
testRemoveKey
		"self run:#testRemoveKey "

	| dict | 
	dict := Dictionary new.
	dict at: #a put: 1.
	dict at: #b put: 2.
	 
	self assert: (dict keys size) = 2.
	dict removeKey: #a.
	self assert: dict keys size  = 1.

	self should: [dict at: #a] raise: Error.
	self assert: (dict at: #b) = 2


	
	