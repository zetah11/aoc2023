tests - enumerating
testWithCollect

	| c1 c2 |
	c1 := #(1 2 3).
	c2 := #(4 5 6).

	self assert: #(4 10 18) equals: (c1 with: c2 collect: [:a :b | a * b]).