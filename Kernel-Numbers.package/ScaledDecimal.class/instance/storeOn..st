printing
storeOn: aStream 
	"SxaledDecimal sometimes have more digits than they print (potentially an infinity).
	In this case, do not use printOn: because it would loose some extra digits"
	
	self shouldBePrintedAsLiteral
		ifTrue: [self printOn: aStream]
		ifFalse: [aStream
			nextPut: $(;
		 	store: fraction numerator;
			nextPut: $/;
			store: fraction denominator;
			nextPut: $s;
			store: scale;
			nextPut: $)]