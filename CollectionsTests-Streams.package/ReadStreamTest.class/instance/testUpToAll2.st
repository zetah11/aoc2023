tests - accessing
testUpToAll2
	| string stream array |
	string := 'aababcabcd'.
	stream := self streamOn: string.
	self assert: (stream upToAll: 'a') = ''.
	self assert: (stream upToEnd) = 'ababcabcd'.
	stream := self streamOn: string.
	self assert: (stream upToAll: 'ab') = 'a'.
	self assert: (stream upToEnd) = 'abcabcd'.
	stream := self streamOn: string.
	self assert: (stream upToAll: 'abc') = 'aab'.
	self assert: (stream upToEnd) = 'abcd'.
	stream := self streamOn: string.
	self assert: (stream upToAll: 'abcd') = 'aababc'.
	self assert: (stream upToEnd) = ''.
	stream := self streamOn: string.
	self assert: (stream upToAll: 'abe') = 'aababcabcd'.
	self assert: (stream upToEnd) = ''.
	
	array := #(1 1 2 1 2 3 nil 1 2 3 4).
	stream := self streamOn: array.
	self assert: (stream upToAll: #(1)) = #().
	self assert: (stream upToEnd) = #(1 2 1 2 3 nil 1 2 3 4).
	stream := self streamOn: array.
	self assert: (stream upToAll: #(1 2)) = #(1).
	self assert: (stream upToEnd) = #(1 2 3 nil 1 2 3 4).
	stream := self streamOn: array.
	self assert: (stream upToAll: #(1 2 3)) = #(1 1 2).
	self assert: (stream upToEnd) = #(nil 1 2 3 4).
	stream := self streamOn: array.
	self assert: (stream upToAll: #(1 2 3 4)) = #(1 1 2 1 2 3 nil).
	self assert: (stream upToEnd) = #().
	stream := self streamOn: array.
	self assert: (stream upToAll: #(1 2 5)) = array.
	self assert: (stream upToEnd) = #().