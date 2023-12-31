accessing
at: key ifPresent: oneArgBlock ifAbsent: absentBlock
	"Lookup the given key in the receiver. If it is present, answer the
	 value of evaluating the oneArgBlock with the value associated
	 with the key, otherwise answer the value of absentBlock."

	^(array at: (self scanFor: key))
		ifNil: [ absentBlock value ]
		ifNotNil: [ :value | oneArgBlock value: value enclosedSetElement ]