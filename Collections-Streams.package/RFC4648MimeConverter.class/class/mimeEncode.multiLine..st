convenience
mimeEncode: aStream multiLine: aBool
	"Answer a ReadWriteStream of characters.  The data of aStream is encoded as 33/65/... innocuous characters.  (See class comment). 5/3/... bytes in aStream goes to 8/4/... bytes in output."

	^self mimeEncode: aStream multiLine: aBool atStart: true