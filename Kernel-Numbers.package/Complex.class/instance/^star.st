arithmetic
* anObject
	"Answer the result of multiplying the receiver by aNumber."
	| a b c d x y newReal newImaginary |
	anObject isComplex
		ifTrue:
			[a := self real.
			b := self imaginary.
			c := anObject real.
			d := anObject imaginary.
			newReal := (a * c) - (b * d).
			newImaginary := (a * d) + (b * c).
			((newReal isFinite not or: [newImaginary isFinite not]) and: [self isZero not and: [anObject isZero not]])
				ifTrue:
					["intermediate computations do overflow, but the product may be finite, retry with scaling"
					x := a abs max: b abs.
					y := c abs max: d abs.
					a := a / x.
					b := b / x.
					c := c / y.
					d := d / y.
					newReal := (a * c) - (b * d) * x * y.
					newImaginary := (a * d) + (b * c) * x * y].
			^ Complex real: newReal imaginary: newImaginary]
		ifFalse:
			[^ anObject adaptToComplex: self andSend: #*]