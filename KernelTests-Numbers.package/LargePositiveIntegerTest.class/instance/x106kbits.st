accessing
x106kbits
	"Return a 106 kilo bits integer"
	^(15 to: 55 by: 4)
				inject: 9876543210
				into: [:big :bits | big * big << bits + bits]