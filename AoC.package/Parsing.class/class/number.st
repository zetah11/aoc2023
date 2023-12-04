instance creation
number
	"Answer a parser which accepts a non-empty sequence of digits"
	^ (Parsing characterMatching: [:c | c isDigit]) onceOrMore
		collecting: [:digits | (digits as: String) asNumber]	