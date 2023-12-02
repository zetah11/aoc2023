accessing rows/columns
atColumn: column
	|p|
	nrows = 0 ifTrue: [
		(column between: 1 and: ncols)
			ifFalse: [self error: '2nd subscript out of range'].
		^ #()].
	p := (self indexForRow: 1 andColumn: column)-ncols.
	^(1 to: nrows) collect: [:row | contents at: (p := p+ncols)]
