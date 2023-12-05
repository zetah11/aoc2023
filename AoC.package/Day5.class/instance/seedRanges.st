accessing
seedRanges 
	^ self seeds pairsCollect: [:a :b | a to: (a + b - 1)]