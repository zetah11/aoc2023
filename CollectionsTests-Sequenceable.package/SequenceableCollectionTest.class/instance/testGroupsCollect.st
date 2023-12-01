tests - copying
testGroupsCollect

	| array |
	array := (1 to: 12) asArray.
	self shouldRaiseError: [array groupsCollect: []].
	self assert: array * 2 equals:
		(array groupsCollect: [:each | each * 2]).
	self assert: #((1 2) (3 4) (5 6) (7 8) (9 10) (11 12)) equals:
		(array groupsCollect: [:a :b | { a. b }]).
	self assert: #((1 2 3) (4 5 6) (7 8 9) (10 11 12)) equals:
		(array groupsCollect: [:a :b :c | { a. b. c }]).
	self assert: #() equals:
		(#(1 2 3) groupsCollect: [:a :b :c :d | { a. b. c. d } ]).