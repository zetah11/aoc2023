initialize-release
initialize: input
	lines := input lines.
	map := Dictionary newFrom: {
		'zero' -> 0. 'one' -> 1. 'two' -> 2. 'three' -> 3. 'four' -> 4.
		'five' -> 5. 'six' -> 6. 'seven' -> 7. 'eight' -> 8. 'nine' -> 9 }.
	rx := (map keys inject: '\d' into: [:acc :term | acc, '|', term]) asRegex.
	(0 to: 9) do: [:value | map add: (value asString -> value)].