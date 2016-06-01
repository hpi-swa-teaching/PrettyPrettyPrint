as yet unclassified
scanSeparator 

	| token |
	
	token := Token new.
	token position: indexCount.
	
	token content: currentCharacter.
	self step.
	
	^token
		tokenType: #separator;
		yourself
	