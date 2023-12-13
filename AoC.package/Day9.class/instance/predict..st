accessing
predict: aHistory
	^ self predict: aHistory at: #last doing: [:a :b | a + b]