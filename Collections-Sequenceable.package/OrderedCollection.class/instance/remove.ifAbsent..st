removing
remove: oldObject ifAbsent: absentBlock

	firstIndex to: lastIndex do: [ :index |
		(array at: index) = oldObject ifTrue: [
			self removeIndex: index.
			^oldObject ] ].
	^absentBlock value