as yet unclassified
copiesOfCards
	"Answer an array of the number of copies of each card with that index"
	| cards ids |
	cards := self cards.
	ids := (1 to: cards size) collect: [:each | 1].
	(1 to: cards size) do: [:id |
		| copiesOfThis |
		copiesOfThis := ids at: id.
		(cards at: id) copiesFrom do: [:each |
			ids at: each incrementBy: copiesOfThis]].
	^ ids