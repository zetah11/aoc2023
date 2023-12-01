private
growTo: anInteger
	"Reallocate the elements array with the given size and reinsert the old elements. Do it even if the size of the array is the same as the argument because this method is also used to rehash the collection."

	| oldElements |
	oldElements := array.
	array := self arrayType new: anInteger.
	self noCheckNoGrowFillFrom: oldElements