private
atNewIndex: index put: anObject

	tally := tally + 1. "Update tally first, so that read-only hashed collections raise an error before modifying array."
	array at: index put: anObject.
	"Keep array at least 1/4 free for decent hash behavior"
	array size * 3 < (tally * 4) ifTrue: [ self grow ]