converting
asIEEE64BitWord
	"Convert the receiver into a 64 bit Integer value representing the same number in IEEE 64 bit format.
	 Used for conversion in FloatArrays."
	
	^((self basicAt: 1) bitShift: 32) + (self basicAt: 2)