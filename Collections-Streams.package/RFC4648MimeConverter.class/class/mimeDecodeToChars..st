convenience
mimeDecodeToChars: aStream 
	"Answer a ReadWriteStream of the original String.  aStream has only 33/65/... innocuous character values.  It is not binary.  (See class comment). 8/4/... bytes in aStream goes to 5/3/... bytes in output."

	| me |
	aStream position: 0.
	me := self new mimeStream: aStream.
	me dataStream: (WriteStream on: (String new: aStream size * 3 // 4)).
	me mimeDecode.
	^ me dataStream readStream