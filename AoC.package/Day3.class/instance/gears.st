accessing
gears
	"Answer the product of the two numbers adjacent to those
	asterisks adjacent to exactly two numbers"
	| starAdjacents |
	starAdjacents := self stars collect: [:each | each -> (self adjacentTo: each)].
	^ starAdjacents
		select: [:each | each value size = 2]
		thenCollect: [:each | each value inject: 1 into: [:a :b | a * b]]