tests - enumerating
testSelect
	
	| stream |
	stream := (self streamOn: #(1 2 3 4)) select: [:num | num even].
	self assert: (stream next: 2) asArray = #(2 4).