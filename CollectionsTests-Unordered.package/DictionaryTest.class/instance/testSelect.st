tests - collection protocol
testSelect
	"Ensure that Dictionary>>select: answers a dictionary not something else"
	| dict expected result |
	dict := Dictionary newFromPairs:{
		#first.		1.
		#second.	2.
		#third.		3.
		#fourth.	4.
		#fifth.		5.
	}.
	result := dict select:[:each| each odd].
	expected := Dictionary newFromPairs:{
		#first.		1.
		#third.		3.
		#fifth.		5.
	}.
	self assert: result = expected.
	result at: #first put: 0.
	self assert: (dict at: #first) = 1 "No side effects"