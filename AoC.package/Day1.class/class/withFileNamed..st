instance creation
withFileNamed: path
	| stream input |
	stream := FileStream readOnlyFileNamed: path.
	input := stream contents.
	stream close.
	^ self basicNew initialize: input.