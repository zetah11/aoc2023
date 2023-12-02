sorting
withKeysSorted: aSortBlockOrNil

	| sorted |
	sorted := OrderedDictionary new: self size.
	(self keys sorted: aSortBlockOrNil) do: [:key |
		sorted at: key put: (self at: key)].
	^ sorted