testing
isBinary
	"Answer if the receiver is a binary stream"
	^collection isCollection and: [collection isUnsignedIntegerArray]