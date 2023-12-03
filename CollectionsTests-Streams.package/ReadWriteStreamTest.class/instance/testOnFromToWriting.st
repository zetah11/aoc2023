tests
testOnFromToWriting
	| aToZ |
	aToZ := String withAll: ($A to: $Z).
	self assert: ((ReadWriteStream
						on: (String withAll: ((0 to: 255) collect: [:n| n asCharacter]))
						from: $A asInteger + 1
						to: $Z asInteger + 1)
					nextPutAll: aToZ;
					contents)
		equals: aToZ