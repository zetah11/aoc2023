instance creation
readFrom: aStringOrStream base: base ifFail: aBlock
	"Answer an instance of one of the concrete subclasses if Integer. 
	Initial plus or minus sign accepted, and bases > 10 use letters A-Z.
	Imbedded radix specifiers not allowed;  use Number class readFrom: for that.
	Execute aBlock if there are no digits."

	^(ExtendedNumberParser on: aStringOrStream) nextIntegerBase: base ifFail: aBlock