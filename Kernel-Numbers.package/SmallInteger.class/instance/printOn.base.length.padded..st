printing
printOn: stream base: base length: minimumLength padded: padWithZeroes

	| n numberOfDigits totalLength divisor |
	self < 0
		ifTrue: [
			n := self negated.
			totalLength := 1 ]
		ifFalse: [
			n := self.
			totalLength := 0 ].
	numberOfDigits := n numberOfDigitsInBase: base.
	totalLength := totalLength + numberOfDigits.
	padWithZeroes ifFalse: [
		[ totalLength < minimumLength ] whileTrue: [
			stream space.
			totalLength := totalLength + 1 ] ].
	self < 0 ifTrue: [ stream nextPut: $- ].
	padWithZeroes ifTrue: [
		[ totalLength < minimumLength ] whileTrue: [
			stream nextPut: $0.
			totalLength := totalLength + 1 ] ].
	numberOfDigits > 1 ifTrue: [
		divisor := base = 10
			ifTrue: [ #(1 10 100 1000 10000 100000 1000000 10000000 100000000 1000000000 10000000000 100000000000 1000000000000 10000000000000 100000000000000 1000000000000000 10000000000000000 100000000000000000 1000000000000000000) at: numberOfDigits ]
			ifFalse: [ base raisedToInteger: numberOfDigits - 1 ].
		[ divisor > 1 ] whileTrue: [
			| digit |
			digit := n // divisor.
			stream nextPut: ('0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ' at: digit + 1).
			n := n - (digit * divisor).
			divisor := divisor // base ] ].
	^stream nextPut: ('0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ' at: n + 1)