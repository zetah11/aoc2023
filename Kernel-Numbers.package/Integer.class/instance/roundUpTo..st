truncation and round off
roundUpTo: aNumber 
	"Overwritten to speed-up integer rounding via modulo instead of using intermediate fractions."

	| rem |
	aNumber isInteger ifFalse: [^ super roundUpTo: aNumber].
	^ (rem := self \\ aNumber) ~= 0
		ifTrue: [self + aNumber - rem]
		ifFalse: [self]