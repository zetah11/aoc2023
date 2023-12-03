tests - trunction and round off
testRoundTo

	{
		1 . 1.0 . 1.0 .
		1.0 . 1 . 1 .
		1/3 . 1/4 . 1/4 . 
		0.9 . 1/3 . 1 .
	} groupsDo: [:receiver :argument :expected |
		self assert: expected equals: (receiver roundTo: argument)]