converting
adaptToInteger: receiver andSend: arithmeticOpSelector 
	"Convert receiver to a ScaledDecimal and do the arithmetic. 
	receiver arithmeticOpSelector self."
	^ (receiver asScaledDecimal: 0)
		perform: arithmeticOpSelector with: self