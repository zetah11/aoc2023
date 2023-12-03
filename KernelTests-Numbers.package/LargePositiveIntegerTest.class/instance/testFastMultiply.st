tests
testFastMultiply
	| a b ab ap bp |
	ap := self x92kbits.
	bp := self x106kbits.
	#(#yourself #negated) do: [:opa | 
		#(#yourself #negated) do: [:opb | 
			a := ap perform: opa.
			b := bp perform: opb.
			ab := a * b.
			self assert: (a multiplyByInteger: b) = ab.
			self assert: (a digitMultiply: b neg: a negative ~~ b negative) = ab.
			self assert: (a digitMul22: b) = ab.
			self assert: (a digitMul23: b) = ab.
			self assert: (a digitMul33: b) = ab]]