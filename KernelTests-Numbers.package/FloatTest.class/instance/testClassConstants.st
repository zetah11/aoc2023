tests - characterization
testClassConstants

	"Test all the class constants that are floats to check that they are valid.
	 Sometimes compiler bugs mean that the initialization method is incorrect, etc"
	| expectedVariables unexpectedVariables "these two are for determining if this test is correct, not its results"
	  finiteVariables infiniteVariables nanVariables |
	finiteVariables := #(Pi Halfpi Twopi ThreePi RadiansPerDegree Ln2 Ln10 Sqrt2 E Epsilon MaxVal MaxValLn NegativeZero).
	infiniteVariables := #(Infinity NegativeInfinity).
	nanVariables := #(NaN).
	expectedVariables := Set new.
	unexpectedVariables := Set new.
	Float classPool keysAndValuesDo:
		[:name :value|
		value isFloat
			ifTrue:
				[(finiteVariables includes: name) ifTrue:
					[expectedVariables add: name.
					 self assert: value isFinite.
					 self deny: value isInfinite.
					 self deny: value isNaN].
				(infiniteVariables includes: name) ifTrue:
					[expectedVariables add: name.
					 self deny: value isFinite.
					 self assert: value isInfinite.
					 self deny: value isNaN].
				(nanVariables includes: name) ifTrue:
					[expectedVariables add: name.
					 self deny: value isFinite.
					 self deny: value isInfinite.
					 self assert: value isNaN].
				(expectedVariables includes: name) ifFalse:
					[unexpectedVariables add: name]]
			ifFalse:
				[self deny: ((finiteVariables includes: name) or: [(infiniteVariables includes: name) or: [nanVariables includes: name]])]].
	"Now check that test itself is working as intended..."
	self assert: unexpectedVariables isEmpty.
	self assert: expectedVariables = (finiteVariables, infiniteVariables, nanVariables) asSet