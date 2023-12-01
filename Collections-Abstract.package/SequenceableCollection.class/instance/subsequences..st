converting
subsequences: separatorsOrElement
	"Answer an array containing the subsequences in the receiver separated 
	 by the elements of separatorsOrElement, if it is a Collection, or a
	 single separator object, if it is not."

	| result size thing subsequenceStart |
	result := OrderedCollection new.
	size := self size.
	separatorsOrElement isCollection
		ifTrue:
			[1 to: size do:
				[:i|
				thing := self at: i.
				(separatorsOrElement includes: thing)
					ifTrue:
						[subsequenceStart ifNotNil:
							[result addLast: (self copyFrom: subsequenceStart to: i - 1)].
						 subsequenceStart := nil]
					ifFalse:
						[subsequenceStart ifNil: [subsequenceStart := i]]]]
		ifFalse:
			[1 to: size do:
				[:i|
				thing := self at: i.
				separatorsOrElement = thing
					ifTrue:
						[subsequenceStart ifNotNil:
							[result addLast: (self copyFrom: subsequenceStart to: i - 1)].
						 subsequenceStart := nil]
					ifFalse:
						[subsequenceStart ifNil: [subsequenceStart := i]]]].
	subsequenceStart ifNotNil:
		[result addLast: (self copyFrom: subsequenceStart to: size)].
	^result asArray

	"'Now is the time for all good people to come to the aid of the cause of world peace.  It is just fine, even desirable, to love your country, if that means wanting it to play a beneficial role in the course of world events and be the best possible example of a good society.  But if it means wanting dominion over the rest of the world, it is not love but defensiveness or self-glorification, and will lead only to oblivion.' subStrings: Character space"

	"'Now is the time for all good people to come to the aid of the cause of world peace.  It is just fine, even desirable, to love your country, if that means wanting it to play a beneficial role in the course of world events and be the best possible example of a good society.  But if it means wanting dominion over the rest of the world, it is not love but defensiveness or self-glorification, and will lead only to oblivion.' subStrings: ' ,.-'"