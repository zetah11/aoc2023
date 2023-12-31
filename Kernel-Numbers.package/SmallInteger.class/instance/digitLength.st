system primitives
digitLength
	"Answer the number of indexable fields in the receiver. This value is the 
	 same as the largest legal subscript. Included so that a SmallInteger can 
	 behave like a LargePositiveInteger or LargeNegativeInteger."

	| value length |
	length := 1.
	(value := self) < -255
		ifTrue:
			[length := 2.
			value := (-256 - self bitShift: -8) + 1 "carefully negate SmallInteger minVal"].
	[value > 255] whileTrue:
		[value := value bitShift: -8.
		 length := length + 1].
	^length