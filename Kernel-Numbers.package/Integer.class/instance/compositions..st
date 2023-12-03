mathematical functions
compositions: aNumber
	"Answer a stream which generates all compositions aNumber large of
	the receiver as arrays."
	^ Generator on: [:g | self compositions: aNumber do: g]