comparing
<= aHand
	(self type < aHand type) ifTrue: [^ true].
	(aHand type < self type) ifTrue: [^ false].
	self cards with: aHand cards collect: [:mine :theirs |
		(mine < theirs) ifTrue: [^ true].
		(theirs < mine) ifTrue: [^ false]].
	^ true