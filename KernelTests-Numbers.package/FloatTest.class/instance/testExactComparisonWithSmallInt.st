tests - compare
testExactComparisonWithSmallInt
	"Those tests works when using naive (integer asFloat = float) comparison.
	This is because the conversion asFloat are exact."
	
	{float. boxedFloat} do: [:f |
		self assert: f = exactInteger.
		self deny: f ~= exactInteger.
		self assert: f <= exactInteger.
		self deny: f < exactInteger.
		self assert: f >= exactInteger.
		self deny: f > exactInteger].
	
	{greaterFloat. greaterBoxedFloat} do: [:f |
		self deny: f = exactInteger.
		self assert: f ~= exactInteger.
		self deny: f <= exactInteger.
		self deny: f < exactInteger.
		self assert: f >= exactInteger.
		self assert: f > exactInteger].
		
	{smallerFloat. smallerBoxedFloat} do: [:f |
		self deny: f = exactInteger.
		self assert: f ~= exactInteger.
		self assert: f <= exactInteger.
		self assert: f < exactInteger.
		self deny: f >= exactInteger.
		self deny: f > exactInteger].