accessing
defaultBase: anInteger

	self assert: anInteger < 28 description: 'Default base must be lower than 28 to keep radix r distinguishable from digits. For higher bases, pass the base manually to #nextNumberBase: autc.'.
	defaultBase := anInteger