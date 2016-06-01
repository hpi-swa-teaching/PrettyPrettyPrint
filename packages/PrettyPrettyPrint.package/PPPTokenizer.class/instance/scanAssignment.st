as yet unclassified
scanAssignment 
	
	| token |
	
	token := Token new.
	token position: indexCount.
	2 timesRepeat: [ self step ].
	
	^token
		content: ':=';
		tokenType: #assignment;
		yourself