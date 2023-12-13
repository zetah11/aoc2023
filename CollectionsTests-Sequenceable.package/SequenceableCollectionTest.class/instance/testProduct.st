tests - copying
testProduct
	self
		assert: {} product equals: {};
		assert: {{1}. {2}} product equals: {{1. 2}};
		assert: {{}. {2. 3. 4}} product equals: {};
		assert: {{1. 2. 3}. {}} product equals: {};
		assert: {{1. 2}. {3. 4}} product equals: {{1. 3}. {1. 4}. {2. 3}. {2. 4}};
		assert: {{1. 2}. {3. 4. 5}. {6}} product equals: {{1. 3. 6}. {1. 4. 6}. {1. 5. 6}. {2. 3. 6}. {2. 4. 6}. {2. 5. 6}}.