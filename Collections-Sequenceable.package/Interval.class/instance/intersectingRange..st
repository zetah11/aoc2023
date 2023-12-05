math functions
intersectingRange: anInterval
	"Answer the interval containing all values within both of these. The resulting
	interval always has a positive increment."
	| this other a b s t c d coefficients N M finalStep finalStart distance finalStop |
	this := self positive.
	other := anInterval positive.

	"If two intervals (a*N + s) and (b*M + t) overlap, then there exists some
	non-negative integers N, M where (a*N + s) = (b*M + t). This can be
	rearranged to the linear Diophantine equation (a*N) - (b*M) = t - s."
	a := this increment.
	b := other increment.
	s := this start.
	t := other start.
	
	"Let c = t - s and d = a gcd: b."
	c := t - s.
	d := a gcd: b.
	
	"A solution to the equation (a*N) - (b*M) = c exists if c is a multiple of d."
	(c isDivisibleBy: d) ifFalse: [^ {}].

	"Bézout's identity gives integers n1 and m1 such that (a*n1) + (b*m1) = d.
	An initial solution to the Diophantine equation is then N = n1 * c / d and
	M = -m1 * c / d."
	coefficients := a bezoutCoefficients: b.
	N := coefficients first * c / d.
	M := coefficients second negated * c / d.

	"Now we have some integers N and M which satisfy (a * N + s) = (b * M + t).
	The step of the resulting range is the least common multiple of a and b."
	finalStep := a lcm: b.

	"The start of the new range finalStart >= s max: t, since if it is any less, then
	it would be outside their intersection. Starting with an initial start (a * N + s),
	we find its distance to (s max: t), divide that by the step size, rounding up,
	and add that to the initial value."
	finalStart := (a * N) + s.
	distance := (s max: t) - finalStart.
	finalStart := finalStart + (finalStep * (distance / finalStep) ceiling).

	"The stop of the new range finalStop <= this last min: other last."
	finalStop := this last min: other last.
	^ finalStart to: finalStop by: finalStep