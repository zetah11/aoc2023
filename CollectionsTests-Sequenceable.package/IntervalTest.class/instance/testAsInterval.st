tests
testAsInterval
	"This is the same as newFrom:"

	self assert: (1 to: 3) equals: (#(1 2 3) as: Interval).
	self assert: (33 to: -23 by: -28) equals: (#(33 5 -23) as: Interval).
	self assert: (2 to: 6 by: 2) equals: (#[2 4 6] as: Interval).

	self should: [#(33 5 -22) as: Interval]
		raise: Error
		description: 'This is not an arithmetic progression'
