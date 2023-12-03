tests - characterization
testIsPowerOfTwo

	-1023 - 51 to: 1023 do: [ :each |
		| n |
		n := 1.0 timesTwoPower: each.
		self 
			assert: n isPowerOfTwo;
			deny: n negated isPowerOfTwo ].
	{ 0.0. 3.0. 0.3. Float nan. Float infinity } do: [ :each |
		self
			deny: each isPowerOfTwo;
			deny: each negated isPowerOfTwo ].
	