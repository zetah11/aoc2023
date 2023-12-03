accessing
x13kbits
	"Return a 13 kilo bits integer"
	^(15 to: 44 by: 4)
				inject: 9753102468
				into: [:big :bits | big * big << bits + bits]