instance creation
interleaving: aCollection
	"Produce a stream interleaving the elements of the streams in aCollection, in order"
	aCollection isSequenceable ifFalse: [Error signal: 'streams are interleaved in order'].
	^ Generator on: [:g |
		| done |
		done := false.
		[done] whileFalse: [
			done := true.
			aCollection do: [:stream |
				stream atEnd ifFalse: [
					done := false.
					g yield: stream next]]]]