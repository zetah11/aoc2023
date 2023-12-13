testing
testRanking
	| d hands |
	d := Day7 withInput: '32T3K 765\T55J5 684\KK677 28\KTJJT 220\QQQJA 483' withCRs.
	"first fourth third second fifth"
	hands := d hands.
	self
		assert: (hands first <= hands first);
		assert: (hands first <= hands fourth);
		assert: (hands first <= hands third);
		assert: (hands first <= hands second);
		assert: (hands first <= hands fifth);

		assert: (hands fourth <= hands fourth);
		assert: (hands fourth <= hands third);
		assert: (hands fourth <= hands second);
		assert: (hands fourth <= hands fifth);

		assert: (hands third <= hands third);
		assert: (hands third <= hands second);
		assert: (hands third <= hands fifth);

		assert: (hands second <= hands second);
		assert: (hands second <= hands fifth);

		assert: (hands fifth <= hands fifth)