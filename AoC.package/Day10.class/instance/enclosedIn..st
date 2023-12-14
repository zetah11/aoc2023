accessing
enclosedIn: aLine
	"Answer the number of tiles enclosed within the given line"
	| enclosed within |
	enclosed := 0.
	within := false.
	aLine do: [:each |
		each
			ifNil: [within ifTrue: [enclosed := enclosed + 1]]
			ifNotNil: [
				each pointsNorth ifTrue: [within := within not]]].
	^ enclosed