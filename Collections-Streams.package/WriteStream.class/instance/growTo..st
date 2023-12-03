private
growTo: anInteger
	" anInteger is the required minimal new size of the collection "

	| oldSize newSize |
	oldSize := collection size.
	newSize := anInteger + (oldSize // 4 max: 20).
	collection := collection grownBy: newSize - oldSize.
	writeLimit := collection size.
