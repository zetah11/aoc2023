testing
distinct
	"Answer true if this collection contains no duplicate values"
	| encountered |
	encountered := Set new.
	self do: [:each |
		(encountered includes: each) ifTrue: [^ false].
		encountered add: each].
	^ true