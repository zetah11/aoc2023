accessing
translateSeedRanges
	| seeds maps ranges |
	seeds := OrderedCollection newFrom: (self seedRanges).
	maps := self maps.
	maps do: [:map |
		ranges := seeds.
		seeds := Set new.
		ranges do: [:range |
			seeds addAll: (map translateRange: range)]].

	^ seeds asArray