testing
overlaps: anInterval
	"Answers true if there exists a value common to both self and anInterval"
	^ (self intersectingRange: anInterval) isEmpty not