tests - compare
testInexactComparisonFromSmallInt
	"Those tests would fail if using naive (integer asFloat = float) comparison.
	This is because the conversion asFloat are inexact and loose bits."
	
	{float. boxedFloat} do: [:f |
		self deny: smallerInexactInt = f.
		self assert: greaterInexactInt ~= f.
	
		self assert: greaterInexactInt > f.
		self deny: greaterInexactInt <= f.
		self assert: smallerInexactInt < f.
		self deny: smallerInexactInt >= f].