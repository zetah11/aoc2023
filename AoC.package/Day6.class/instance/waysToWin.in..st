accessing
waysToWin: distance in: time
	| winners  |
	winners := 0.
	0 to: time do: [:hold |
		((hold * (time - hold)) > distance) ifTrue: [
			winners := winners + 1]].
	^ winners