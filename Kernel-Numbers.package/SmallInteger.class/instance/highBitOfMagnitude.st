bit manipulation
highBitOfMagnitude
	"Answer the index of the high order bit of the receiver, or zero if the  
	receiver is zero. This method is used for negative SmallIntegers as well,  
	since Squeak's LargeIntegers are sign/magnitude."
	
	<primitive: 575>
	self < 0 ifTrue: [^self negated highBit].
	^self highBitOfPositiveReceiver