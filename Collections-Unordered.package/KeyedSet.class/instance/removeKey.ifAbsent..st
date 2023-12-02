removing
removeKey: key ifAbsent: aBlock

	| index obj |
	index := self scanFor: key.
	obj := (array at: index) ifNil: [ ^ aBlock value ].
	tally := tally - 1. "Update tally first, so that read-only hashed collections raise an error before modifying array."
	array at: index put: nil.
	self fixCollisionsFrom: index.
	^ obj enclosedSetElement