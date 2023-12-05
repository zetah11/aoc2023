accessing
seedsParser
	| seeds numbers |
	"Tokens"
	seeds := Parsing token: 'seeds:'.
	numbers := Parsing number tokenized manyTimes.
	^ (seeds, numbers) collecting: [:lexemes | lexemes second]