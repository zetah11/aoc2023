mathematical functions
tanh
	"Answer hyperbolic tangent of receiver.
	Trivial implementation is:
		^self sinh/self cosh
	This implementation takes care not to overflow."

	| ex emx |
	self = 0.0 ifTrue: [^self].	"Handle negativeZero"
	self > 20.0 ifTrue: [^1.0].
	self < -20.0 ifTrue: [^-1.0].
	ex := self exp.
	emx := ex reciprocal.
	^(ex - emx) / (ex + emx)