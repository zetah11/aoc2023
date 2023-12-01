copying
copyWithoutDuplicates
	"Answer a copy of the receiver that preserves order, if any, but eliminates any duplicates."

	| seen |
	seen := Set new: self size.
	^ self select: [:each | seen ifAbsentAdd: each]