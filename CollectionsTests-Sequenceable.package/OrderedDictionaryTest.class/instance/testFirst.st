tests - accessing
testFirst

	1 to: 10 do: [:ea |
		sut at: ea put: nil].

	#(first second third fourth fifth sixth seventh eighth ninth) withIndexDo: [:selector :index |
		self assert: index equals: (sut perform: selector) key].