mathematical functions
sqrt
	"Return the square root of the receiver with a positive real part.
	This is the same as (Complex abs: self abs sqrt arg: self arg / 2).
	Implementation notes:
	the formulation used ensure a protection against floating point overflow/underflow.
	it also result in a reasonable precision (around 3 ulp).
	It is inspired by following reference, except that it uses pre-scaling rather than eception handling:
	Implementing Complex Elementary Function Using Exception Handling
	ACM Transactions on Mathematical Software - October 1994
	Ping Tang and 3 other authors"

	| x y r s t scale |
	real isZero
		ifTrue:
			[t := imaginary abs sqrt / 2 sqrt.
			^self class real: t imaginary: (imaginary copySignTo: t)].
	scale := real abs max: imaginary abs.
	x := real / scale.
	y := imaginary / scale.
	r := (x squared + y squared) sqrt.
	s := scale sqrt.
	t := (r + x abs * 2) sqrt.
	^real > 0
		ifTrue: [self class real: t * s / 2 imaginary: y * s / t]
		ifFalse: [self class real: y abs * s / t imaginary: (y copySignTo: t * s / 2)]