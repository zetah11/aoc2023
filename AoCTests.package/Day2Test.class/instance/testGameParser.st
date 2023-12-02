testing
testGameParser
	| parser game expected |
	parser := Day2 new gameParser.
	game := parser parse: 'Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green'.
	expected := Dictionary newFrom: { 'red' -> 5. 'green' -> 4. 'blue' -> 9 }.
	self
		assert: game id equals: 1;
		assert: game sum equals: expected.