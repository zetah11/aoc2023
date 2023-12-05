enumerating
allButLastDo: aBlock 
	"Override the superclass for performance reasons."

	firstIndex to: lastIndex - 1 do: [ :index |
		aBlock value: (array at: index) ]