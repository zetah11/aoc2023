accessing
digits
	"Answer an array of every digit on every line on the receiver"
	^ lines collect: [:each |
		(each select: [:character | character isDigit])
			asArray
			collect: [:character | character digitValue]]