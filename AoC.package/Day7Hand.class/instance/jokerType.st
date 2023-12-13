accessing
jokerType
	^ jokerType
		ifNil: [jokerType := (self alternatives collect: [:each | each type]) max]
		ifNotNil: [:type | type]