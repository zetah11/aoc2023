tests - arithmetic
testBezoutCoefficients
	| c sum |
	(0 to: 100) do: [:x |
		(0 to: 100) do: [:y |
			c := x bezoutCoefficients: y.
			sum := (x * c first) + (y * c second).
			self assert: (x gcd: y) equals: sum]].