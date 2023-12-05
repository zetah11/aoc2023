private
growTo: anInteger

	| newCapacity capacityDifference |
	super growTo: anInteger.
	newCapacity := self capacity.
	capacityDifference := newCapacity - order size.
	capacityDifference = 0 ifTrue: [ ^self ].
	order := capacityDifference > 0
		ifTrue: [ order grownBy: capacityDifference ]
		ifFalse: [ order first: newCapacity ]