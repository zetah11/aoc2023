tests
testWithAll
	
	| dict1 dict2 |
	dict1 := Dictionary withAll: {#a -> 1. #b -> 2}.
	self assert: (dict1 at: #a) = 1.
	self assert: (dict1 at: #b) = 2.

	dict2 := Dictionary withAll: dict1.
	self assert: (dict2 at: #a) = 1.
	self assert: (dict2 at: #b) = 2.
