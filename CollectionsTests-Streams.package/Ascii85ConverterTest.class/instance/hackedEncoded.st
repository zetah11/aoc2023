accessing
hackedEncoded

	^ String streamContents: 
		[:out | | in |
		in := self encoded readStream.
		out
			nextPutAll: (in next: 5);
			cr;
			nextPutAll: (in next: 4);
			space;
			nextPutAll: in upToEnd]
