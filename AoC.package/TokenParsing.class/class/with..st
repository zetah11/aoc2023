instance creation
with: aParser
	^ self with: aParser skipping: (Parsing characterMatching: [:c | c isSeparator]) manyTimes