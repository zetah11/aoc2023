tests - implementation
testPseudoVariablesAreValidKeys
	"(self run: #testPseudoVariablesAreValidKeys)"
	"true and false are valid keys"
	
	| dict1  |
	dict1 := Dictionary new.
	dict1 at: true put: #true.
	self assert: (dict1 at: true) = #true.
		
	dict1 at: false put: #false.
	self assert: (dict1 at: false) = #false.