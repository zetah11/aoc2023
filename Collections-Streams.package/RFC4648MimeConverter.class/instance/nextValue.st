conversion
nextValue
	"The next n bits of data char from the mimeStream, or nil.  Skip all other chars"
	| raw num |
	[raw := mimeStream next.
	raw ifNil: [^ nil].	"end of stream"
	raw == $= ifTrue: [^ nil].
	num := self fromCharTable at: raw asciiValue + 1.
	num ifNotNil: [^ num].
	"else ignore space, return, tab, ..."
	] repeat