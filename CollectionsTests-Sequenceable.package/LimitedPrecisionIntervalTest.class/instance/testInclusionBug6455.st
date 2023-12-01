tests
testInclusionBug6455
	"This test is about mantis bug http://bugs.squeak.org/view.php?id=6455.
	Well it's not a bug, and not a good feature.
	See testSurprisingFuzzyInclusion for why this feature is not a good idea"
	
	self deny: ((0.2 to: 0.6 by: 0.1) includes: 0.3) description: 'Strict Float equality expecation is too high'.
	self assert: ((0.2 to: 0.6 by: 0.1) includes: 0.3 successor) description: 'it includes a slightly different number'