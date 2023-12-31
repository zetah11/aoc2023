accessing
nextPutAll: aCollection

	| newEnd |
	(collection class == aCollection class
		or: [ collection class isBits
			and: [ aCollection isString
			and: [ collection class format = aCollection class format ] ] ]) "Let Strings with the same field size as collection take the quick route too."
		ifFalse: [ ^ super nextPutAll: aCollection ].

	newEnd := position + aCollection size.
	newEnd > writeLimit ifTrue:
		[self growTo: newEnd].

	collection replaceFrom: position+1 to: newEnd  with: aCollection startingAt: 1.
	position := newEnd.
	^aCollection