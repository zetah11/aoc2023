private
errorNotEnoughElements

	^ self error: ('Attempt to remove more elements than possible from {1}' translated format: {self name})