tests - compare
testInexactComparisonWithSmallInt
	"Those tests would fail if using naive (integer asFloat = float) comparison.
	This is because the conversion asFloat are inexact and loose bits."
	
	{float. boxedFloat} do: [:f |
		self deny: f = greaterInexactInt.
		self assert: f ~= smallerInexactInt.
	
		self assert: f < greaterInexactInt.
		self deny: f >= greaterInexactInt.
		self assert: f > smallerInexactInt.
		self deny: f <= smallerInexactInt].