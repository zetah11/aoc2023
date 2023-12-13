accessing
predictionsBefore
	^ histories collect: [:each | self predictBefore: each]