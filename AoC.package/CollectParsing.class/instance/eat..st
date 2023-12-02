parsing
eat: aSource
	^ (parser eat: aSource) collect: block