tests
testDecode

	| encodedString decodedString |
	encodedString := '=E0'.
	decodedString := QuotedPrintableMimeConverter mimeDecode: encodedString as: WideString.
	self assert: 'à' equals: decodedString.
	
	encodedString := 'H=FC Th=F6r=E4!'.
	decodedString := QuotedPrintableMimeConverter mimeDecode: encodedString as: WideString.
	self assert: 'Hü Thörä!' equals: decodedString.