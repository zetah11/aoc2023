tests - compare
testComparisonSmallWithBoxed
	"Comparison should work the same, boxed or not"
	
	self assert: float = boxedFloat.
	self deny: float ~= boxedFloat.
	self deny: float = smallerBoxedFloat.
	self assert: float ~= greaterBoxedFloat.
	
	self assert: float < greaterBoxedFloat.
	self assert: float <= greaterBoxedFloat.
	self deny: float > greaterBoxedFloat.
	self deny: float >= greaterBoxedFloat.
	
	self deny: float < smallerBoxedFloat.
	self deny: float <= smallerBoxedFloat.
	self assert: float > smallerBoxedFloat.
	self assert: float >= smallerBoxedFloat.