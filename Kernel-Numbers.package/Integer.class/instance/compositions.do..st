mathematical functions
compositions: aNumber do: aBlock
	"For each composition of the receiver of size aNumber, invoke aBlock with
	an array containing those values. A composition of a number of size k is an
	array of k elements which sum to that number. Answers the receiver"
	(self < 0) ifTrue: [DomainError signal: 'the receiver must be non-negative'].
	((aNumber < 1) or: (aNumber isInteger not)) ifTrue: [DomainError signal: 'aNumber must be a positive integer'].
	
	(self = 0) ifTrue: [^ self].
	(aNumber = 1) ifTrue: [aBlock cull: {self}. ^ self].
	
	"Generate all k-compositions for self - 1, incrementing the last value to
	make it sum to self"
	(self - 1) compositions: aNumber do: [:values |
		| bigger |
		bigger := values
			copyReplaceFrom: (values size)
			to: (values size)
			with: { values last + 1 }.
		aBlock value: bigger].
	
	"Generate all (k-1)-compositions for self - 1, adding a +1 to the end to
	make it a k-composition for self"
	(self - 1) compositions: (aNumber - 1) do: [:values |
		aBlock value: (values copyWith: 1)].