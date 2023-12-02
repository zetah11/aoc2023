tests
testWeakSetWithNil
	| set |
	self runSetWithNilTestOf: [WeakSet new].
	"Ensure that GCed entries don't count"
	set := WeakSet with: Object new.
	Smalltalk garbageCollect.
	set do:[:x| self assert: false]. 	"test for de facto emptyness"
	self deny: (set includes: nil).
	set add: nil.
	self assert: (set includes: nil).
	set remove: nil.
	self deny: (set includes: nil).