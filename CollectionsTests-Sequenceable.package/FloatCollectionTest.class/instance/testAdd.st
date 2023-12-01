tests
testAdd
	| fc |
	fc := #(1 2 3 4 ) as: FloatCollection.
	fc add: 88.
	self assert: #(1.0 2.0 3.0 4.0 88.0 ) asFloat32Array equals: fc asFloat32Array.
	fc add: 99.
	self assert: (#(1 2 3 4 88 99 ) as: FloatCollection) equals: fc