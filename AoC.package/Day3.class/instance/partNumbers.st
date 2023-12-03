accessing
partNumbers
	"Answer every number adjacent to a part"
	| adjacents |
	adjacents := self adjacentToSymbol.
	^ numbers
		select: [:each | each key anySatisfy: [:point | adjacents includes: point]]
		thenCollect: [:each | each value]
	