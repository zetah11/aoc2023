accessing
possible
	"Get those games with possible draws"
	^ self games select: [:each | each isPossible: limit]