initialize-release
initialize
	map := Dictionary new.
	(0 to: 9) do: [:value | map add: (value asWords -> value)].
	rx := (map keys inject: '\d' into: [:acc :term | acc, '|', term]) asRegex.
	(0 to: 9) do: [:value | map add: (value asString -> value)].