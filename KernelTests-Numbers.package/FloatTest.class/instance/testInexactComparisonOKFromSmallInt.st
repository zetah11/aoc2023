tests - compare
testInexactComparisonOKFromSmallInt
	"asFloat conversion is monotonic:
	intA < intB ==> (intA asFloat <= intB asFloat).
	Thus those tests would work if using naive (integer asFloat op: float) comparison,
	even if asFloat conversion is inexact."
	
	{greaterFloat . greaterBoxedFloat} do: [:f |
		self deny: smallerInexactInt = f.
		self assert: smallerInexactInt ~= f.
	
		self assert: smallerInexactInt < f.
		self assert: smallerInexactInt <= f.
		self deny: smallerInexactInt > f.
		self deny: smallerInexactInt >= f].