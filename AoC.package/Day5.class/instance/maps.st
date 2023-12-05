accessing
maps
	| ranges maps block |
	ranges := OrderedCollection new.
	maps := OrderedCollection new.
	block := [:line |
		line isEmpty
			ifTrue: [ranges isEmpty ifFalse: [
				maps add: (Day5Map withRanges: ranges).
				ranges := OrderedCollection new]]
			ifFalse: [line first isDigit ifTrue: [
				ranges add: (rangeParser parse: line)]]].
	
	lines allButFirstDo: block.
	block value: ''.
	^ maps