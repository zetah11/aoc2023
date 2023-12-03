utilities
testClassConstantsPasses
	"Answer if testClassConstants passes. This can be used in e.g. the Kernel Package prolog
	 to test if Float initialize needs to be run."
	[self new testClassConstants]
		on: TestResult failure
		do: [:ex| ^false].
	^true