accessing
games
	^ lines collect: [:each | parser parse: each]