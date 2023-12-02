comparing
hasEqualElements: aDictionary
	"Answer whether my elements are the same as those of aDictionary."
	self size = aDictionary size ifFalse: [ ^ false ].
	self associationsDo:
		[ : association |
		(aDictionary
			at: association key
			ifAbsent: [ ^ false ]) = association value ifFalse: [ ^ false ] ].
	^ true