instance creation
withId: aNumber andDraws: aCollection
	| game |
	game := self new.
	game id: aNumber.
	game draws: aCollection.
	^ game