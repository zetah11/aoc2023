tests - accessing
testNextLine
	| lines text stream |
	lines := #('line 1' ' and line 2' '' 'fourth').
	text := lines first , String cr , lines second , String crlf , lines third , String lf , lines fourth.
	stream := text readStream.
	lines do: [:e |
		self assert: stream nextLine = e].
	self assert: stream nextLine = nil