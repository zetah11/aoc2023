testing
testReplace
	| dict expected |
	{Dictionary. IdentityDictionary} do: [:class |
		dict := class newFromPairs:{
			#first.		1.
			#second.	2.
			#third.		3.
			#fourth.	4.
			#fifth.		5.
		}.
		dict replace: [:each | each asWords].
		expected := class newFromPairs:{
			#first.		'one'.
			#second.	'two'.
			#third.		'three'.
			#fourth.	'four'.
			#fifth.		'five'.
		}.
		self assert: dict = expected].