adding
add: anAssociation combining: aBlock
	"Add the given association to this dictionary. If the key already has a value,
	combine the two values with aBlock."

	| index |
	index := self scanFor: anAssociation key.
	(array at: index)
		ifNil: [ self atNewIndex: index put: anAssociation ]
		ifNotNil: [ :element |	element value: (aBlock cull: element value cull: anAssociation value) ].
	^anAssociation