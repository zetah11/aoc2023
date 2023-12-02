controlling
ifOk: okBlock ifFailed: failBlock
	"Return okBlock evaluated against the result value and remainder if
	this is a successful parse result, or failblock evaluated against the error
	if this is a failed parse result"
	self subclassResponsibility