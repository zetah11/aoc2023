bit manipulation
bitReverse: highBit 
	"This implementation is faster than super"
	
	| digitSize reversed |
	highBit < self highBit ifTrue: [ self error: 'Not enough bits.' ].
	digitSize := highBit + 7 // 8.
	reversed := self class new: digitSize.
	1 to: self digitLength do: [:i |
		reversed digitAt: digitSize + 1 - i put: (self digitAt: i) byteReversed].
	^reversed normalize bitShift: highBit - (digitSize * 8)