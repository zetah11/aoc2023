tests - keys and value
testKeys

	"self run:#testKeys "
	
	| a1 a2  dict | 
	a1 := Association key: 'France' value: 'Paris'.
	a2 := Association key: 'Italie' value: 'Rome'.
	dict := Dictionary new.
	dict add: a1.
	dict add: a2.
	 		
	self assert: (dict keys size) = 2.
	
	self assert: (dict keys includes: #France)
	
	


	
	