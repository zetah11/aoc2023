accessing
distances
	| loop distances |
	loop := self loop.
	distances := (1 to: loop size by: 1) with: (loop size to: 1 by: -1) collect: [:a :b | a min: b].
	^ (loop with: distances collect: [:coordinates :distance | coordinates -> distance]) copyWithFirst: (start -> 0)