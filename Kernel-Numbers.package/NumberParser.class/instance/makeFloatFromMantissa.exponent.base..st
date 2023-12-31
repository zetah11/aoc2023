parsing-private
makeFloatFromMantissa: m exponent: k base: aRadix 
	"Convert infinite precision arithmetic into limited precision Floating point.
	This algorithm rely on correct IEEE rounding mode
	being implemented in Integer>>asFloat and Fraction>>asFloat"

	k = 0 ifTrue: [ ^m asFloat ].
	k > 0 ifTrue: [ ^(m * (aRadix raisedToInteger: k)) asFloat ].
	^(Fraction numerator: m denominator: (aRadix raisedToInteger: k negated)) asFloat