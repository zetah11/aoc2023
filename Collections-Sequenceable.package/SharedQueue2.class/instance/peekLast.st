accessing
peekLast
	"Answer the object that was sent through the receiver last and has not 
	 yet been received by anyone. If  no object has been sent, answer nil"

	"SharedQueue2 new nextPut: 1; nextPut: 2; peekLast"
	^monitor critical:
		[items isEmpty ifFalse:
			[items last]]