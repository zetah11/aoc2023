accessing
translateSeeds
	| maps |
	maps := self maps.
	^ self seeds collect: [:each |
		| seed |
		seed := each.
		maps do: [:map |	seed := map translate: seed].
		seed]