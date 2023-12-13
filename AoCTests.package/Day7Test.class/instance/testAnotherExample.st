testing
testAnotherExample
	| d hands |
	d := Day7 withInput: '2345A 1
Q2KJJ 13
Q2Q2Q 19
T3T3J 17
T3Q33 11
2345J 3
J345A 2
32T3K 5
T55J5 29
KK677 7
KTJJT 34
QQQJA 31
JJJJJ 37
JAAAA 43
AAAAJ 59
AAAAA 61
2AAAA 23
2JJJJ 53
JJJJ2 41'.

	hands := d hands.
	self
		assert: (hands sixth <= hands first);
		assert: (hands first <= hands seventh);
		assert: (hands seventh <= hands eighth);
		assert: (d winnings sum) equals: 6592;
		assert: (d jokerWinnings sum) equals: 6839.