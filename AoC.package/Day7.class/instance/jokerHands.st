accessing
jokerHands
	^ lines collect: [:each | jokerParser parse: each]