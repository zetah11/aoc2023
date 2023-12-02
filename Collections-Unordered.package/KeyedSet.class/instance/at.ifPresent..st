accessing
at: key ifPresent: aBlock
	"Lookup the given key in the receiver. If it is present, answer the value of evaluating the given block with the value associated with the key. Otherwise, answer nil."

	^(array at: (self scanFor: key)) ifNotNil: [:obj| aBlock value: obj enclosedSetElement]