accessing
translateRange: anInterval
	| translated passthrough oldPassthrough parts |
	translated := OrderedCollection new.
	passthrough := OrderedCollection with: anInterval.

	ranges do: [:range |
		oldPassthrough := passthrough.
		passthrough := OrderedCollection new.
		oldPassthrough do: [:interval |
			parts := range translateRange: interval.
			parts first isEmpty ifFalse: [translated add: parts first].
			parts second do: [:each |
				each isEmpty ifFalse: [passthrough add: each]]]].

	^ translated, passthrough