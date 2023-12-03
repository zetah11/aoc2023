tests
testDecodeCrLfToCr

	| encodedString decodedString targetString |
	encodedString := ((WriteStream on: '') 
						<< 'a'; crlf; << 'b') contents.
	decodedString := QuotedPrintableMimeConverter mimeDecode: encodedString as: WideString.
	targetString := encodedString := ((WriteStream on: '') 
						<< 'a'; cr; << 'b') contents.
	self assert: targetString equals: decodedString.