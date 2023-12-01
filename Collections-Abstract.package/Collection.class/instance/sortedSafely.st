sorting
sortedSafely
	"A variation of #sorted that uses #compareSafely: instead of #<= to compare its elements. Thus, collections of arbitrary objects can be sorted, which usually involves an object's #printString. See implementors of #compareSafely:."
	
	^ self sorted: [:x :y | x compareSafely: y]