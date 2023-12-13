accessing
winnings
	^ self ranked withIndexCollect: [:each :index | each bid * index]