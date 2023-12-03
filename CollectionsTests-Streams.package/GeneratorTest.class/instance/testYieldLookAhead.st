tests
testYieldLookAhead
	"Check the look-ahead in our current implementation. See http://forum.world.st/Generators-td4941886.html."
	
	| x gen result |
	x := 0.

	gen := Generator on: [:g |
		x := 1.
		g yield: nil.

		x := 2.
		g yield: nil.

		x := 3.
		g yield: nil].

	result := OrderedCollection new.
	gen do: [:i | result add: x].
	
	self deny: (result hasEqualElements: #(1 2 3)).
	self assert: (result hasEqualElements: #(2 3 3)).