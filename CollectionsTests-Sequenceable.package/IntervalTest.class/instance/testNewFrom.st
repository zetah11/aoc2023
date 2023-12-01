tests
testNewFrom

	 self assert: (1 to: 1) equals: (Interval newFrom: (1 to: 1)).
	 self assert: (1 to: 1) equals:  (Interval newFrom: #(1)).
	 self assert: ( 1 to: 0) equals: (Interval newFrom: #()).
