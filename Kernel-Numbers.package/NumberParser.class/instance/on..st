initialize-release
on: aStringOrStream 
	sourceStream := aStringOrStream isString 
		ifTrue: [ aStringOrStream readStream ]
		ifFalse: [ aStringOrStream ].
	base := self defaultBase.
	neg := false.
	integerPart := fractionPart := exponent := scale := 0.
	requestor := failBlock := nil