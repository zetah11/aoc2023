tests - collection protocol
testReject
	"Ensure that Dictionary>>reject: answers a dictionary not something else"
	| dict expected result |
	dict := Dictionary newFromPairs:{
		#first.		1.
		#second.	2.
		#third.		3.
		#fourth.	4.
		#fifth.		5.
	}.
	result := dict reject:[:each| each odd].
	expected := Dictionary newFromPairs:{
		#second.	2.
		#fourth.	4.
	}.
	self assert: result = expected.