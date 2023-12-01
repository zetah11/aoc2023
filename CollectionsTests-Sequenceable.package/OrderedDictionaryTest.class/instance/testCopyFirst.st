tests - accessing
testCopyFirst

	1 to: 10 do: [:ea |
		sut at: ea put: nil].

	self assert: (1 to: 5) asArray equals: (sut first: 5) keys.