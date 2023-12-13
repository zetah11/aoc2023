testing
testExample1
	| d |
	d := Day7 withInput: '32T3K 765\T55J5 684\KK677 28\KTJJT 220\QQQJA 483' withCRs.
	self
		assert: (d winnings sum) equals: 6440;
		assert: (d jokerWinnings sum) equals: 5905.