tests - basic
testAtIfPresentIfAbsentPut
	"Test at:ifPresent:ifAbsentPut:"
	| dict present absent |
	dict := Dictionary new.
	present := absent := false.
	self assert: (dict at: #foo ifPresent:[:v| present := true. v] ifAbsentPut:[absent := true. #present])
		equals: #present.
	self deny: present.
	self assert: absent.

	present := absent := false.
	self assert: (dict at: #foo ifPresent:[:v| present := true. v] ifAbsentPut:[absent := true. #absent])
		equals: #present.
	self assert: present.
	self deny: absent.