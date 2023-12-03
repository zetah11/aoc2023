tests - compare
testInexactComparisonOKWithSmallInt
	"asFloat conversion is monotonic:
	intA < intB ==> (intA asFloat <= intB asFloat).
	Thus those tests would work if using naive (integer asFloat op: float) comparison,
	even if asFloat conversion is inexact."
	
	{smallerFloat . smallerBoxedFloat} do: [:f |
		self deny: f = greaterInexactInt.
		self assert: f ~= greaterInexactInt.
	
		self assert: f < greaterInexactInt.
		self assert: f <= greaterInexactInt.
		self deny: f > greaterInexactInt.
		self deny: f >= greaterInexactInt].