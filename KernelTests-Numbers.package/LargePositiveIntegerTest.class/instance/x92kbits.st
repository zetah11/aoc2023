accessing
x92kbits
	"Return a 92 kilo bits integer"
	^(11 to: 51 by: 4)
			inject: 1357924680
			into: [:big :bits | big * big << bits + bits]