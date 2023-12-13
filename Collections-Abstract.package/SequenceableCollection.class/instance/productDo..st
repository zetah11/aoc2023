converting
productDo: aBlock
	"Treat each element in this collection as a 'set' of elements at that index. For every
	combination of elements, invoke aBlock with the corresponding sequence."
	self isEmpty
		ifTrue: [aBlock value: self]
		ifFalse: [self first do: [:each |
				self allButFirst productDo: [:rest |
					aBlock value: (rest copyWithFirst: each)]]].