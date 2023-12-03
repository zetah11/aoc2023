tests - compare
testComparisonSmallFromBoxed
	"Comparison should work the same, boxed or not"
	
	self assert: boxedFloat = float.
	self deny: boxedFloat ~= float.
	self deny: boxedFloat = smallerFloat.
	self assert: boxedFloat ~= greaterFloat.
	
	self assert: boxedFloat < greaterFloat.
	self assert: boxedFloat <= greaterFloat.
	self deny: boxedFloat > greaterFloat.
	self deny: boxedFloat >= greaterFloat.
	
	self deny: boxedFloat < smallerFloat.
	self deny: boxedFloat <= smallerFloat.
	self assert: boxedFloat > smallerFloat.
	self assert: boxedFloat >= smallerFloat.