removing
removeKey: key ifAbsent: aBlock 
	"Remove key (and its associated value) from the receiver. If key is not in 
	the receiver, answer the result of evaluating aBlock. Otherwise, answer 
	the value externally named by key."

	| index association |
	index := self scanFor: key.
	association := (array at: index) ifNil: [ ^aBlock value ].
	tally := tally - 1. "Update tally first, so that read-only hashed collections raise an error before modifying array."
	array at: index put: nil.
	self fixCollisionsFrom: index.
	^association value