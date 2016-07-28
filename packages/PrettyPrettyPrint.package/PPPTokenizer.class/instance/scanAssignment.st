scanning
scanAssignment 
	
	| token |
	
	token := PPPToken new
		position: indexCount;
		tokenType: #assignment;
		content: ':=';
		yourself.
		
	2 timesRepeat: [ self step ].
	
	^self flushToken: token