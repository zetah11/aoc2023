accessing
distances
	| parser |
	parser := ((Parsing token: 'Distance:'), Parsing number tokenized manyTimes)
		collecting: [:tokens | tokens second].
	^ parser parse: (lines second)