combinator
, aParser
	"Parse aParser after the receiver"
	^ SequenceParsing with: { self. aParser }