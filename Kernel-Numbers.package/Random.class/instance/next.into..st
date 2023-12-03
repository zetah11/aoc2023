accessing
next: anInteger into: anArray
	1 to: anInteger do:
		[:i |
		anArray at: i put: self next].
	^ anArray