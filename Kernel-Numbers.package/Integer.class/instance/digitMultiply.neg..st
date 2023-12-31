private
digitMultiply: arg neg: ng 
	| selfLen argLen prod prodLen carry digit k ab |
	<primitive: 'primDigitMultiplyNegative' module:'LargeIntegers'>
	argLen := arg digitLength.
	(argLen = 1 and: [(arg digitAt: 1)
			= 0])
		ifTrue: [^ 0].
	selfLen := self digitLength.
	(selfLen = 1 and: [(self digitAt: 1)
			= 0])
		ifTrue: [^ 0].
	prodLen := selfLen + argLen.
	prod := Integer new: prodLen neg: ng.
	"prod starts out all zero"
	1 to: selfLen do: [:i | (digit := self digitAt: i) ~= 0
			ifTrue: 
				[k := i.
				carry := 0.
				"Loop invariant: 0<=carry<=0377, k=i+j-1"
				1 to: argLen do: 
					[:j | 
					ab := (arg digitAt: j)
								* digit + carry + (prod digitAt: k).
					carry := ab bitShift: -8.
					prod digitAt: k put: (ab bitAnd: 255).
					k := k + 1].
				prod digitAt: k put: carry]].
	^ prod normalize