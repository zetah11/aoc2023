converting
asSpecies: number 
	"Convert number to a ScaledDecimal."
	#Numeric.
	"add 200/01/19 For ANSI <number>support."
	^ ScaledDecimal newFromNumber: number scale: scale