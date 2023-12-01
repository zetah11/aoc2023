initialize-release
rehashAllInstances
	"Do not use #allInstancesDo: because #rehash may create new instances. Ignore immutable instances."

	self allInstances do: [ :each | 
		each isReadOnlyObject ifFalse: [
			each rehash ] ]