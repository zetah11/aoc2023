accessing
adjacentTo: aPoint
	"Answer every number adjacent to aPoint"
	| adjacents |
	adjacents := self neighboursOf: aPoint.
	^ numbers
		select: [:each | each key anySatisfy: [:point | adjacents includes: point]]
		thenCollect: [:each | each value]