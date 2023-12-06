accessing
distance
	| parser digits |
	digits := (Parsing characterMatching: [:c | c isDigit]) tokenized manyTimes
		collecting: [:cs | (cs as: String) asNumber].
	parser := ((Parsing token: 'Distance:'), digits) collecting: [:tokens | tokens second].
	^ parser parse: (lines second)