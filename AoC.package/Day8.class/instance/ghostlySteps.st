accessing
ghostlySteps
	| allSteps |
	allSteps := (map keys select: [:each | each last = $A])
		collect: [:each | self stepsUntil: [:node | node last = $Z] from: each].
	^ allSteps inject: 1 into: [:a :b | a lcm: b]