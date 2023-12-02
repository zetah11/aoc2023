enumerating
collect: aBlock
	"If this is a succesful parse, use aBlock evaluated with its result and remainder
	as the new result"
	^ self
		ifOk: [:oldResult :remainder |
			| newResult |
			newResult := aBlock cull: oldResult cull: remainder.
			SuccessfulParse withValue: newResult remainder: remainder]
		ifFailed: [self]