initialize-release
initialize
	| negative number historyParser |
	number := Parsing number.
	negative := ((Parsing literally: '-'), number) collecting: [:tokens | 0 - (tokens second)].
	historyParser := (number / negative) tokenized manyTimes.
	histories := lines collect: [:each | historyParser parse: each].