instance creation
token: aString
	"Parse aString literally, skipping any preceding whitespace"
	^ (self literally: aString) tokenized