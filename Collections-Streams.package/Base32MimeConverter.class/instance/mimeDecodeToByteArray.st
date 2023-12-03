conversion
mimeDecodeToByteArray
	"Convert the stream in base 32 with only A-Z,2-7 to a full ByteArray of 0-255 values. Answer a whole stream for the user to read."

	| nibA nibB nibC nibD nibE nibF nibG nibH |
	[mimeStream atEnd] whileFalse: [
		(nibA := self nextValue) ifNil: [^ dataStream].
		(nibB := self nextValue) ifNil: [^ dataStream].
		dataStream nextPut: ((nibA bitShift: 3) + (nibB bitShift: -2)).
		nibB := nibB bitAnd: 16r3.
		(nibC := self nextValue) ifNil: [^ dataStream].
		(nibD := self nextValue) ifNil: [^ dataStream].
		dataStream nextPut: ((nibB bitShift: 6) + (nibC bitShift: 1) + (nibD bitShift: -4)).
		nibD := nibD bitAnd: 16rF.
		(nibE := self nextValue) ifNil: [^ dataStream].
		dataStream nextPut: ((nibD bitShift: 4) + (nibE bitShift: -1)).
		nibE := nibE bitAnd: 16r1.
		(nibF := self nextValue) ifNil: [^ dataStream].
		(nibG := self nextValue) ifNil: [^ dataStream].
		dataStream nextPut: ((nibE bitShift: 7) + (nibF bitShift: 2) + (nibG bitShift: -3)).
		nibG := nibG bitAnd: 16r7.
		(nibH := self nextValue) ifNil: [^ dataStream].
		dataStream nextPut: ((nibG bitShift: 5) + nibH).
		].
	^ dataStream