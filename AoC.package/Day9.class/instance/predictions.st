accessing
predictions
	^ histories collect: [:each | self predict: each]