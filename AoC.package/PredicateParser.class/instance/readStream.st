enumerating
readStream
	^ Character allCharacters readStream
		select: [:character | predicate cull: character]
		thenCollect: [:character | character asString]