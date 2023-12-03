convenience
decodeInteger: mimeString
	"Decode the MIME string into an integer of any length"

	| bytes sum |
	bytes := (self mimeDecodeToBytes: 
				(ReadStream on: mimeString)) contents.
	sum := 0.
	bytes reverseDo: [:by | sum := sum * 256 + by].
	^ sum