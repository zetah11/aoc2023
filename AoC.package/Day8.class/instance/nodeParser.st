accessing
nodeParser
	| equal lparen rparen comma name parser |
	"Tokens"
	equal := Parsing token: '='.
	lparen := Parsing token: '('.
	rparen := Parsing token: ')'.
	comma := Parsing token: ','.
	name := (Parsing characterMatching: [:c | c isAlphaNumeric]) manyTimes tokenized
		collecting: [:characters | characters as: String].

	parser := name, equal, lparen, name, comma, name, rparen.
	^ parser collecting: [:lexemes |
		Day8Node withName: lexemes first left: lexemes fourth right: lexemes sixth]