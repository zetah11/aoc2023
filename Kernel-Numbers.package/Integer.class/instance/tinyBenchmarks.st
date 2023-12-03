benchmarks
tinyBenchmarks
	"Report the results of running the two tiny Squeak benchmarks.
	ar 9/10/1999: Adjusted to run at least 1 sec to get more stable results"
	"0 tinyBenchmarks"

	| t1 t2 r n1 n2 pref |
	pref := Time useHighResClockForTiming.
	Time useHighResClockForTiming: false.
	n1 := 1.
	[t1 := Time millisecondsToRun: [n1 benchmark].
	t1 < 1000] whileTrue:[n1 := n1 * 2]. "Note: #benchmark's runtime is about O(n)"

	n2 := 28.
	[t2 := Time millisecondsToRun: [r := n2 benchFib].
	t2 < 1000] whileTrue:[n2 := n2 + 1]. 
	"Note: #benchFib's runtime is about O(k^n),
		where k is the golden number = (1 + 5 sqrt) / 2 = 1.618...."

	Time useHighResClockForTiming: pref.

	^ ((n1 * 500000 * 1000) // t1 significantDigits: 2) asStringWithCommas, ' bytecodes/sec; ',
	  ((r * 1000) // t2 significantDigits: 2) asStringWithCommas, ' sends/sec'
"
Known benchmark results:
	On a 292 MHz G3 Mac: 23,000,000 bytecodes/sec; 980,000 sends/sec
	On a 400 MHz PII/Win98:  18,000,000 bytecodes/sec; 1,100,000 sends/sec
	On a 2800 MHz i7:  1,200,000,000 bytecodes/sec; 25,000,000 sends/sec
	On a 2800 MHz i7 (CogVM):  1,700,000,000 bytecodes/sec; 260,000,000 sends/sec
	On a RaspberryPi 3B+ ARMv6 (CogVM, April 2018): 330,000,000 bytecodes/sec; 19,000,000 sends/sec
	On a RaspberryPi 4 ARMv8 (CogVM, May 2023): 750,000,000 bytecodes/sec; 53,000,000 sends/sec	
	On an Apple M1 (macMini 2020, CogVM 202112201228): 4,400,000,000 bytecodes/sec; 330,000,000 sends/sec
	On an Apple M1 x64/Rosetta (macMini 2020, CogVM 202112201228): 3,500,000,000 bytecodes/sec; 270,000,000 sends/sec	
	On a Core i7-1185G7 (Surface Pro 8, CogVM 202206021410): 3,800,000,000 bytecodes/sec; 290,000,000 sends/sec
"