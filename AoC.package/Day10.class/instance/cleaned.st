accessing
cleaned
	"Answer an array of lines with only the pipes which are in the loop"
	| loop loopCoords |
	loop := self loop.
	loopCoords := Set newFrom: loop.
	^ lines withIndexCollect: [:line :y |
		line asArray withIndexCollect: [:c :x |
			(loopCoords includes: {x. y })
				ifTrue: [pipes at: {x. y }]
				ifFalse: [
					({ x. y } = start) ifTrue: [Day10Pipe withShape: (self startPipeIn: loop) at: x and: y]]]]