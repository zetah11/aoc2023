testing
isCompact
	"Answer true if I have the smallest possible capacity to store the elements."
	
	^array size = (self class sizeFor: self slowSize)