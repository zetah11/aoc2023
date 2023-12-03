arithmetic
/ anObject
	"Answer the result of dividing receiver by aNumber"
	| a b c d newReal newImaginary denom |
	anObject isComplex ifTrue:
		[a := self real.
		b := self imaginary.
		c := anObject real.
		d := anObject imaginary.
		denom := c squared + d squared.
		[newReal := ((a * c) + (b * d)) / denom.
		newImaginary := ((b * c) - (a * d)) / denom]
			on: ZeroDivide do:
				[:exc |
				"This might be a case of underflow - resume with a value that will result in a secured retry"
				exc resume: Float infinity].
		(denom isFinite and: [newReal isFinite and: [newImaginary isFinite]])
			ifFalse:
				["case of overflow, retry securedly"
				^self divideSecureBy: anObject].
		^ Complex real: newReal imaginary: newImaginary].
	^ anObject adaptToComplex: self andSend: #/.