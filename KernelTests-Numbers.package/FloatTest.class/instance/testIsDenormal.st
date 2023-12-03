tests - characterization
testIsDenormal
	self assert: Float fminNormalized predecessor isDenormal.
	self assert: Float fminDenormalized isDenormal.
	self assert: Float fminDenormalized negated isDenormal.
	
	self deny: Float fminNormalized isDenormal.
	self deny: 0.0 isDenormal.
	self deny: 1.0 isDenormal.
	self deny: Float fmax isDenormal.
	self deny: Float infinity isDenormal.
	self deny: Float negativeInfinity isDenormal.
	self deny: Float nan isDenormal.