accessing
marginOfError
	^ (self distances with: self times collect: [:distance :time |
		self waysToWin: distance in: time])
	inject: 1 into: [:a :b | a * b]