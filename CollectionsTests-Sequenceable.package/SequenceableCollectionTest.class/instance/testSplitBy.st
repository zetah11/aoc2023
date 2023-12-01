tests - converting
testSplitBy
	"Tests for  splitBy: and splitBy:do:"

	self assert: ('a/b' splitBy: '/') = #('a' 'b').
	self assert: ('a/b/' splitBy: '/') = #('a' 'b' '').
	self assert: ('/a/b/' splitBy: '/') = #('' 'a' 'b' '').
	self assert: ('///' splitBy: '/') = #('' '' '' '').
	self assert: ('/' splitBy: '/') = #('' '').
	self assert: ('a' splitBy: '/') = #('a').
	self assert: ('' splitBy: '/') = #('').

	self assert: ('a//b' splitBy: '//') = #('a' 'b').
	self assert: ('///' splitBy: '//') = #('' '/').

	self assert: ('Hello<p>World<p>' splitBy: '<p>') = #('Hello' 'World' '').
