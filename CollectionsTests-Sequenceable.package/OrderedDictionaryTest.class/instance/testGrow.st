tests
testGrow

	self
		assert: 11 equals: sut array size; "next prime number to 7; see #setUp"
		assert: sut capacity = (sut instVarNamed: #order) size;
		assert: sut array size >(sut instVarNamed: #order) size. "save memory"

	1 to: sut array size do: [:ea |
		sut at: ea put: nil].

	self
		assert: sut array size > 11;
		assert: sut capacity = (sut instVarNamed: #order) size;
		assert: sut array size > (sut instVarNamed: #order) size. "save memory"