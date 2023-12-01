accessing
digitsAndDigitWords
	"Like digits, but includes digit words (that may overlap) too"
	^ lines collect: [:each |
		| digits |
		digits := self digitsAndDigitWords: each.
		digits collect: [:name | map at: name]]