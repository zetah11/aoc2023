testing
isPossible: limit
	"Returns true if the max of each color is less than what is given in limit"
	self max keysAndValuesDo: [:color :count |
		((limit at: color) >= count) ifFalse: [^ false]].
	^ true