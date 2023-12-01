tests - sorting
testSortCustom

	| values |
	values := #(The quick brown fox jumps over the lazy dog).
	1 to: 9 do: [:ea |
		sut at: ea put: (values at: ea)].
	sut sort: [:a1 :a2 | a1 value <= a2 value].
	self assert: values sorted equals: sut values.
