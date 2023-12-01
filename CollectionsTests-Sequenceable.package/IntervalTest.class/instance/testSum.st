tests
testSum
	1 to: 10 do: [:i |
		| int |
		int := -3 to: i-1*5-3 by: 5.
		self assert: int asArray sum = int sum.
		self assert: int reversed sum = int sum]