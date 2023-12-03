tests - enumerating
testFlatten2
	
	| stream |
	stream := (self streamOn: {3 .4 . self streamOn: {2 .4 .{'hi'} .'ho'} }) flatten.
	self assert: (stream next: 6) asArray = {3 .4 .2 .4 .'hi' .'ho'}.