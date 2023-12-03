tests - compare
testExactComparisonFromSmallInt
	"Those tests works when using naive (integer asFloat = float) comparison.
	This is because the conversion asFloat are exact."
	
	{float. boxedFloat} do: [:f |
		self assert: exactInteger = f.
		self deny: exactInteger ~= f.
		self assert: exactInteger <= f.
		self deny: exactInteger < f.
		self assert: exactInteger >= f.
		self deny: exactInteger > f].
	
	{greaterFloat. greaterBoxedFloat} do: [:f |
		self deny: exactInteger = f.
		self assert: exactInteger ~= f.
		self assert: exactInteger <= f.
		self assert: exactInteger < f.
		self deny: exactInteger >= f.
		self deny: exactInteger > f].
		
	{smallerFloat. smallerBoxedFloat} do: [:f |
		self deny: exactInteger = f.
		self assert: exactInteger ~= f.
		self deny: exactInteger <= f.
		self deny: exactInteger < f.
		self assert: exactInteger >= f.
		self assert: exactInteger > f].