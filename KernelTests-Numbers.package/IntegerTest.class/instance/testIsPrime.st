tests - basic
testIsPrime

	| i |
	"Not primes:"
	#(-1000000000000000 -100 -5 -3 -2 -1 0 1) do: [ :each |
		self deny: each isPrime ].

	"Check all non-negative integers up to one million."
	i := 0.
	Integer primesUpTo: 1000000 do: [ :prime |
		[ i < prime ] whileTrue: [
			self deny: i isPrime.
			i := i + 1 ].
		self assert: i isPrime.
		i := i + 1 ].
	[ i <= 1000000 ] whileTrue: [
		self deny: i isPrime.
		i := i + 1 ].

	"The following tests should return 'true'"
	#(17 78901 104729 15485863 2038074743) do: [ :each |
		self assert: each isPrime ].
	
	"The following tests should return 'false' (first 5 are Carmichael numbers)"
	#(561 2821 6601 10585 15841 256 29996224275831) do: [ :each |
		self deny: each isPrime ].
	