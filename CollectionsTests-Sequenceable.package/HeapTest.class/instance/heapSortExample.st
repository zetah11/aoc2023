examples
heapSortExample
	"Sort a random collection of Floats and compare the results with #quicksort and #sort (using the merge-sort algorithm)."
	"HeapTest new heapSortExample"
	
	| arrayToSort n rnd array time |
	Smalltalk garbageCollectMost.
	n := 50000. "# of elements to sort"
	rnd := Random new.
	array := Array new: n.
	1 to: n do: [ :index | array at: index put: rnd next ].
	arrayToSort := array copy.
	"First, the heap version"
	self deny: arrayToSort isSorted.
	time := [ (Heap on: arrayToSort) sort ] timeToRun.
	self assert: arrayToSort isSorted.
	Transcript cr; show: 'Time for heap-sort: ', time printString,' msecs'.
	"The quicksort version"
	arrayToSort copyFrom: array.
	self deny: arrayToSort isSorted.
	time := [ arrayToSort quickSort ] timeToRun.
	self assert: arrayToSort isSorted.
	Transcript cr; show: 'Time for quick-sort: ', time printString,' msecs'.
	"The merge-sort version"
	arrayToSort copyFrom: array.
	self deny: arrayToSort isSorted.
	time := [ arrayToSort sort ] timeToRun.
	self assert: arrayToSort isSorted.	
	Transcript cr; show: 'Time for merge-sort: ', time printString,' msecs'