enumerating
suffixes
	"Answer every suffix of the receiver, including a copy of the receiver"
	| length |
	length := self size.
	^ (1 to: length) collect: [:start | self copyFrom: start to: length]