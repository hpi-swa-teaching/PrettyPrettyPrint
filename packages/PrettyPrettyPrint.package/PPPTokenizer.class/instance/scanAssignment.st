as yet unclassified
scanAssignment 
	
	| token |
	
	token := PPPToken new.
	token position: indexCount.
	2 timesRepeat: [ self step ].
	
	^token
		content: ':=';
		tokenType: #assignment;
		yourself