math functions
pairedWith: aCollection using: aBlock
	"Produce a collection like the receiver of every pairing of the elements
	from the receiver with every element of aCollection. The pairs are
	combined using aBlock."
	| result |
	result := OrderedCollection new.
	self do: [:first |
		aCollection do: [:second |
			result add: (aBlock cull: first cull: second)]].
	^ result as: self species