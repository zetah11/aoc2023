accessing
winnersPresent
	"Answer an array of every number on this card that is also a winner"
	^ numbers select: [:each | winning includes: each]