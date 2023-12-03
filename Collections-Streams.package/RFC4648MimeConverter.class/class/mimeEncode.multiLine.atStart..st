private - convenience
mimeEncode: aStream multiLine: aBool atStart: resetInput
	"Answer a ReadStream of characters.  The data of aStream is encoded as 33/65/... innocuous characters.  (See class comment). 5/3/... bytes in aStream goes to 8/4/... bytes in output."

	| me |
	resetInput ifTrue:[aStream position: 0].
	me := self new dataStream: aStream.
	me multiLine: aBool.
	me mimeStream: (WriteStream on: (String new: aStream size + 20 * 4 // 3)).
	me mimeEncode.
	^ me mimeStream readStream