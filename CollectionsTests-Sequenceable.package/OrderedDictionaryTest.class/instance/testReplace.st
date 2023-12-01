tests
testReplace
	| dict expected k |
	dict := OrderedDictionary newFromPairs:{
		#first.		13.
		#second.	12.
		#third.		11.
		#fourth.	15.
		#fifth.		14.
	}.
	k := 0.
	dict replace: [:each | k := k + 1].
	expected := OrderedDictionary newFromPairs:{
		#first.		1.
		#second.	2.
		#third.		3.
		#fourth.	4.
		#fifth.		5.
	}.
	self assert: dict = expected.