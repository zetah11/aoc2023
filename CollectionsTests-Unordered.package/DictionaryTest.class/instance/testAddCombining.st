tests
testAddCombining
	| dict |
	dict := Dictionary new.
	dict add: #a -> 1.
	dict add: #b -> 2.
	dict add: #a -> 3 combining: [:x :y | x + y].
	self assert: (dict at: #a) equals: 4.
	self assert: (dict at: #b) equals: 2.