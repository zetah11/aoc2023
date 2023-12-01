tests
testEqualsWithArray
	"Intervals are not considered equal to Array, even if they share the same sequence of elements."
	self deny: (3 to: 5) = #(3 4 5).
	self deny: #(3 4 5) = (3 to: 5).