tests - accessing
testPeeks
	| stream |
	stream := self streamOnArray.
	
	self assert: (stream peek: 0) = #().
	self assert: (stream peek: 1) = #(1).
	self assert: (stream peek: 3) = #(1 (a b c) false).
	self assert: (stream peek: 4) = #(1 (a b c) false).
	
	stream next.
	
	self assert: (stream peek: 0) = #().
	self assert: (stream peek: 1) = #((a b c)).
	self assert: (stream peek: 3) = #((a b c) false).