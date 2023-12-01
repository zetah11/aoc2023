tests - copying
testGroupsDo

	| array |
	array := (1 to: 12) asArray.
	self should: [ array groupsDo: [ ] ] raise: Error.
	self assert: array equals: (Array streamContents: [ :stream |
		array groupsDo: [ :each | stream nextPut: each ] ]).
	self assert: #((1 2) (3 4) (5 6) (7 8) (9 10) (11 12)) equals: (Array streamContents: [ :stream |
		array groupsDo: [ :a :b | 
			stream nextPut: { a. b } ] ]).
	self assert: #((1 2 3) (4 5 6) (7 8 9) (10 11 12)) equals: (Array streamContents: [ :stream |
		array groupsDo: [ :a :b :c | 
			stream nextPut: { a. b. c } ] ]).
	self assert: #((1 2 3 4) (5 6 7 8) (9 10 11 12)) equals: (Array streamContents: [ :stream |
		array groupsDo: [ :a :b :c :d | 
			stream nextPut: { a. b. c. d } ] ]).
	self assert: #((1 2 3 4 5) (6 7 8 9 10)) equals: (Array streamContents: [ :stream |
		array groupsDo: [ :a :b :c :d :e | 
			stream nextPut: { a. b. c. d. e } ] ]).
	self assert: #((1 2 3 4 5 6) (7 8 9 10 11 12)) equals: (Array streamContents: [ :stream |
		array groupsDo: [ :a :b :c :d :e :f | 
			stream nextPut: { a. b. c. d. e. f } ] ]).
	self assert: #((1 2 3 4 5 6 7)) equals: (Array streamContents: [ :stream |
		array groupsDo: [ :a :b :c :d :e :f :g | 
			stream nextPut: { a. b. c. d. e. f. g } ] ]).
	self assert: #() equals: (Array streamContents: [ :stream |
		#(1 2 3) groupsDo: [ :a :b :c :d | stream nextPut: { a. b. c. d } ] ])

