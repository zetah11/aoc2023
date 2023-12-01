printing - obsolete
printOn: aStream delimiter: delimString

	self flag: #deprecated.
	self
		printElementsOn: aStream
		separatedBy: delimString.