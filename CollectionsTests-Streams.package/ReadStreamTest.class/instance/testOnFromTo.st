tests - accessing
testOnFromTo
	self assert: (ReadStream
						on: (String withAll: ((0 to: 255) collect: [:n| n asCharacter]))
						from: $A asInteger + 1
						to: $Z asInteger + 1)
					contents
		equals: (String withAll: ($A to: $Z))