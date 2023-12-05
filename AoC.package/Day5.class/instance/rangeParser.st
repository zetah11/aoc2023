accessing
rangeParser
	| number |
	number := Parsing number tokenized.
	^ (number, number, number) collecting: [:tokens |
		Day5Range withSourceStart: tokens second destinationStart: tokens first length: tokens last]