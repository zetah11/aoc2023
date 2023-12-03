accessing
upTo: anObject 
	"Answer a subcollection from the current access position to the 
	occurrence (if any, but not inclusive) of anObject in the receiver. If 
	anObject is not in the collection, answer the entire rest of the receiver."

	^self collectionSpecies streamContents: [ :stream |
		| element |
		[self atEnd or: [(element := self next) = anObject]]
			whileFalse: [stream nextPut: element]]