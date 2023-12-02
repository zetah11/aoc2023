tests - keys and value
testKeyAtValue
	"self run: #testKeyAtValue"
	"self debug: #testKeyAtValue"
	
	| dict |
	dict := Dictionary new.
	dict at: #a put: 1.
	dict at: #b put: 2.
	dict at: #c put: 1.
	
	self assert: (dict keyAtValue: 2) = #b.
	"which ever is answered depends on hashing, and hashing is improved in Spur."
	self assert: ((dict keyAtValue: 1) = #a or: [(dict keyAtValue: 1) = #c]).
	"ugly may be a bug, why not have a set #a and #c?  cuz that would be keys at value."
	
	self should: [dict keyAtValue: 0] raise: Error
	
	
