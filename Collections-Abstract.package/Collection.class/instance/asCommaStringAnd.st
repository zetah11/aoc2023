printing - obsolete
asCommaStringAnd
	"Return collection printed as 'a, b, and c' (Oxford comma)"

	self flag: #deprecate.
	^ String streamContents: [:s |
		self size = 2
			ifTrue: [self asStringOn: s delimiter: ' and ']
			ifFalse: [self asStringOn: s delimiter: ', ' last: ', and ']]