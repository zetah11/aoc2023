mathematical functions
bezoutCoefficients: aNumber
	"Answer an array of the coefficients { s. t } such that
	(self * s) + (aNumber * t) = self gcd: aNumber"
	| r1 r2 s1 s2 t1 t2 q |
	r1 := self. r2 := aNumber.
	s1 := 1. s2 := 0.
	t1 := 0. t2 := 1.
	[r2 = 0] whileFalse: [
		q := r1 // r2.
		r2 := r1 - (q * (r1 := r2)).
		s2 := s1 - (q * (s1 := s2)).
		t2 := t1 - (q * (t1 := t2))].
	^ { s1. t1 }