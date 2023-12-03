tests
testRoll

	| random result |
	random := Random seed: 14482.
	
	"Roll the default die (d6)"
	100 timesRepeat: [
		result := random roll: 'd'.
		self assert: result >= 1 description: [ 'Rolled value ', result asString, ' should be 1 or more.' ].
		self assert: result <= 6 description: [ 'Rolled value ', result asString, ' should be 6 or less.' ] ].
	100 timesRepeat: [
		result := random roll: '1d'.
		self assert: result >= 1 description: [ 'Rolled value ', result asString, ' should be 1 or more.' ].
		self assert: result <= 6 description: [ 'Rolled value ', result asString, ' should be 6 or less.' ] ].
	
	"Roll a d20"
	100 timesRepeat: [
		result := random roll: '1d20'.
		self assert: result >= 1 description: [ 'Rolled value ', result asString, ' should be 1 or more.' ].
		self assert: result <= 20 description: [ 'Rolled value ', result asString, ' should be 20 or less.' ] ].
	
	"Roll a d% (d100)"
	1000 timesRepeat: [
		result := random roll: '1d%'.
		self assert: result >= 1 description: [ 'Rolled value ', result asString, ' should be 1 or more.' ].
		self assert: result <= 100 description: [ 'Rolled value ', result asString, ' should be 100 or less.' ] ].
	1000 timesRepeat: [
		result := random roll: 'd%'.
		self assert: result >= 1 description: [ 'Rolled value ', result asString, ' should be 1 or more.' ].
		self assert: result <= 100 description: [ 'Rolled value ', result asString, ' should be 100 or less.' ] ].
	
	"Roll multiple dice"
	100 timesRepeat: [
		result := random roll: '2d2'.
		self assert: result >= 2 description: [ 'Rolled value ', result asString, ' should be 2 or more.' ].
		self assert: result <= 4 description: [ 'Rolled value ', result asString, ' should be 4 or less.' ] ].
	100 timesRepeat: [
		result := random roll: '1d2+1d2'.
		self assert: result >= 2 description: [ 'Rolled value ', result asString, ' should be 2 or more.' ].
		self assert: result <= 4 description: [ 'Rolled value ', result asString, ' should be 4 or less.' ] ].
	
	"Roll some d1s"
	result := random roll: '10d1'.
	self assert: result = 10 description: [ 'Rolled value ', result asString, 'should be 10.' ].
	result := random roll: '10d1-5d1'.
	self assert: result = 5 description: [ 'Rolled value ', result asString, 'should be 5.' ].
	
	"Roll a constant value"
	result := random roll: '5'.
	self assert: result = 5 description: [ 'Rolled value ', result asString, 'should be 5.' ].
	result := random roll: '5+3+2'.
	self assert: result = 10 description: [ 'Rolled value ', result asString, 'should be 10.' ].
	
	"Roll die and add constant value"
	result := random roll: '1d1+3'.
	self assert: result = 4 description: [ 'Rolled value ', result asString, 'should be 4.' ].