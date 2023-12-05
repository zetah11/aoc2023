accessing
translate: aNumber
	ranges do: [:each |
		(each sourceContains: aNumber) ifTrue: [^ each translate: aNumber]].
	^ aNumber