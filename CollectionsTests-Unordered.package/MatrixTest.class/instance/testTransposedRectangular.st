tests - accessing
testTransposedRectangular
	| transposedMatrix |
	
	transposedMatrix := matrix3 transposed.

	self assert: [transposedMatrix rowCount = 2].
	self assert: [transposedMatrix columnCount = 3].

	self assert: [transposedMatrix = (Matrix rows: 2 columns: 3 tabulate: [:i :j | j * 10 + i])].