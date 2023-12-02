parsing
eat: aSource
	"Consume some prefix of aSource, returning a parse result with either
	the remainder and some value or a failure"
	self subclassResponsibility