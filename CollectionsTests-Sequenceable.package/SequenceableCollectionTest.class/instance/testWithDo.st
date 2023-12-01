tests - enumerating
testWithDo

	| c1 c2 i |
	c1 := #(1 2 3).
	c2 := #(a b).

	self
		should: [c1 with: c2 do: [:ea1 :ea2 | ] ]
		raise: Error.

	c2 := #(a b c).
	i := 0.
	c1 with: c2 do: [:number :letter |
		i := i + 1.
		self assert: (c1 at: i) equals: number.
		self assert: (c2 at: i) equals: letter].