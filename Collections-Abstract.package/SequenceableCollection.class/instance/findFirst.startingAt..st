enumerating
findFirst: aBlock startingAt: i
	"Return the index of my first element with index >= i for which aBlock evaluates as true."

	| index |
	index := i - 1.
	[(index := index + 1) <= self size] whileTrue:
		[(aBlock value: (self at: index)) ifTrue: [^index]].
	^ 0