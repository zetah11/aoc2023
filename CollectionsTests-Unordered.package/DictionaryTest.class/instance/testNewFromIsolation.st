tests - basic
testNewFromIsolation
	"self run:#testNewFromIsolation"
	"self debug:#testNewFromIsolation"
	
	| dict1 dict2 |
	dict1 := Dictionary new.
	dict1 at: #one put: 'foo'; at: #two put: 0@0.
	dict2 := Dictionary newFrom: dict1.
	dict2 at: #one put: 'bar'.

	self assert: (dict1 at: #one) = 'foo'.
