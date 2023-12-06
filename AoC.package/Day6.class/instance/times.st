accessing
times
	| parser |
	parser := ((Parsing token: 'Time:'), Parsing number tokenized manyTimes)
		collecting: [:tokens | tokens second].
	^ parser parse: (lines first)