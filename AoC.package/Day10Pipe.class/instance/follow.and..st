converting
follow: xx and: yy
	"Follow the new coordinates when entering this pipe from xx and yy, or nil
	if it is not a valid set."
	| dx dy connected direction |
	dx := xx - x.
	dy := yy - y.
	connected := self connecting reject: [:each | each = { dx. dy }].
	(connected size = 1)
		ifTrue: [
			direction := connected first.
			^ { x + direction first. y + direction second }].
	^ nil