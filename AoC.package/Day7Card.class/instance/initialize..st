initialize-release
initialize: aCharacter
	value := self species labels indexOf: aCharacter.
	(value = 0) ifTrue: [^ nil].