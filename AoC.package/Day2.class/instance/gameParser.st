parsing
gameParser
	| game red green blue colon comma semicolon number color colorCount colorSet sets gameId |
	"Tokens"
	game := Parsing token: 'Game'.
	red := Parsing token: 'red'.
	green := Parsing token: 'green'.
	blue := Parsing token: 'blue'.
	colon := Parsing token: ':'.
	comma := Parsing token: ','.
	semicolon := Parsing token: ';'.
	number := Parsing number tokenized.

	"Productions"
	color := red / green / blue.
	colorCount := (number, color) collecting: [:lexemes | lexemes last -> lexemes first].
	colorSet := (colorCount interspersedWith: comma) collecting: [:counts | Dictionary newFrom: counts].
	sets := colorSet interspersedWith: semicolon.
	gameId := (game, number, colon) collecting: [:lexemes | lexemes at: 2].
	
	^ (gameId, sets) collecting: [:results |	Day2Game withId: results first andDraws: results last]