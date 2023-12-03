tests - enumerating
testGather
	
	| stream |
	stream := (self streamOn: #(1 2 3 4)) gather: [:num | 1 to: num].
	self assert: stream upToEnd asArray = #(1 1 2 1 2 3 1 2 3 4).