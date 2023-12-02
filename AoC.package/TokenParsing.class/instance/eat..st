parsing
eat: aSource
	| result remainder |
	result := skipper eat: aSource.
	remainder := result ifOk: [:ignored :suffix | suffix] ifFailed: [^ result].
	^ parser eat: remainder