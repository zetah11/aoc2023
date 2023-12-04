testing
testCardParser
	| d card |
	d := Day4 withInput: 'Card 1:  1 20 33 | 45 61'.
	card := d cards first.
	self
		assert: card id equals: 1;
		assert: card winning equals: { 1. 20. 33 };
		assert: card numbers equals: { 45. 61 }.