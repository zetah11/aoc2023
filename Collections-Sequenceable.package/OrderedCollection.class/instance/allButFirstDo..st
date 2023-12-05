enumerating
allButFirstDo: aBlock 
	"Override the superclass for performance reasons."

	firstIndex + 1 to: lastIndex do: [ :index |
		aBlock value: (array at: index) ]