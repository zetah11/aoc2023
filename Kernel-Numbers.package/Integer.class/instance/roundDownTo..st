truncation and round off
roundDownTo: aNumber 
	"Overwritten to speed-up integer rounding via modulo instead of using intermediate fractions."

	aNumber isInteger ifFalse: [^ super roundDownTo: aNumber].
	^ self - (self \\ aNumber)