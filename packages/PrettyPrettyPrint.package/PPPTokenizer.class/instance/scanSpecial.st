as yet unclassified
scanSpecial 

	| token |
	
	token := PPPToken new
		position: indexCount;
		content: currentCharacter;
		tokenType: #special;
		yourself.
	
	self step.
	
	^token