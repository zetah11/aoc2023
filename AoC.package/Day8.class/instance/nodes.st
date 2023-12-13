accessing
nodes
	| nodeParser map |
	nodeParser := self nodeParser.
	map := Dictionary new.
	(lines allButFirst: 2) do: [:each |
		| node |
		node := nodeParser parse: each.
		map at: node name put: node].
	^ map