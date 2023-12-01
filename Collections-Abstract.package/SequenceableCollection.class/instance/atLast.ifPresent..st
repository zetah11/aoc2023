accessing
atLast: indexFromEnd ifPresent: elementBlock

	^ self
		at: self size + 1 - indexFromEnd
		ifPresent: elementBlock
		ifAbsent: []