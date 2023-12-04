accessing
copiesFrom
	"Answer the range of ids gotten as copies of the receiver"
	^ (self id + 1) to: (self id + self winnersPresent size)