tests - mathematical functions
testSqrtNearExactTie
	| p q evenTie oddTie perfectSquare inexactSquare |
	"first construct square root results that lie exactly between 2 consecutive Float"
	p := Float precision.
	q := Float precision // 4.
	evenTie := 1 << q + 1 << q + 1 << (p - q - q) + 1.
	self assert: p + 1 = evenTie highBit.
	self assert: evenTie asFloat significandAsInteger even. "evenTie round down to even"
	self assert: evenTie asFloat ulp asFraction / 2 + evenTie asFloat asFraction = evenTie.
	oddTie := 1 << q + 1 << q + 1 << (p - q - q) + 2r11.
	self assert: p + 1 = oddTie highBit.
	self assert: oddTie asFloat significandAsInteger even. "oddTie round up to even"
	self assert: oddTie asFloat ulp asFraction / -2 + oddTie asFloat asFraction = oddTie.
	
	"then assert that we can retrieve the exact root"
	perfectSquare := evenTie squared.
	self assert: perfectSquare sqrt classAndValueEquals: evenTie.
	
	"now take an inexact square by excess : it falls above exact tie, and should round up"
	inexactSquare := evenTie squared + 1.
	self deny: inexactSquare mightBeASquare.
	self assert: inexactSquare sqrt classAndValueEquals: evenTie asFloat successor.
	"same with one possibly exact square so that we take both paths"
	inexactSquare := evenTie squared + 3.
	self assert: inexactSquare mightBeASquare.
	self assert: inexactSquare sqrt classAndValueEquals: evenTie asFloat successor.
	"same with less bits and a possibly exact square so that we explore yet another path"
	inexactSquare := evenTie squared + 3 // 4.
	self assert: inexactSquare * 4 equals: evenTie squared + 3.
	self assert: inexactSquare mightBeASquare.
	self assert: inexactSquare sqrt classAndValueEquals: (evenTie asFloat successor / 2).
	"same with very very far bit to solve the tie"
	inexactSquare := evenTie squared << 100 + 2.
	self deny: inexactSquare mightBeASquare.
	self assert: inexactSquare sqrt classAndValueEquals: (evenTie asFloat successor timesTwoPower: 50).
	
	"Redo the same with odd tie, just to be sure"
	perfectSquare := oddTie squared.
	self assert: perfectSquare sqrt classAndValueEquals: oddTie.
	
	"now take an inexact square by default : it falls below exact tie, and should round down"
	inexactSquare := oddTie squared - 1.
	self deny: inexactSquare mightBeASquare.
	self assert: inexactSquare sqrt classAndValueEquals: oddTie asFloat predecessor.
	"same for not possibly exact case"
	inexactSquare := oddTie squared - 5.
	self assert: inexactSquare mightBeASquare.
	self assert: inexactSquare sqrt classAndValueEquals: oddTie asFloat predecessor.
	"same with less bits"
	inexactSquare := oddTie squared - 9 // 4.
	self assert: inexactSquare * 4 equals: oddTie squared - 9.
	self assert: inexactSquare mightBeASquare.
	self assert: inexactSquare sqrt classAndValueEquals: (oddTie asFloat predecessor / 2).
	"same with very very far bit to solve the tie"
	inexactSquare := oddTie squared << 100 - 2.
	self deny: inexactSquare mightBeASquare.
	self assert: inexactSquare sqrt classAndValueEquals: (oddTie asFloat predecessor timesTwoPower: 50).