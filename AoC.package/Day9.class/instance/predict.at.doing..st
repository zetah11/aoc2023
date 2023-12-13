accessing
predict: aHistory at: aSymbol doing: aBlock
	| differences difference |
	differences := aHistory overlappingPairsCollect: [:a :b | b - a].
	difference := (differences allSatisfy: [:each | each = 0])
		ifTrue: [0]
		ifFalse: [self predict: differences at: aSymbol doing: aBlock].
	^ aBlock value: (aHistory perform: aSymbol) value: difference