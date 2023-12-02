tests - accessing
testZeroDimensions
	self assert: #() equals: ((Matrix rows: 2 columns: 0 element: 9) atRow: 1).
	self assert: #() equals: ((Matrix rows: 0 columns: 2 element: 9) atColumn: 1).
