tests - fixture
test0FixtureCopyPartOfSequenceableTest
	self collectionWithoutEqualElements.
	self collectionWithoutEqualElements
		do: [ :each | self assert: (self collectionWithoutEqualElements occurrencesOf: each) = 1 ].
	self indexInForCollectionWithoutDuplicates.
	self
		assert:
			(self indexInForCollectionWithoutDuplicates > 0 and: [ self indexInForCollectionWithoutDuplicates
				< self collectionWithoutEqualElements size ]).
	self empty.
	self assert: self empty isEmpty