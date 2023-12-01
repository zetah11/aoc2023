initialize-release
compactAllInstances
	"Do not use #allInstancesDo: because #compact may create new instances. Ignore immutable instances."

	self allInstances do: [ :each |
		each isReadOnlyObject ifFalse: [ each compact ] ]