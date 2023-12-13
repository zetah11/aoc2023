accessing
jokerWinnings
	^ self jokerRanked withIndexCollect: [:each :index | each bid * index]