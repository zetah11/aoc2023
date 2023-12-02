removing
remove: oldObject ifAbsent: aBlock

	| index |
	index := self scanFor: (keyBlock value: oldObject).
	(array at: index) ifNil: [ ^ aBlock value ].
	tally := tally - 1. "Update tally first, so that read-only hashed collections raise an error before modifying array."
	array at: index put: nil.
	self fixCollisionsFrom: index.
	^ oldObject