tests - basic
testArraySizeOfNew
	"Test the special cases implemented in HashedCollection class >> #new and #new: using Dictionary as an example because HashedCollection is abstract."
	
	| goodPrimes |
	goodPrimes := HashedCollection goodPrimes.
	self assert: (goodPrimes includes: Dictionary new array size).
	0 to: 100 do: [ :size |
		| dictionary |
		dictionary := Dictionary new: size.
		self assert: (goodPrimes includes: dictionary array size).
		self assert: dictionary capacity >= size ]