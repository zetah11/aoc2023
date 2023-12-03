enumerating
readStream
	^ Stream interleaving: (alternatives collect: [:each | each readStream])