combinator
tokenizedSkipping: aParser
	"Parse using the receiver, skipping whatever aParser matches first"
	^ (SequenceParsing with: { aParser. self }) collecting: [:lexemes | lexemes last]