conversion
mimeEncode
	"Convert from data to 5 bit characters."

	| padding raw nib lineLength |
	padding := nil.
	lineLength := 0.
	[dataStream atEnd] whileFalse: [
		(multiLine and:[lineLength >= 70]) ifTrue: [ mimeStream cr.  lineLength := 0. ].
		data := raw := dataStream next asInteger.
		nib := (data bitAnd: 16rF8) bitShift: -3. "1111 1000"
		mimeStream nextPut: (ToCharTable at: nib+1).
		(raw := dataStream next) ifNil: [raw := 0. padding := -6].
		data := ((data bitAnd: 7) bitShift: 8) + raw asInteger. "0000 0111"
		nib := (data bitAnd: 16r7C0) bitShift: -6. "0000 0111 1100 0000"
		mimeStream nextPut: (ToCharTable at: nib+1).
		nib := (data bitAnd: 16r3E) bitShift: -1. "0011 1110"
		mimeStream nextPut: (ToCharTable at: nib+1).
		(raw := dataStream next) ifNil: [raw := 0. padding ifNil: [padding := -4]].
		data := ((data bitAnd: 1) bitShift: 8) + (raw asInteger). "0000 0001"
		nib := (data bitAnd: 16r1F0) bitShift: -4. "0000 0001 1111 0000"
		mimeStream nextPut: (ToCharTable at: nib+1).
		(raw := dataStream next) ifNil: [raw := 0. padding ifNil: [padding := -3]].
		data := ((data bitAnd: 16rF) bitShift: 8) + (raw asInteger). "0000 1111"
		nib := (data bitAnd: 16rF80) bitShift: -7. "0000 1111 1000 0000"
		mimeStream nextPut: (ToCharTable at: nib+1).
		nib := (data bitAnd: 16r7C) bitShift: -2. "0111 1100"
		mimeStream nextPut: (ToCharTable at: nib+1).
		(raw := dataStream next) ifNil: [raw := 0. padding ifNil: [padding := -1]].
		data := ((data bitAnd: 3) bitShift: 8) + (raw asInteger). "0000 0011"
		nib := (data bitAnd: 16r3E0) bitShift: -5. "0000 0011 1110 0000"
		mimeStream nextPut: (ToCharTable at: nib+1).
		nib := (data bitAnd: 16r1F). "0001 1111"
		mimeStream nextPut: (ToCharTable at: nib+1).
		
		lineLength := lineLength + 8.].
	
	padding ifNotNil: [
		mimeStream skip: padding.
		padding to: -1 do: [:i | mimeStream nextPut: $=].
		^ mimeStream].