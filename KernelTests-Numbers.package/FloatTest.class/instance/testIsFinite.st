tests - characterization
testIsFinite
	self assert: Float fminDenormalized isFinite.
	self assert: 0.0 isFinite.
	self assert: Float pi negated isFinite.
	self assert: Float fmax isFinite.
	
	self deny: Float infinity isFinite.
	self deny: Float negativeInfinity isFinite.
	self deny: Float nan isFinite.