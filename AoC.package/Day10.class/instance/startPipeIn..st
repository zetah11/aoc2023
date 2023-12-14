accessing
startPipeIn: aLoop
	"Answer the shape of the start element to connecting the first and last"
	| first last a b |
	first := aLoop first.
	last := aLoop last.
	a := { first first - start first. first second - start second }.
	b := { last first - start first. last second - start second }.
	^ Day10Pipe shapeConnecting: a and: b