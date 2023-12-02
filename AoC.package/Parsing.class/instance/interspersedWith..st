combinator
interspersedWith: aParser
	"Parse using the receiver one or more times, aParser inbetween each time.
	Like (self, aParser) manyTimes, self but ignores the results of aParser and returns
	a flat array of lexemes"
	| parser |
	parser := ((self, aParser) collecting: [:lexemes | lexemes first]) manyTimes, self.
	^ parser collecting: [:results |
		results first copyWith: results last]