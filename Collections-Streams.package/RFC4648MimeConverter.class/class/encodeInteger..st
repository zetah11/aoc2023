convenience
encodeInteger: anInteger
	"Encode anInteger of any length and return the MIME string"

	| stream |
	stream := WriteStream on: (ByteArray new: anInteger digitLength).
	1 to: anInteger digitLength do: [:ii | stream nextPut: (anInteger digitAt: ii)].
	^ ((self mimeEncode: stream readStream) contents) copyUpTo: $=	"remove padding"