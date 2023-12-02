accessing rows/columns
transposed
	^ self species rows: ncols columns: nrows tabulate: [:i :j | self at: j at: i]