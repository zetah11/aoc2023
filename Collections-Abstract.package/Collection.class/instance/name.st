printing
name

	^ String streamContents: [:stream |
		self printNameOn: stream]