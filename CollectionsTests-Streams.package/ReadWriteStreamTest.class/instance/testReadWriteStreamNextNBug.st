tests
testReadWriteStreamNextNBug
	| aStream |
	aStream := ReadWriteStream on: String new.
	aStream nextPutAll: 'Hello World'.
	"This should not fail"
	aStream next: 5.