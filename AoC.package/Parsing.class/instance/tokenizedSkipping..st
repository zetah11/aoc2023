combinator
tokenizedSkipping: aParser
	"Parse using the receiver, skipping whatever aParser matches first"
	^ TokenParsing with: self skipping: aParser