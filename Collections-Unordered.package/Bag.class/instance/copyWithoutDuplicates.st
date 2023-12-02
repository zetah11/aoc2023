copying
copyWithoutDuplicates
	"Overwritten for better performance. We already know about the unique items in the receiver."
	
	^ self species basicNew
		setContents: (contents collect: [:count | 1]);
		yourself