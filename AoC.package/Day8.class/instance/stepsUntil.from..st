accessing
stepsUntil: aBlock from: aNode
	"Answer the number of steps until aBlock answers true for the current node"
	| steps node |
	steps := 0.
	node := aNode.
	directions repeatedlyDo: [:each |
		node := (map at: node) perform: each.
		steps := steps + 1.
		(aBlock value: node) ifTrue: [^ steps]]