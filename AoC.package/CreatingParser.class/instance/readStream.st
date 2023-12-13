enumerating
readStream
	^ Character allCharacters readStream
		select: [:character | block cull: character]
		thenCollect: [:character | character asString]