accessing
peekLast
	"Answer the object that was sent through the receiver last and has not 
	 yet been received by anyone. If  no object has been sent, answer nil"

	"SharedQueue new nextPut: 1; nextPut: 2; peekLast"

	^readSynch
		critical:
			[accessProtect critical:
				[writePosition > 1 ifTrue:
					[contentsArray at: writePosition - 1]]]
		ifLocked: [nil]