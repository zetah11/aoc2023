printing
printOn: aStream
	aStream nextPutAll: 'a Day7Hand('.
	cards do: [:card | card printOn: aStream].
	aStream nextPut: $ .
	bid printOn: aStream.
	aStream nextPut: $).