tests - converting
testConcatenation

	self assert: #( (1 2) (3 4) ) concatenation = #(1 2 3 4).
	self assert: #( (1 2) ( (3 4) ) ) concatenation = #(1 2 (3 4)).
	self should: [#(1 2 3 4) concatenation] raise: Error.

	self assert: #() concatenation = #().
	self assert: #( (1 2) () (3) ()) concatenation = #(1 2 3).