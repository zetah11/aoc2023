convenience
mimeEncode: aStream
	"Answer a ReadWriteStream of characters.  The data of aStream is encoded as 33/65/... innocuous characters.  (See class comment). 5/3/... bytes in aStream goes to 8/4/... bytes in output."
	self flag: #suspicious. "ct: All other classes answer a String, just this one answers a ReadStream. Unfortunately, expectations of senders are inconsistent as well ..."
	^self mimeEncode: aStream multiLine: true atStart: true