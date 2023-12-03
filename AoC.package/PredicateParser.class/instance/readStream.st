enumerating
readStream
	^ Character allCharacters readStream
		select: [:character | predicate value: character]
		thenCollect: [:character | character asString]