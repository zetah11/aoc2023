tests - instance creation
testInstanciationUsingOn
	"self debug: #testInstanciationUsingOn"
	| stream |
	stream := WriteStream on: #(1 2) copy.
	stream nextPut: 3.
	self assert: stream contents = #(3)