tests
testSum
	| floatInterval |
	floatInterval := 0.1 to: 1.0 by: 0.1.
	self deny: floatInterval sum = floatInterval asArray sum description: 'do not expect strict Float equality after arithmetic operations'.
	self assert: floatInterval sum is: floatInterval asArray sum withinUlp: floatInterval size / 2