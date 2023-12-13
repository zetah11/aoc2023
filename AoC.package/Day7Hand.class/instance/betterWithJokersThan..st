comparing
betterWithJokersThan: aHand
	| thisType otherType |
	thisType := self jokerType.
	otherType := aHand jokerType.
	(thisType < otherType) ifTrue: [^ true].
	(otherType < thisType) ifTrue: [^ false].
	self cards with: aHand cards collect: [:mine :theirs |
		(mine < theirs) ifTrue: [^ true].
		(theirs < mine) ifTrue: [^ false]].
	^ true