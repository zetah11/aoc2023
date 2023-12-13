accessing
type
	^ self species types findFirst: [:type | self cards counts = type]