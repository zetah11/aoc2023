tests - positioning
testStreamContentsPositioning
	"String class>>new:streamContents: optimizes performance by answering the
	originalCollection in the case of a stream positioned to the size of the original
	collection. Verify that the optimization is performed if and only if the result string
	is the original stream colllection. In particular, ensure that positioning the stream
	backwards to the original collection size prooduces the expected result."

	"(OrderedCollectionTest selector: #testStreamContentsPositioning) debug"

	| s s1 s2 |
	s := String new: 10 streamContents: [ :strm |
			strm nextPutAll: 'XXXXX'.
			self assert: 'XXXXX' equals: strm contents.
			strm nextPut: $X.
			self assert: 'XXXXXX' equals: strm contents.
			strm position: strm position - 1.
			self assert: 'XXXXX' equals: strm contents.
			strm nextPutAll: 'XXXXX'.
			self assert: 'XXXXXXXXXX' equals: strm contents.
			strm nextPut: $X.
			self assert: 'XXXXXXXXXXX' equals: strm contents.
			strm position: strm position - 1.
			self assert: 'XXXXXXXXXX' equals: strm contents.
		].
	self assert: 10 equals: s size.
	self assert: 'XXXXXXXXXX' equals: s.

	"Verify that the performance optimization in #new:streamContents: is happening"
	s2 := String new: s size streamContents: [ :strm |
		s1 := strm originalContents.
		strm nextPutAll: s ].
	self assert: s equals: s2.
	self assert: s equals: s1.
	self assert: s1 == s2. "answer the original collection in this case only"

	s2 := String new: s size - 1 streamContents: [ :strm |
		s1 := strm originalContents.
		strm nextPutAll: s ].
	self assert: s equals: s2.
	self deny: s1 == s2. "normal case, contents not matching original stream collection"

	s2 := String new: s size - 2 streamContents: [ :strm |
		s1 := strm originalContents.
		strm nextPutAll: s ].
	self assert: s equals: s2.
	self deny: s1 == s2. "normal case, contents not matching original stream collection"
	