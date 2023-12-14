accessing
loop
	"Find the loop in the pipes"
	| dfs |
	dfs := [:x :y :node |
		| next |
		(next := node follow: x and: y)
			ifNotNil: [
				(next = start)
					ifTrue: [{}]
					ifFalse: [(dfs value: node x value: node y value: (pipes at: next))
						copyWithFirst: next]]].
	{ {0. -1}. {1. 0}. {0. 1}. {-1. 0} } do: [:each |
		| result at |
		at := { start first + each first. start second + each second }.
		(pipes includesKey: at) ifTrue: [
			result := dfs value: start first value: start second value: (pipes at: at).
			result ifNotNil: [^ result copyWithFirst: at]]].