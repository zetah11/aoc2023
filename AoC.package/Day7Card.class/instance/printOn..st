printing
printOn: aStream
	aStream nextPut: (self species labels at: value).