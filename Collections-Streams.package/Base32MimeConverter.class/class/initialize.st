class initialization
initialize

	FromCharTable := Array new: 256.	"nils"
	ToCharTable := ($A to: $Z) , ($2 to: $7) , '='.
	ToCharTable keysAndValuesDo: [:ind :char |
		FromCharTable at: char asciiValue + 1 put: ind - 1].