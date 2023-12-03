tests
testSqrt
	-3 to: 3 do: [:re | -2 to: 2 do: [:im |
			| c s t |
			c := re asFloat + im asFloat i.
			s := c sqrt.
			t := s squared.
			self assert: (t real - c real) abs / 4 < c abs asFloat ulp.
			self assert: (t imaginary - c imaginary) abs / 4 < c abs asFloat ulp.
			self assert: s imaginary signBit = c imaginary signBit]]