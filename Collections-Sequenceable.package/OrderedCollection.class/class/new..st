instance creation
new: anInteger 
	| instance |
	^(instance := self basicNew) setCollection: (instance arrayType new: anInteger)