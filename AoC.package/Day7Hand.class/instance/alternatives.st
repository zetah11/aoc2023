converting
alternatives
	^ (self cards collect: [:each | each alternatives]) product
		collect: [:cards | self species withCards: cards bid: self bid]