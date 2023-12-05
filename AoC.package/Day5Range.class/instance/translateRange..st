accessing
translateRange: anInterval
	"Answer the translated portion of anInterval contained within its sourceRange, and
	the parts of the range before and after anInterval."
	| between before after |
	between := self sourceRange intersectingRange: anInterval.
	between isEmpty ifTrue: [^ {{}. {anInterval}}].
	before := anInterval first to: (between first - 1).
	after := (between last + 1) to: anInterval last.
	^ { between - sourceStart + destinationStart. { before. after } }