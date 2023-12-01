private
compact
	"Reduce the size of array so that the load factor will be ~75%."
	
	| newArraySize |
	newArraySize := self class sizeFor: self slowSize.
	array size = newArraySize ifFalse: [
		self growTo: newArraySize  ]