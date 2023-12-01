tests
testCompact
	"Eager compacting on removal."

	1 to: 3 do: [:ea | sut at: ea put: nil].
	sut removeKey: 2.
	self assert: 2 equals: ((sut instVarNamed: #order) count: [:ea | ea notNil]).