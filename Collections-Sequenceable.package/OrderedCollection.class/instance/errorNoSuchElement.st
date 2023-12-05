private
errorNoSuchElement

	^ self error: ('Attempt to index a non-existent element in {1}' translated format: {self name})