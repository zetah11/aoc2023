collections - accessing
take: maxNumberOfElements
	"See Collection protocol."

	| aCollection |
	aCollection := OrderedCollection new.
	maxNumberOfElements timesRepeat: [
		self atEnd ifTrue: [^ aCollection].
		aCollection addLast: self next].
	^ aCollection