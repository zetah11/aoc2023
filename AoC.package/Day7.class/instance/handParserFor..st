accessing
handParserFor: aClass
	| card hand bid |
	card := Parsing characterCreating: [:c | aClass with: c].
	hand := card manyTimes.
	bid := Parsing number tokenized.
	^ (hand, bid) collecting: [:tokens | Day7Hand withCards: tokens first bid: tokens second]