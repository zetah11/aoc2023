accessing
at: index put: value 
	"Avoid primitive in Object>>at:put:"

	^self basicAt: index put: value