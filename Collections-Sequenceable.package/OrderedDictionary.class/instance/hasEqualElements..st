comparing
hasEqualElements: anOrderedDictionary
	"Answer whether my elements are the same as anOrderedDictionary, and in the same order."
	| index |
	self size = anOrderedDictionary size ifFalse: [ ^ false ].
	index := 0.
	self associationsDo:
		[ : eachMyAssociation |
		(anOrderedDictionary
			atIndex: (index:=index+1)
			ifAbsent: [ ^ false ]) = eachMyAssociation ifFalse: [ ^ false ] ].
	^ true