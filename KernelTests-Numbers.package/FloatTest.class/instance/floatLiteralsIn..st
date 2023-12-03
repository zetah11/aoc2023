private
floatLiteralsIn: method
	| floatLiterals |
	floatLiterals := OrderedCollection new.
	method allLiteralsDo:
		[:lit| lit isFloat ifTrue: [floatLiterals addLast: lit]].
	^floatLiterals