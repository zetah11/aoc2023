fileIn/Out
nextChunkPut: aString
	"Append the argument, aString, to the receiver, doubling embedded terminators."

	| start matchIndex |
	start := 1.
	[ (matchIndex := aString indexOf: $! startingAt: start) = 0 ] whileFalse: [
		self
			next: matchIndex - start + 1 putAll: aString startingAt: start;
			nextPut: $!.
		start := matchIndex + 1 ].
	self next: aString size - start + 1 putAll: aString startingAt: start.
	aString includesUnifiedCharacter ifTrue: [
		self nextPutAll: '!]lang['.
		aString writeLeadingCharRunsOn: self ].
	self nextPut: $!
