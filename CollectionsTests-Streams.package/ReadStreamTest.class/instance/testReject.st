tests - enumerating
testReject
	
	| stream |
	stream := (self streamOn: #(1 2 3 4)) reject: [:num | num even].
	self assert: (stream next: 2) asArray = #(1 3).