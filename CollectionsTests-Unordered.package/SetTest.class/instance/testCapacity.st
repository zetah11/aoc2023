tests
testCapacity

	| set capacity |
	set := Set new.
	self assert: set size = 0.
	10 timesRepeat: [
		capacity := set capacity.
		self assert: set size < capacity.
		set size + 1 to: capacity do: [ :i |
			set add: i.
			self assert: set capacity = capacity ].
		self assert: set size equals: capacity.
		set add: set capacity + 1.
		self assert: set capacity > capacity ]