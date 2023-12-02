combinator
/ aParser
	"Parse the receiver or aParser, trying the receiver first"
	^ AlternativeParsing with: { self. aParser }