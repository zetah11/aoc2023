stream extensions
endEntry
	"Display all the characters since the last endEntry, and reset the stream"
	self lock critical:
		[(self == Transcript and: [self class redirectToStdOut])
			ifTrue:
				[FileStream stdout nextPutAll: self contents; flush]
			ifFalse:
				[self changed: (self class forceUpdate
							ifTrue: [#appendEntry]
							ifFalse: [#appendEntryLater])].
		 self reset]