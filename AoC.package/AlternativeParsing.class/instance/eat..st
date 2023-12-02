parsing
eat: aSource
	| result |
	alternatives do: [:each |
		result := each eat: aSource.
		result ifOk: [^ result]].
	^ result