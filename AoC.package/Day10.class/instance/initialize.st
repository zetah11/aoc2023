initialize-release
initialize
	pipes := Dictionary new.
	lines withIndexDo: [:line :y |
		line withIndexDo: [:c :x |
			c caseOf: {
				[$.] -> [].
				[$S] -> [start := {x. y}]
			} otherwise: [pipes at: {x. y} put: (Day10Pipe withShape: c at: x and: y)]]].