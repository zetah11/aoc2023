enumerating
replace: aBlock
	"Like super, but iterate in order."

	order from: 1 to: tally do: [:each | each value: (aBlock value: each value)]