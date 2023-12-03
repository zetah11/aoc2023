tests
testDigitDiv
	| a b q r qr ap bp |
	ap := self x23kbits.
	bp := self x13kbits.
	self assert: (ap digitDivSplit: bp) = ((ap digitDiv: bp neg: false) collect: #normalize).
	#(#yourself #negated) do: [:opa | 
		#(#yourself #negated) do: [:opb | 
			a := ap perform: opa.
			b := bp perform: opb.
			qr := a digitDiv: b neg: opa ~~ opb.
			q := qr first normalize.
			r := qr last normalize.
			self assert: q * b + r = a.
			self assert: r abs < b abs.
			self assert: a positive ==> r positive.
			self assert: a negative ==> (r negative | r isZero)]]
	