private
initialize: n
	"Initialize array to an array size of n"
	array := self arrayType new: n.
	tally := 0