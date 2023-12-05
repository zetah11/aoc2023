instance creation
new: anInteger withAll: anObject
	| instance |
	^(instance := self basicNew) setContents: (instance arrayType new: anInteger withAll: anObject)