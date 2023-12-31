accessing
basicAt: index
	"Primitive. Assumes receiver is indexable. Answer the value of an 
	indexable element in the receiver. Fail if the argument index is not an 
	Integer or is out of bounds. Essential. Do not override in a subclass. See 
	Object documentation whatIsAPrimitive.

	This version of basicAt: is specifically for floats, answering the most significant
	word for index 1 and the least significant word for index 2.  This allows the VM
	to store floats in whatever order it chooses while it appears to the image that
	they are always in big-endian/PowerPC order."

	<primitive: 38 error: ec>
	ec ifNil: "primitive not implemented; floats are in big-endian/PowerPC order."
		[^super basicAt: index].
	index isInteger ifTrue: [self errorSubscriptBounds: index].
	index isNumber
		ifTrue: [^self basicAt: index asInteger]
		ifFalse: [self errorNonIntegerIndex]