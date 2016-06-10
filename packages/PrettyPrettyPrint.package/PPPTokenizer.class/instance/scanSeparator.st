as yet unclassified
scanSeparator 

	| token |
	
	token := PPPToken new.
	token position: indexCount.
	
	token content: currentCharacter.
	self step.
	
	^token
		tokenType: #separator;
		yourself
	