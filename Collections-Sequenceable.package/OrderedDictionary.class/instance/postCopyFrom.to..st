copying
postCopyFrom: startIndex to: endIndex
	"Adapted from SequenceableCollection and OrderedCollection."

	| oldOrder |	
	oldOrder := order.
	array := self arrayType
		new: (self class goodPrimeAtLeast: endIndex - startIndex + 1 * 4 // 3). "fill 75% to 100%"
	order := self arrayType
		new: array size + 1 * 3 // 4. "remove 25%"

	startIndex to: endIndex do: [:index | | element |
		element := (oldOrder at: index) copy.
		order at: index - startIndex + 1 put: element.
		array at: (self scanFor: element key) put: element].

	tally := endIndex - startIndex + 1