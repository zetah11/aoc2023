set logic
symmetricDifference: aCollection
	"Answer the set theoretic symmetric difference of two collections."

	^ (self difference: aCollection) union: (aCollection difference: self)
