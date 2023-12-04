accessing
score
	"Answer the score of this card"
	| winning |
	winning := self winnersPresent.
	^ winning isEmpty ifTrue: [^ 0] ifFalse: [^ 2 ** (winning size - 1)]