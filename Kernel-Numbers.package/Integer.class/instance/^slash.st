arithmetic
/ aNumber
	"Refer to the comment in Number / "
	aNumber isInteger ifTrue:
		[aNumber isZero
			ifTrue: [^(ZeroDivide dividend: self) signal].
		^ (Fraction numerator: self denominator: aNumber) reduced].
	^ aNumber adaptToInteger: self andSend: #/