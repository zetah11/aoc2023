accessing
time
	| parser digits |
	digits := (Parsing characterMatching: [:c | c isDigit]) tokenized manyTimes
		collecting: [:cs | (cs as: String) asNumber].
	parser := ((Parsing token: 'Time:'), digits) collecting: [:tokens | tokens second].
	^ parser parse: (lines first)