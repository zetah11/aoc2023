converting
adaptToFraction: receiver andSend: arithmeticOpSelector 
	"Convert a Fraction to aScaledDecimal and do the arithmetic. 
	receiver arithmeticOpSelector self."
	^(receiver asScaledDecimal: scale) perform: arithmeticOpSelector with: self