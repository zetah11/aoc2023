copying
withoutDuplicates
	"Answer a variant of the receiver that has no duplicate elements. Might be the receiver itself if it already contains no duplicates. See subclass implementations. If you want to modify the result, use #copyWithoutDuplicates to make it explicit."

	^ self copyWithoutDuplicates