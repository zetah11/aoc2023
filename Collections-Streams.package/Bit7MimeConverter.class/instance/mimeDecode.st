conversion
mimeDecode

	dataStream nextPutAll: mimeStream upToEnd.
	^ dataStream