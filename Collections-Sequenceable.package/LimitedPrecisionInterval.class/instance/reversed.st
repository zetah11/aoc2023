converting
reversed 
	"There is no guaranty that super reversed would contain same elements.
	Answer an Array instead"

	^Array new: self size streamContents: [:stream | self reverseDo: [:each | stream nextPut: each]]