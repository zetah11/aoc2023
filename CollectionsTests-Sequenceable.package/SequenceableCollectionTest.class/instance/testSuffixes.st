tests - copying
testSuffixes
	self
		assert: #(1 2 3 4) suffixes equals: #((1 2 3 4) (2 3 4) (3 4) (4));
		assert: 'abcde' suffixes equals: #('abcde' 'bcde' 'cde' 'de' 'e').