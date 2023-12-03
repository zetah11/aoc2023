asserting
assertSqrtCorrectlyRoundedForExponent: exp
	"Requires exp > Float precision, so that f ulp/2 is integer"
	{1.5. 1.25 squared. 2.0 predecessor} do: [:sf |
		| f xe xp xm |
		
		f := sf timesTwoPower: exp.
	
		"make two integers around the pivot"
		xe := f asInteger + (f ulp asInteger / 2).
		xm := xe squared - 1.
		xp := xe squared + 1.
		self assert: xe squared sqrt equals: xe.
		self assert: xe squared sqrt isInteger.
	
		"check rounding when result is near f squared"
		self assert: xm sqrt equals: f.
		self assert: xm sqrt isFloat.
		self assert: xp sqrt equals: f successor.
		self assert: xp sqrt isFloat.
	
		"same in the other direction"
		xe := f asInteger - (f ulp asInteger / 2).
		xm := xe squared - 1.
		xp := xe squared + 1.
		self assert: xe squared sqrt equals: xe.
		self assert: xe squared sqrt isInteger.
	
		"check rounding when result is near f squared"
		self assert: xm sqrt equals: f predecessor.
		self assert: xm sqrt isFloat.
		self assert: xp sqrt equals: f.
		self assert: xp sqrt isFloat].