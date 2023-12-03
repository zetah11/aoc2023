tests
testCompiledConstants
	"Test that any methods containing a floating point literal have been correctly compiled."
	CurrentReadOnlySourceFiles cacheDuring:
		[self systemNavigation allSelectorsAndMethodsDo:
			[:class :selector :method|
			(self methodContainsFloatLiteral: method) ifTrue:
				[| newMethodAndNode newLiterals oldLiterals |
				newMethodAndNode := class compile: method getSource asString notifying: nil trailer: CompiledMethodTrailer empty ifFail: nil.
				newLiterals := self floatLiteralsIn: newMethodAndNode method.
				oldLiterals  := self floatLiteralsIn: method.
				"Convenience doit for recompiling broken methods:..."
				"class recompile: selector"
				self assert: newLiterals size = oldLiterals size.
				newLiterals with: oldLiterals do:
					[:new :old|
					self assert: (new asIEEE64BitWord = old asIEEE64BitWord
								or: [new isNaN and: old isNaN])]]]]