testing
testExample1
	| d |
	d := Day1 withInput: '1abc2\pqr3stu8vwx\a1b2c3d4e5f\treb7uchet' withCRs.
	self assert: d calibrationValues sum equals: 142.