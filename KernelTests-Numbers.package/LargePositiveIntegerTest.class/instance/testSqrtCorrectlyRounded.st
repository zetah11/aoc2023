tests - mathematical functions
testSqrtCorrectlyRounded
	self assertSqrtCorrectlyRoundedForExponent: Float precision * 2 - 1.
	self assertSqrtCorrectlyRoundedForExponent: Float precision * 2 + 1.
	self assertSqrtCorrectlyRoundedForExponent: Float precision * 2 + 3.
	self assertSqrtCorrectlyRoundedForExponent: Float precision * 3 // 2.
	self assertSqrtCorrectlyRoundedForExponent: Float emax* 2 // 3. "such that asFloat would overflow"
	self assertSqrtCorrectlyRoundedForExponent: Float emax.