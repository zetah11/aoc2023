initialize-release
initialize
	| lineNumber |
	width := lines first size.
	height := lines size.
	numbers := OrderedCollection new.
	symbols := OrderedCollection new.

	lineNumber := 1.
	lines do: [:each |
		self parse: each atLine: lineNumber.
		lineNumber := lineNumber + 1].