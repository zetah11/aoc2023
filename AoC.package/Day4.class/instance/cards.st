accessing
cards
	^ lines collect: [:each | parser parse: each]