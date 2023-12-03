private
methodContainsFloatLiteral: method
	method isQuick ifFalse:
		[method allLiteralsDo:
			[:lit| lit isFloat ifTrue: [^true]]].
	^false