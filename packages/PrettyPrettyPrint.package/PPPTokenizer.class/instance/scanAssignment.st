scanning
scanAssignment
	
	| token |
	
	token := PPPToken new
		position: self indexCount;
		tokenType: #assignment;
		content: ':=';
		yourself.
	
	2 timesRepeat: [ self step ].
	
	^ token