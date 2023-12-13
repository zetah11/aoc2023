converting
alternatives
	^ self isJoker
		ifTrue: [self species labels collect: [:c | self species with: c]]
		ifFalse: [{ self }]