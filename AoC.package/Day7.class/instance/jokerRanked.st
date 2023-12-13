accessing
jokerRanked
	^ self jokerHands copy quickSort: [:a :b | a betterWithJokersThan: b]