tests
testExactLog2
	-10 to: 10 do: [:i | self assert: i equals: (2 raisedToInteger: i) log2].
	Float emin - Float precision + 1 to: Float emax do: [:i | self assert: i equals: (1.0 timesTwoPower: i) log2].