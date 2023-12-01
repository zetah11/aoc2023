accessing
calibrationValuesWithWords
	"Like calibrationValues, but takes into account digit words as well"
	^ self digitsAndDigitWords collect: [:digits | (10 * digits first) + digits last]