tests - collection protocol
testCollect
	"Ensure that Dictionary>>collect: answers a dictionary not something else"
	| dict expected result |
	dict := Dictionary newFromPairs:{
		#first.		1.
		#second.	2.
		#third.		3.
		#fourth.	4.
		#fifth.		5.
	}.
	result := dict collect:[:each| each asWords].
	expected := Dictionary newFromPairs:{
		#first.		'one'.
		#second.	'two'.
		#third.		'three'.
		#fourth.	'four'.
		#fifth.		'five'.
	}.
	self assert: result = expected.