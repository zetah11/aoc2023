accessing
predictBefore: aHistory
	^ self predict: aHistory at: #first doing: [:a :b | a - b]