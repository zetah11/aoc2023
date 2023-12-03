running
setUp
	exactInteger := 1 << (Float precision + 2).
	float := exactInteger asFloat.
	greaterInexactInt := exactInteger + 1.
	smallerInexactInt := exactInteger - 1.
	greaterFloat := float successor.
	smallerFloat := float predecessor.
	
	boxedFloat := Float new: 2.
	boxedFloat basicAt: 1 put: (float basicAt: 1).
	boxedFloat basicAt: 2 put: (float basicAt: 2).
	greaterBoxedFloat := Float new: 2.
	greaterBoxedFloat basicAt: 1 put: (greaterFloat basicAt: 1).
	greaterBoxedFloat basicAt: 2 put: (greaterFloat basicAt: 2).
	smallerBoxedFloat := Float new: 2.
	smallerBoxedFloat basicAt: 1 put: (smallerFloat basicAt: 1).
	smallerBoxedFloat basicAt: 2 put: (smallerFloat basicAt: 2).