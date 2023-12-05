accessing
translate: aNumber
	(self sourceContains: aNumber) ifFalse: [Error signal: 'aNumber must be in the source range'].
	^ (aNumber - sourceStart) + destinationStart