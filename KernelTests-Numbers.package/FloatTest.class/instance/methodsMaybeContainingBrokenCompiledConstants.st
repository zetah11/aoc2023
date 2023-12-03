private
methodsMaybeContainingBrokenCompiledConstants
	"Answer a set of all methods in the system which contain float constants that differ from those obtaiuned by
	 recompiling. These may indicate an old compiler issue, or indeed an issue with the current compiler. This is a
	 variant of testCompiledConstants used for collecting the set of methods rather than testing that none exist."
	| identifiedPatients |
	identifiedPatients := IdentitySet new.
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
				newLiterals size = oldLiterals size
					ifFalse: [identifiedPatients add: method]
					ifTrue:
						[newLiterals with: oldLiterals do:
							[:new :old|
							(new asIEEE64BitWord = old asIEEE64BitWord
							 or: [new isNaN and: old isNaN]) ifFalse:
								[identifiedPatients add: method]]]]]].
	^identifiedPatients