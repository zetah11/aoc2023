accessing
x23kbits
	"Return a 23 kilo bits integer"
	^(11 to: 44 by: 4)
			inject: 1234567890
			into: [:big :bits | big * big << bits + bits]