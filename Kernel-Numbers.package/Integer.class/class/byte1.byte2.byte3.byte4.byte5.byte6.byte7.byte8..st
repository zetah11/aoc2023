instance creation
byte1: byte1 byte2: byte2 byte3: byte3 byte4: byte4 byte5: byte5 byte6: byte6 byte7: byte7 byte8: byte8
	"Depending on the size of SmallInteger maxVal and the high-order byte,
	 either copy directly into a LargeInteger, or build up a SmallInteger by shifting"
	| value |
	(SmallInteger maxVal > 1073741823
		ifTrue: [byte8 <= (SmallInteger maxVal digitAt: 8)]
		ifFalse: [byte5 + byte6 + byte7 = 0 and: [byte4 < 16r40]]) ifTrue:
			[^ (byte8 bitShift: 56)
			 + (byte7 bitShift: 48)
			 + (byte6 bitShift: 40)
			 + (byte5 bitShift: 32)
			 + (byte4 bitShift: 24)
			 + (byte3 bitShift: 16)
			 + (byte2 bitShift: 8)
			 + byte1].
	value := LargePositiveInteger new: 8.
	value digitAt: 8 put: byte8.
	value digitAt: 7 put: byte7.
	value digitAt: 6 put: byte6.
	value digitAt: 5 put: byte5.
	value digitAt: 4 put: byte4.
	value digitAt: 3 put: byte3.
	value digitAt: 2 put: byte2.
	value digitAt: 1 put: byte1.
	^value