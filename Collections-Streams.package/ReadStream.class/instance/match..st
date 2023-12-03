positioning
match: subCollection
	"Faster version than the one implemented by super, but due to my subclasses breaking various invariants true for actual ReadStreams, only use it when the receiver's class is ReadStream."

	| matchPosition |
	self class == ReadStream ifFalse: [ ^super match: subCollection ].
	subCollection isEmpty ifTrue: [ ^true ].
	matchPosition := collection indexOfSubCollection: subCollection startingAt: position + 1.
	matchPosition = 0 ifTrue: [ 
		position := readLimit.
		^false ].
	matchPosition <= readLimit ifFalse: [ ^false ].
	position := matchPosition + subCollection size - 1.
	^true