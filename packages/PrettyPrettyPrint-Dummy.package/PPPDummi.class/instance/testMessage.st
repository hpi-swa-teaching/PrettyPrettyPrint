as yet unclassified
testMessage
	
	| ab cd |
	
	"<PrettyPrint: 'ignore' option: 'True'>"
	ab := #( 1 2 3 5 ).
	cd := { 'hi' . [ :var1 :var2 | 'ho' ] }.
	1 = 1 ifTrue: [ ^'hi' ] ifFalse: [  ].
	Transcript
		showln: 'hi';
		showln: 'hi';
		showln: 'hi';
		showln: 'hi'.
	
	^self