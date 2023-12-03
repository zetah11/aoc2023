parsing-public
nextUnsignedInteger
	"Read an Integer from sourceStream, asnwser that Integer.
	This is a generic version dealing with a simple sequence of decimal digits.
	Subclass might define extended syntax."

	base := self defaultBase.
	^self nextUnsignedIntegerBase: base ifFail: [^self expected: ('a digit between 0 and ' copyWith: (Character digitValue: base - 1))]