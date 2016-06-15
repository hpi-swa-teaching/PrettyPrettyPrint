as yet unclassified
scanSeparator 

	| token |
	
	token := PPPToken new
		position: indexCount;
		content: currentCharacter;
		tokenType: #separator;
		yourself.
		
	self step.
	
	^token