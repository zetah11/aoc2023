tests
testAdd
	| floatInterval |
	floatInterval := (0.3 to: 0.6 by: 0.1).
	self deny: floatInterval size = (floatInterval + 1) size description: 'there is no guaranty that size is preserved by arithmetic operation'