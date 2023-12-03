tests - testing
testMatch

	| stream |
	stream := ReadStream on: 'foobarbaz'.
	self assert: (stream match: 'foo').
	self assert: stream position = 3.
	self assert: (stream match: 'baz').
	self assert: stream position = 9.
	self assert: stream atEnd.
	self assert: (stream match: '').
	self deny: (stream match: 'foo').
	stream reset.
	self deny: (stream match: '1').
	self assert: stream atEnd