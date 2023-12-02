tests - collection protocol
testCollectAs

	| classes collection dictionary |
	classes := {Array . OrderedCollection . Set . Bag}.
	classes do: [:originClass |
			collection := originClass with: 1 with: 2 with: 3.
			dictionary := collection collect: [:v | v -> (v + 1)] as: Dictionary.
			self 
				assert: collection size equals: dictionary size;
				assert: (dictionary associations includesAllOf: { 1 -> 2 . 2 -> 3. 3 -> 4})]