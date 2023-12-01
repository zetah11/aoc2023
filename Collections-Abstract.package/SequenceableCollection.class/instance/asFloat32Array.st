converting
asFloat32Array
	"Answer a Float32Array whose elements are the elements of the receiver, in 
	the same order."

	| floatArray |
	floatArray := Float32Array new: self size.
	1 to: self size do:[:i| floatArray at: i put: (self at: i) asFloat ].
	^floatArray