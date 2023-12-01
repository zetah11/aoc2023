tests - testing
testEndsWith
	"We can't test SequenceableCollection directly. However, we can test a sampling of its descendants."

	| la oc suffix |
	la := #(1 2 3 4 5 6).
	oc := OrderedCollection new.
	oc add: 4; add: 5; add: 6.
	
	self assert: (la endsWith: #(6)).
	self deny: (la endsWith: #(5)).
	self assert: (la endsWith: #(5 6)).
	self deny: (la endsWith: #(5 5)).
	self deny: (la endsWith: #(6 6 )).
	self assert: (la endsWith: #(4 5 6)).
	self deny: (la endsWith: #(5 5 6)).
	self assert: (la endsWith: oc).
	self assert: (la endsWith: #()).
	self assert: (la endsWith: '').
	
	suffix := OrderedCollection new.
	self assert: (oc endsWith: suffix).
	suffix add: 6.
	self assert: (oc endsWith: suffix).
	suffix addFirst: 5.
	self assert: (oc endsWith: suffix).
	suffix addFirst: 4.
	self assert: (oc endsWith: suffix).
	suffix addFirst: 3.
	self deny: (oc endsWith: suffix).