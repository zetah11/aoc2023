convenience
mimeDecodeToBytes: aStream 
	"Answer a ReadStream of the original ByteArray.  aStream has only 33/65/... innocuous character values.  aStream is not binary.  (See class comment). 8/4/... bytes in aStream goes to 5/3/... bytes in output."

	| me |
	aStream position: 0.
	me := self new mimeStream: aStream.
	me dataStream: (WriteStream on: (ByteArray new: aStream size * 3 // 4)).
	me mimeDecodeToByteArray.
	^ me dataStream readStream