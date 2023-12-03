tests - mathematical functions
testSqrtFallback
	| fallBackMethod |
	fallBackMethod := Float>>#sqrt.
	{Float fmin. Float fmin * 2.0. Float fmin * 63.0. Float fmax. Float fmax predecessor predecessor.
	1.0. 2.0. 3.0. 4.0. 5.0}
		do: [:f |
			| s sm sp |
			"check against the primitives - if they are absent, it does not test anything..."
			s := fallBackMethod valueWithReceiver: f arguments: Array new.
			self assert: s equals: f sqrt.
			
			"in case we don't have the primitive, use exact arithmetic and a bit of logic"
			sm := s asTrueFraction - (s ulp asTrueFraction / 2).
			sp := s asTrueFraction + (s ulp asTrueFraction / 2).
			
			self assert: s asTrueFraction squared < f ==> [sp squared > f]
				description: '(s)^2 < (s+ulp/2)^2 <= f => s is more than ulp/2 away from the true square root of f'.
			self assert: s asTrueFraction squared > f ==> [sm squared < f]
				description: 'f <= (s-ulp/2)^2 < (s)^2  ==> s is more than ulp/2 away from the true square root of f'].
	self assertIsNegativeZero: (fallBackMethod valueWithReceiver: Float negativeZero arguments: Array new).
	self assertIsPositiveZero: (fallBackMethod valueWithReceiver: 0.0 arguments: Array new).
	self assert: (fallBackMethod valueWithReceiver: Float nan arguments: Array new) isNaN.
	self assert: (fallBackMethod valueWithReceiver: Float infinity arguments: Array new) equals: Float infinity.
	self should: [fallBackMethod valueWithReceiver: -2.0 arguments: Array new] raise: DomainError