enumerating
replace: aBlock
	"Destructively replace the values in this Dictionary by applying aBlock, keeping the same keys.
	Implementation note: subclasses not storing the key-value pairs as a list of Associations shall refine this method."
	tally = 0 ifTrue: [ ^self].
	1 to: array size do: [ :index |
		(array at: index) ifNotNil: [ :element |
			element value: (aBlock value: element value) ] ]