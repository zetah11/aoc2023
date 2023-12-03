convenience
mimeDecode: aCollectionOrStream

	^ String streamContents: [:out |
		self mimeDecode: aCollectionOrStream to: out]