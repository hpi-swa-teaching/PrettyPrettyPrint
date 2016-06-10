as yet unclassified
scanSpecial 

	| token |
	
	token := PPPToken new.
	
	token content: currentCharacter.
	self step.
	^token
		tokenType: #special;
		yourself