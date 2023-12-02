accessing
max
	^ draws inject: (Dictionary new) into: [:biggest :set | biggest max: set]