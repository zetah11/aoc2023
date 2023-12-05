enumerating
collect: aBlock
	"Evaluate aBlock with each of the receiver's elements as the argument.  
	Collect the resulting values into a collection like the receiver. Answer  
	the new collection.
	Implementation notes: see do: for an explanation on loop detail"
	| result |
	result := self species new: self size.
	1 to: result size do:
		[:i |
		"(self at: i) is inlined here to avoid repeated bound checking"
		result at: i put: (aBlock value: i - 1 * step + start)].
	^ result