tests - mathematical functions
testSqrtRem

	#(
		0 1 2 3 4 5 10 16 30 160479924 386234481 501619156 524723498 580855366 766098594 834165249 1020363860 1042083924 1049218924
		1459774772895569 3050005981408238 4856589481837079 5650488387708463 7831037396100244) do: [ :each |
			| sr |
			sr := each sqrtRem.
			self assert: sr first squared <= each.
			self assert: (sr first+1) squared > each.
			self assert: sr first squared + sr last = each]
		