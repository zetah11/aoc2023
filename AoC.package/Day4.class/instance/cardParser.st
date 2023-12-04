initialize-release
cardParser
	| card colon bar number cardId numbers |
	"Tokens"
	card := Parsing token: 'Card'.
	colon := Parsing token: ':'.
	bar := Parsing token: '|'.
	number := Parsing number tokenized.

	cardId := (card, number, colon) collecting: [:lexemes | lexemes at: 2].
	numbers := number onceOrMore.

	^ (cardId, numbers, bar, numbers) collecting: [:lexemes |
		Day4Card with: lexemes first winning: lexemes second numbers: lexemes fourth]