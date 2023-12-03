truncation and round off
roundTo: aNumber 
	"Overwritten to speed-up integer rounding via modulo instead of using intermediate fractions."

	| rem quantum |
	aNumber isInteger ifFalse: [^ super roundTo: aNumber].
	quantum := aNumber abs.
	(rem := self \\ quantum) = 0 ifTrue: [^ self].
	^ (self > 0
		ifTrue: [quantum + 1 // 2 <= rem]
		ifFalse: [quantum // 2 < rem])
			ifTrue: [self + quantum - rem]
			ifFalse: [self - rem]
		