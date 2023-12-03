combinator
tokenized
	"Parse using the receiver, skipping whitespace characters preceeding it"
	| whitespace |
	whitespace := (Parsing characterMatching: [:c | c isSeparator]) manyTimes.
	^ self tokenizedSkipping: whitespace