parsing
parse: aString atLine: aNumber
	"Add every symbol and number in aString with line number
	aLine to the symbols and numbers collections"
	| number pointSet x block |
	number := 0.
	pointSet := Set new.
	x := 1.
	block := [:character |
		character isDigit
			ifTrue: [
				number := (10 * number) + character digitValue.
				pointSet add: (x@aNumber)]
			ifFalse: [
				pointSet isEmpty ifFalse: [
					numbers add: (pointSet -> number)].
				pointSet := Set new.
				number := 0.
				(character = $.) ifFalse: [
					symbols add: ((x@aNumber)->character)]].
		x := x + 1].
	aString do: block.
	block value: $.