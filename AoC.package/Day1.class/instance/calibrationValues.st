accessing
calibrationValues
	^ self digits collect: [:digits | (10 * digits first) + digits last]