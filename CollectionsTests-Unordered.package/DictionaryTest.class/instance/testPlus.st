tests - collection protocol
testPlus
	| left right expected |
	left := Dictionary newFrom: { #first -> 1. #second -> 2. #third -> 3 }.
	right := Dictionary newFrom: { #second -> 4. #third -> 5. #fourth -> 6 }.
	expected := Dictionary newFrom: { #first -> 1. #second -> 6. #third -> 8. #fourth -> 6 }.
	self assert: (left + right) equals: expected.