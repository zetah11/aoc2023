menu
addModelItemsToWindowMenu: aMenu 
	
	aMenu addLine.
	aMenu
		add: 'clear' translated
		target: self
		action: #clear.