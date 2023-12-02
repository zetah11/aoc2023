parsing
gameParser
	| game red green blue colon comma semicolon number color colorCount colorSet sets gameId |
	"Tokens"
	game := (Parsing literally: 'Game') tokenized.
	red := (Parsing literally: 'red') tokenized.
	green := (Parsing literally: 'green') tokenized.
	blue := (Parsing literally: 'blue') tokenized.
	colon := (Parsing literally: ':') tokenized.
	comma := (Parsing literally: ',') tokenized.
	semicolon := (Parsing literally: ';') tokenized.
	number := (Parsing characterMatching: [:c | c isDigit]) manyTimes tokenized
		collecting: [:digits | (digits as: String) asNumber].

	"Productions"
	color := red / green / blue.
	colorCount := (number, color) collecting: [:lexemes | lexemes last -> lexemes first].
	colorSet := (colorCount interspersedWith: comma) collecting: [:counts | Dictionary newFrom: counts].
	sets := colorSet interspersedWith: semicolon.
	gameId := (game, number, colon) collecting: [:lexemes | lexemes at: 2].
	
	^ (gameId, sets) collecting: [:results |	Day2Game withId: results first andDraws: results last]