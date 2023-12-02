comparing
+ anObject
	"Like union, but the resulting Dictionary sums the values which occur in both
	the receiver and anObject"
	| result |
	result := self species new.
	self associationsDo: [:entry | result add: entry].
	anObject associationsDo: [:entry | result add: entry combining: [:a :b | a + b]].
	^ result