accessing
counts
	"Answer an array of the counts of different values, sorted increasingly"
	^ (Bag newFrom: self) sortedCounts asArray reversed collect: [:each | each key]