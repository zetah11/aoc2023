accessing
adjacentToSymbol
	"Answer with a set of every point adjacent to any symbol"
	| adjacents |
	adjacents := Set new.
	symbols do: [:symbol |
		adjacents addAll: (self neighboursOf: symbol key)] .
	^ adjacents