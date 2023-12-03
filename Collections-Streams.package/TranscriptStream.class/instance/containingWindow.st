model protocol
containingWindow

	^ self dependents detect:
		[:d | d isWindowForModel: self] ifNone: [nil]