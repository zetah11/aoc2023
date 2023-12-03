tests
testExisting

	| string stream |
	
	string := 'hello'.
	
	stream := RWBinaryOrTextStream on: string.
	self assert: stream contents = string.

	stream := RWBinaryOrTextStream on: string.
	stream setToEnd.
	self assert: stream position = string size.
