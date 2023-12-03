tests - mathematical functions
testCompositions
	(0 to: 10) do: [:n |
		(1 to: n) do: [:k |
			n compositions: k do: [:each |
				self assert: n equals: (each sum).
				self assert: k equals: (each size)]]]