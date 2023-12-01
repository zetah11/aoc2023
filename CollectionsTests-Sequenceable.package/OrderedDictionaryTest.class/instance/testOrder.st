tests
testOrder
	"We use integers as keys to match hash values."

	| dict |
	dict := Dictionary new.

	1 to: 10 do: [:ea |
		dict at: ea put: nil.
		sut at: ea put: nil].

	self assert: dict keys = sut keys.

	dict removeKey: 5.
	sut removeKey: 5.

	self assert: dict keys = sut keys.

	dict at: 5 put: nil.
	sut at: 5 put: nil.

	self
		assert: dict keys ~= sut keys;
		assert: #(1 2 3 4 6 7 8 9 10 5) equals: sut keys;
		assert: #(1 2 3 4 5 6 7 8 9 10) equals: dict keys.