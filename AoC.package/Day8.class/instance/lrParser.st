accessing
lrParser
	| l r |
	l := (Parsing token: 'L') collecting: [#left].
	r := (Parsing token: 'R') collecting: [#right].
	^ (l / r) manyTimes