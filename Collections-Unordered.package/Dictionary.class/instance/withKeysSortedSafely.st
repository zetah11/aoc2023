sorting
withKeysSortedSafely

	| sorted |
	sorted := OrderedDictionary new: self size.
	self keysSortedSafely do: [:key | sorted at: key put: (self at: key)].
	^ sorted