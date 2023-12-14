instance creation
withShape: aCharacter at: x and: y
	('|-LJ7F' includes: aCharacter) ifFalse: [Error signal: 'disallowed shape'].
	^ self new
		x: x;
		y: y;
		shape: aCharacter;
		yourself