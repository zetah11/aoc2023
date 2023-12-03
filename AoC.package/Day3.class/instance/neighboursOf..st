points
neighboursOf: point
	| xs ys |
	xs := { (point x - 1) max: 1. point x. (point x + 1) min: (width) }.
	ys := { (point y - 1) max: 1. point y. (point y + 1) min: (height) }.
	^ Set newFrom: (xs pairedWith: ys using: [:x :y | x@y])