tests - basic
testAtError
	"self run: #testAtError"
	
	| dict |
	dict := Dictionary new.
	dict at: #a put: 666.
	self shouldnt: [ dict at: #a ] raise: KeyNotFound.
	self should: [ dict at: #b ] raise: KeyNotFound.
	
	