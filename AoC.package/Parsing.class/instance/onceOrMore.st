combinator
onceOrMore
	"Parse using the receiver one or more times"
	^ (self, self manyTimes) collecting: [:lexemes |
		lexemes second copyWithFirst: (lexemes first)]