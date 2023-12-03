tests
testDecode

	| encodedString decodedString |
	encodedString := '=E0'.
	decodedString := QEncodingMimeConverter mimeDecode: encodedString as: WideString.
	self assert: 'à' equals: decodedString.
	
	encodedString := 'H=FC_Th=F6r=E4!'.
	decodedString := QEncodingMimeConverter mimeDecode: encodedString as: WideString.
	self assert: 'Hü Thörä!' equals: decodedString.
	
	encodedString := 'H=FC=20Th=F6r=E4!'.
	decodedString := QEncodingMimeConverter mimeDecode: encodedString as: WideString.
	self assert: 'Hü Thörä!' equals: decodedString.