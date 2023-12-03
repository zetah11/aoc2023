tests - positioning
testPositionOfSubCollection

	| stream |
	stream := self streamOn: 'xyz'.
	#(
		'' 1
		'q' 0
		'x' 1
		'y' 2
		'z' 3
		'xz' 0
		'xy' 1
		'yz' 2
		'xyz' 1) pairsDo: [ :pattern :expectedPosition |
			self
				assert: expectedPosition equals: (stream positionOfSubCollection: pattern);
				assert: 0 equals: stream position ]