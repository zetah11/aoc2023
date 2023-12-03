accessing
stars
	^ symbols
		select: [:each | each value = $*]
		thenCollect: [:each | each key]