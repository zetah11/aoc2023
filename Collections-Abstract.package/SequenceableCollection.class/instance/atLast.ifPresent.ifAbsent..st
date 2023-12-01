accessing
atLast: indexFromEnd ifPresent: elementBlock ifAbsent: exceptionBlock
	"Answer the value of elementBlock on the element at indexFromEnd from the last position. If the receiver does not contain an element at this position, answer the result of evaluating exceptionBlock."

	^ self
		at: self size + 1 - indexFromEnd
		ifPresent: elementBlock
		ifAbsent: exceptionBlock