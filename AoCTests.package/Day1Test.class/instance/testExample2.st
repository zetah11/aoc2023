testing
testExample2
	| d |
	d := Day1 withInput:
		'two1nine\eightwothree\abcone2threexyz\xtwone3four\4nineeightseven2\zoneight234\7pqrstsixteen' withCRs.
	self assert: d calibrationValuesWithWords sum equals: 281.