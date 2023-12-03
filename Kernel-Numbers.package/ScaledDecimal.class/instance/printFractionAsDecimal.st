printing
printFractionAsDecimal

	^ String streamContents: [:stream |
		self printFractionAsDecimalOn: stream]