arithmetic
divideSecureBy: anObject
	"Answer the result of dividing receiver by aNumber"
	" Both operands are scaled to avoid arithmetic overflow. This algorithm 
	  works for a wide range of values, but it requires six divisions.  
	  #divideFastAndSecureBy:  is also quite good, but it uses only 3 divisions.
	   Note: #reciprocal uses #/ for division"
	 
	| s ars ais brs bis newReal newImaginary |
	anObject isComplex ifTrue:
		[s := anObject real abs max: anObject imaginary abs.
		 ars := self real / s.
		 ais := self imaginary / s.
		 brs := anObject real / s.
		 bis := anObject imaginary / s.
		 s := brs squared + bis squared.
		 brs := brs / s.
		 bis := bis / s.
		
		newReal := ars*brs + (ais*bis).
		newImaginary := ais*brs - (ars*bis).
		^ Complex real: newReal imaginary: newImaginary].
	^ anObject adaptToComplex: self andSend: #/.